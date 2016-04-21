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
    public partial class Admin_login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();

           
        }

        protected void btn_admin_login_Click(object sender, EventArgs e)
        {


            string Sql = " Select * from Admin where Username = '" + txtusernm.Text + "' and Password = '" + txtpswd.Text + "' ";
            da = new SqlDataAdapter(Sql, con);
            
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                da = new SqlDataAdapter("select Id from Admin where  Username = '" + txtusernm.Text + "' and Password = '" + txtpswd.Text + "' ", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                con.Close();
                Response.Redirect("Admin_detail.aspx");
            }
            else
            {
                lbl_notice.Visible = true;
                lbl_notice.Text = "You have enterred wrong password or username";
            }
            
        }
    }
}