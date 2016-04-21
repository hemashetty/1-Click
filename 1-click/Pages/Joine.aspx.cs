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
    public partial class Joine : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
       
     
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();

        }

        protected void btn_join_Click(object sender, EventArgs e)
        {
           


            if (Page.IsValid)
            {


               

               
                

                    cmd = new SqlCommand("insert into Joine_tb(Email,Username,Password,Phone_no)values('" + txt_Email.Text + "','" + txt_Uname.Text + "','" + txt_Password.Text + "','" + txt_mobno.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //Session["username"] = txt_Uname.Text;
                    //Response.Redirect("Account.aspx");
                    Response.Redirect("login.aspx");

                
            }

            else
            {
                Response.Redirect("Joine.aspx");

            }
        }
    }
}