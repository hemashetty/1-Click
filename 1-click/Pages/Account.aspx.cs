using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace _1_click.Pages
{
    public partial class Account : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str;


        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["username"].ToString();

            lblusername.Text = Label1.Text;

           con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();

            //SqlCommand cmd = new SqlCommand("select Email from Joine_tb where Username='" + lblusername.Text + "'  ", con);
            //cmd.ExecuteNonQuery();

           da = new SqlDataAdapter("select Email from Joine_tb where Username='"+lblusername.Text+"'  ", con);
            ds = new DataSet();
            da.Fill(ds, "joins");
           lblemail.Text= ds.Tables[0].Rows[0][0].ToString();

            con.Close();
        }

        protected void btnemailedit_Click(object sender, EventArgs e)
        {
            txtchangemail.Visible = true;

            btnok.Visible = true;
            btn_cancel.Visible = true;
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            con.Open();
            da = new SqlDataAdapter("update Joine_tb set Email ='" + txtchangemail.Text + "'where Username='" + lblusername.Text + "'  ", con);
            da.Fill(ds, "join");
            
            txtchangemail.Visible = false;
            btnok.Visible = false;
            btn_cancel.Visible = false;
            lblemailchanged.Text = "You have successfully changed Email";
            lblemailchanged.Visible = true;
            
           
            da = new SqlDataAdapter("select Email from Joine_tb where Username='" + lblusername.Text + "'  ", con);
            ds = new DataSet();
            da.Fill(ds, "join");
            lblemail.Text = ds.Tables[0].Rows[0][0].ToString();

            con.Close();

        }

        protected void btnchangepswd_Click(object sender, EventArgs e)
        {
            txtcurrentpswd.Visible = true;
            txtchngpswd.Visible = true;
            txtcnfrmpswd.Visible = true;

            btncngpswd.Visible = true;
            btn_psw_cancel.Visible = true;
            
        }

        protected void btncngpswd_Click(object sender, EventArgs e)
        {
            con.Open();
            da = new SqlDataAdapter("update Joine_tb set Password ='" + txtchngpswd.Text + "'where  Username='" + lblusername.Text + "'  ", con);
            da.Fill(ds, "jon");
            con.Close();
            txtcurrentpswd.Visible = false;
            txtchngpswd.Visible = false;
            txtcnfrmpswd.Visible = false;
            btncngpswd.Visible = false;
            lblpswdchng.Text = "You have successfully changed the password";
            lblpswdchng.Visible = true;
            btn_psw_cancel.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            da = new SqlDataAdapter("delete from click_tb where Jid='" + Session["Jid"] + "'  ", con);
            da.Fill(ds, "jon");
            da = new SqlDataAdapter("delete from History_tb where Jid='" + Session["Jid"] + "'  ", con);
            da.Fill(ds, "jon");
            da = new SqlDataAdapter("delete from verification_code where Jid='" + Session["Jid"] + "'  ", con);
            da.Fill(ds, "jone");
            da = new SqlDataAdapter("delete from Joine_tb where Jid='" + Session["Jid"] + "'  ", con);
            da.Fill(ds, "jone");
            

          
           
            con.Close();
            Response.Redirect("Closed account.aspx");
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            txtchangemail.Visible = false;
            btn_cancel.Visible = false;
            btnok.Visible = false;
            

        }

        protected void btn_psw_cancel_Click(object sender, EventArgs e)
        {
            txtcurrentpswd.Visible = false;
            txtchngpswd.Visible = false;
            txtcnfrmpswd.Visible = false;
            btncngpswd.Visible = false;
            btn_psw_cancel.Visible = false;
        }

      

       

        
    }
}