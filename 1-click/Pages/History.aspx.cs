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
    public partial class History : System.Web.UI.Page

    {
        SqlConnection con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["username"].ToString();
            Label2.Text = Session["Jid"].ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            
        }

        protected void btn_history_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from History_tb where Jid='" + Label2.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

       
    }
}