using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace _1_click.Pages
{
    public partial class Forgot_pswd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_frgt_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["1-click"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("resetPasswordrequest", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter paramEmail = new SqlParameter("@email", txt_frgt_pass.Text);
                cmd.Parameters.Add(paramEmail);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {

                    if (Convert.ToBoolean(rdr["ReturnCode"]))
                    {
                        SendPasswordResetEmail(rdr["Username"].ToString(), txt_frgt_pass.Text, rdr["UniqueId"].ToString());
                        lbl_emsg.Text = "An email with instructions to reset your password is sent to your registered email";
                        lbl_emsg.Visible = true;


                    }
                    else
                    {
                        lbl_emsg.ForeColor = System.Drawing.Color.Red;
                        lbl_emsg.Text = "Email is not found!";
                        lbl_emsg.Visible = true;

                    }
                }
            }
        }
            
            private void SendPasswordResetEmail(string UserName, string ToEmail, string UniqueId)
        {
            // MailMessage class is present is System.Net.Mail namespace
            MailMessage mailMessage = new MailMessage("hlax.tech@gmail.com", ToEmail);

           //MailMessage mailMessage = new MailMessage("shettysatya12@gmail.com", ToEmail);

            // StringBuilder class is present in System.Text namespace
            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
            sbEmailBody.Append("Please click on the following link to reset your password");
            //sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost/online payment system/pages/Reset_Password.aspx?uid=" + UniqueId);
            sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost:51201/Pages/Resetpsw.aspx?uid=" + UniqueId);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b>1-CLICK Community</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                //UserName = "hemapadisetty@gmail.com",
                //Password = "#em@devi13121992"

                UserName = "hlax.tech@gmail.com",
                Password = "hemadevi"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }
    }
}



        
    
      
  


