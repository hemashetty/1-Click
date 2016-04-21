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
    public partial class Verification : System.Web.UI.Page
    {

        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_verification_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
            da = new SqlDataAdapter("select Verificationcode from verification_code where Jid ='"+Session["Jid"]+"' ", con);

            ds = new DataSet();
            da.Fill(ds, "tbres");
            string verifycode = ds.Tables[0].Rows[0][0].ToString();

            if(verifycode==txt_verification.Text)
            {
                da = new SqlDataAdapter("delete from verification_code where Jid ='" + Session["Jid"] + "'and Verificationcode='"+verifycode+"' ", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                 Response.Redirect("Account.aspx");
            }
            else
            {
                lbl_vericode.ForeColor = System.Drawing.Color.Red;
                lbl_vericode.Text = "Verification code is incorrect";
                lbl_vericode.Visible = true;
            }
        }
    }
}