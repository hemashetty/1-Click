using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net;
using System.IO;
namespace _1_click.Pages
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from Joine_tb where Username=@username and Password=@password",con);
            cmd.Parameters.AddWithValue("@username", txt_uname.Text);
            cmd.Parameters.AddWithValue("@password",txt_pass.Text);
           
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
               // Response.Write("existe");

                Session["username"] = txt_uname.Text;

                da = new SqlDataAdapter("select Jid from Joine_tb where Username ='"+txt_uname.Text+"' and Password='"+txt_pass.Text+"' ", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                Session["Jid"] = ds.Tables[0].Rows[0][0].ToString();


                

              
           // Response.Redirect("http://sms.bizzarch.com/api/sendhttp.php?authkey=2526A3RtzY26Kg541918be&mobiles=8866936469&message=verification%20code&sender=GLOBAL&route=1");
                SendSMSE();
                con.Close();
              // Response.Redirect("Account.aspx");
               Response.Redirect("Verification.aspx");

            }
            else
            {
                //Response.Write("Password or Username is wrong");
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Password or Username is wrong";
                Label1.Visible = true;
            }
           
        }
        private void SendSMSE()
        {


            //Generates random number of 6-digits
            Random r = new Random();
            var x = r.Next(0, 1000000);
            string s = x.ToString("000000");
            //  Response.Write(x);
            Response.Write(s);
            da = new SqlDataAdapter("insert into Verification_code(Jid,Verificationcode)values('"+Session["Jid"]+"','"+s+"')", con);

            ds = new DataSet();
            da.Fill(ds, "tbres");

            da = new SqlDataAdapter("select Phone_no from Joine_tb where Jid='" + Session["Jid"] + "' ", con);

            ds = new DataSet();
            da.Fill(ds, "tbres");

            string mob_no = ds.Tables[0].Rows[0][0].ToString();

            //Your authentication key
            string authKey = "2526A3RtzY26Kg541918be";
            //Multiple mobiles numbers seperated by comma
            string mobileNumber = mob_no;
            //Sender ID,While using route4 sender id should be 6 characters long.
            string senderId = "GLOBAL";
            //Your message to send, Add URL endcoding here.
            string message = HttpUtility.UrlEncode("Your 1-Click verification code is"+s);

            //Prepare you post parameters
            StringBuilder sbPostData = new StringBuilder();
            sbPostData.AppendFormat("authkey={0}", authKey);
            sbPostData.AppendFormat("&mobiles={0}", mobileNumber);
           // sbPostData.AppendFormat("&mobiles={0}", 8866936469);
            sbPostData.AppendFormat("&message={0}", message);
            sbPostData.AppendFormat("&sender={0}", senderId);
            sbPostData.AppendFormat("&route={0}", "default");

            try
            {
                //Call Send SMS API
                string sendSMSUri = "http://sms.bizzarch.com/sendhttp.php";
                //Create HTTPWebrequest
                HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
                //Prepare and Add URL Encoded data
                UTF8Encoding encoding = new UTF8Encoding();
                byte[] data = encoding.GetBytes(sbPostData.ToString());
                //Specify post method
                httpWReq.Method = "POST";
                httpWReq.ContentType = "application/x-www-form-urlencoded";
                httpWReq.ContentLength = data.Length;
                using (Stream stream = httpWReq.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
                //Get the response
                HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                string responseString = reader.ReadToEnd();

                //Close the response
                reader.Close();
                response.Close();
            }
            catch (SystemException ex)
            {
                //MessageBox.Show(ex.Message.ToString(), MessageType.Error);
            }
        }
    }
}