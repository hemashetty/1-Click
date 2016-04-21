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
    public partial class Resetpsw : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
            lbljid.Text =  Request.QueryString["uid"];
            cmd = new SqlCommand("select Jid from Forgot_password_tb where Uid='" + lbljid.Text + "' ", con);
            Label1.Text = cmd.ExecuteScalar().ToString();

        }

        protected void btnpsw_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Update Joine_tb set Password='" + txtpswd.Text + "' where Jid='" + Label1.Text + "'", con);

            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Delete from Forgot_password_tb where Jid='" + Label1.Text + "'", con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Password changed Succeful";
            Response.Redirect("login.aspx");

        }
    }
}