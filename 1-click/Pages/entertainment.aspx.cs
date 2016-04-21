using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;

namespace _1_click.Pages
{
    public partial class entertainment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
            Label1.Text = Session["Jid"].ToString();
            Label2.Text = Session["username"].ToString();
        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }


        protected void btngana_Click(object sender, EventArgs e)
        {
            if (txtganaemail.Text == "" && txtganapswd.Text == "")
            {
                lbl_not_ganna.Text = "Please enter details!";
                lbl_not_ganna.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://gaana.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://gaana.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string gana_unm = ds.Tables[0].Rows[0][0].ToString();
                string gana_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtganaemail.Text == gana_unm && txtganapswd.Text == gana_pswd)
                {
                    lbl_not_ganna.Text = "You already storred these details!";
                    lbl_not_ganna.Visible = true;
                }
                else if (gana_unm != null && gana_pswd != null)
                {
                    lbl_not_ganna.Text = "You cannot enter the detail of same more than once!";
                    lbl_not_ganna.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://gaana.com/','" + txtganaemail.Text + "','" +Encrypt(  txtganapswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtganaemail.Visible = false;
                txtganapswd.Visible = false;
                btngana.Visible = false;
                btn_cancel_ganna.Visible = false;
                lbl_not_ganna.Text = "You have successfully added!";
                lbl_not_ganna.Visible = true;
            }

            }
        }

        protected void imgana_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://gaana.com/");
        }

        protected void btnsaavan_Click(object sender, EventArgs e)
        {
            if (txtsavanemail.Text == "" && txtsavanpswd.Text == "")
            {
                lbl_note_saavan.Text = "Please enter details!";
                lbl_note_saavan.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.saavn.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.saavn.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string savan_unm = ds.Tables[0].Rows[0][0].ToString();
                string savan_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtsavanemail.Text == savan_unm && txtsavanpswd.Text == savan_pswd)
                {
                    lbl_note_saavan.Text = "You already storred these details!";
                    lbl_note_saavan.Visible = true;
                }
                else if (savan_unm != null && savan_pswd != null)
                {
                    lbl_note_saavan.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_saavan.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.saavn.com/','" + txtsavanemail.Text + "','" +Encrypt(  txtsavanpswd.Text )+ "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtsavanemail.Visible = false;
                txtsavanpswd.Visible = false;
                btnsaavan.Visible = false;
                btn_cancel_saavan.Visible = false;
                lbl_note_saavan.Text = "You have successfully added!";
                lbl_note_saavan.Visible = true;
            }
            }
        }

        protected void imgsaavan_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.saavn.com/");
        }

        protected void btnbiscoot_Click(object sender, EventArgs e)
        {
            if (txtbiscootemail.Text == "" && txtbiscootpswd.Text == "")
            {
                lbl_note_biscoot.Text = "Please enter details!";
                lbl_note_biscoot.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://bajao.biscoot.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://bajao.biscoot.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string biscot_unm = ds.Tables[0].Rows[0][0].ToString();
                string biscot_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtbiscootemail.Text == biscot_unm && txtbiscootpswd.Text == biscot_pswd)
                {
                    lbl_note_biscoot.Text = "You already storred these details!";
                    lbl_note_biscoot.Visible = true;
                }
                else if (biscot_unm != null && biscot_pswd != null)
                {
                    lbl_note_biscoot.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_biscoot.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://bajao.biscoot.com/','" + txtbiscootemail.Text + "','" + Encrypt( txtbiscootpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtbiscootemail.Visible = false;
                txtbiscootpswd.Visible = false;
                btnsaavan.Visible = false;
                lbl_note_biscoot.Text = "You have successfully added!";
                lbl_note_biscoot.Visible = true;
                btn_cancel_biscoot.Visible = false;
                btnbiscoot.Visible = false;
            }
            }
        }

        protected void imgbiscoot_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://bajao.biscoot.com/");
        }

        protected void btnyoutube_Click(object sender, EventArgs e)
        {
            if (txtutubeemail.Text == "" && txtutubepswd.Text == "")
            {
                lbl_note_youtube.Text = "Please enter details!";
                lbl_note_youtube.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.youtube.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.youtube.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string utube_unm = ds.Tables[0].Rows[0][0].ToString();
                string utube_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtutubeemail.Text == utube_unm && txtutubepswd.Text == utube_pswd)
                {
                    lbl_note_youtube.Text = "You already storred these details!";
                    lbl_note_youtube.Visible = true;
                }
                else if (utube_unm != null && utube_pswd != null)
                {
                    lbl_note_youtube.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_youtube.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.youtube.com/','" + txtutubeemail.Text + "','" +Encrypt(  txtutubepswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtutubeemail.Visible = false;
                txtutubepswd.Visible = false;
                btnyoutube.Visible = false;
                btn_cancel_youtube.Visible = false;
                lbl_note_youtube.Text = "You have successfully added!";
                lbl_note_youtube.Visible = false;
            }
            }
        }

        protected void imgyoutube_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.youtube.com/");
        }

        protected void btngna_Click(object sender, EventArgs e)
        {
            txtganaemail.Visible = true;
            txtganapswd.Visible = true;
            btngana.Visible = true;
            btngana.Visible = true;
            btn_cancel_ganna.Visible = true;

        }

       

        protected void btnadsavan_Click(object sender, EventArgs e)
        {
            txtsavanemail.Visible = true;
            txtsavanpswd.Visible = true;
            btnsaavan.Visible = true;
            btn_cancel_saavan.Visible = true;
        }

        

       

      

        protected void btnaddbiscoot_Click(object sender, EventArgs e)
        {
            txtbiscootemail.Visible = true;
            txtbiscootpswd.Visible = true;
            btnbiscoot.Visible = true;
            btn_cancel_biscoot.Visible = true;
        }

        protected void btn_cancel_ganna_Click(object sender, EventArgs e)
        {
            txtganaemail.Visible = false;
            txtganapswd.Visible = false;
            btngana.Visible = false;
            btn_cancel_ganna.Visible = false;
        }

        protected void btn_cancel_saavan_Click(object sender, EventArgs e)
        {
            txtsavanemail.Visible = false;
            txtsavanpswd.Visible = false;
            btnsaavan.Visible = false;
            btn_cancel_saavan.Visible = false;
        }

        protected void btn_cancel_biscoot_Click(object sender, EventArgs e)
        {
            txtbiscootemail.Visible = false;
            txtbiscootpswd.Visible = false;
            btnbiscoot.Visible = false;
            btn_cancel_biscoot.Visible = false;

        }

        protected void btn_add_youtube_Click(object sender, EventArgs e)
        {
            txtutubeemail.Visible = true;
            txtutubepswd.Visible = true;
            btnyoutube.Visible = true;
            btn_cancel_youtube.Visible = true;
        }

        protected void btn_cancel_youtube_Click(object sender, EventArgs e)
        {
            txtutubeemail.Visible = false;
            txtutubepswd.Visible = false;
            btnyoutube.Visible = false;
            btn_cancel_youtube.Visible = false;
        }

       

       
    }
}