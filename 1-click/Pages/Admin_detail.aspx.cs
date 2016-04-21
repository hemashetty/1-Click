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
    public partial class Admin_detail : System.Web.UI.Page
    {

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();

        }

        protected void btn_count_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd = new SqlCommand ("SELECT COUNT(*) FROM Admin",con);
            //txt_count.Text = cmd;
            //cmd.ExecuteNonQuery();

            da = new SqlDataAdapter("SELECT COUNT(*) FROM Admin", con);

            ds = new DataSet();
            da.Fill(ds, "tbres");
            string no =  ds.Tables[0].Rows[0][0].ToString();

            int num;
            num = Convert.ToInt32(no) + 1;
            txt_count.Text =Convert.ToString( num);
            con.Close();


        }
    }
}