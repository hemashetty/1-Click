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
    public partial class Admin_setting : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str;
        DataSet ds;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["id"].ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
            da = new SqlDataAdapter("select Username from Admin where Id='"+Label1.Text+"'  ", con);
            ds = new DataSet();
            da.Fill(ds, "joins");
            lbl_usernm.Text = ds.Tables[0].Rows[0][0].ToString();

            con.Close();
        }

        protected void updt_usenm_Click(object sender, EventArgs e)
        {
            con.Open();
            da = new SqlDataAdapter("update Admin set Username ='" + txt_chng_usenm.Text + "' where Id='" + Session["id"] + "'  ", con);
            da.Fill(ds, "join");
            da = new SqlDataAdapter("select Username from Admin where Id='"+Session["id"]+"'  ", con);
            ds = new DataSet();
            da.Fill(ds, "joins");
            lbl_usernm.Text = ds.Tables[0].Rows[0][0].ToString();
            con.Close();
            lbl_chnum_note.Visible = true;
            lbl_chnum_note.Text = "You have successfully changed password!";
            txt_chng_usenm.Visible = false;
            lblusernm.Visible = false;
            updt_usenm.Visible = false;
        }

        protected void btn_updt_pswd_Click(object sender, EventArgs e)
        {
            con.Open();
            da = new SqlDataAdapter("update Admin set Password ='" + txt_new_pswd.Text + "' where Id='"+Session["id"]+"' ", con);
            da.Fill(ds, "join");
            con.Close();
            lbl_chnpswd_note.Visible = true;
            lbl_chnpswd_note.Text = "You have successfully changed password!";
            txt_cnfrm_pswd.Visible = false;
            txt_crnt_pswd.Visible = false;
            txt_new_pswd.Visible = false;
            lblcrtpswd.Visible = false;
            lblnwpswd.Visible = false;
            lblcfmpswd.Visible = false;
            btn_updt_pswd.Visible = false;
        }
    }
}