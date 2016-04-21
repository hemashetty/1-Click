using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.Text;
using System.Security.Cryptography;
namespace _1_click.Pages
{
    public partial class set_entertainment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
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

        protected void updt_ganna_Click(object sender, EventArgs e)
        {
            txtupd_ganna_usrnm.Visible = true;
            txtupd_gana_pswd.Visible = true;
            btnupd_gana_ok.Visible = true;
           
        }

        protected void btnupd_gana_ok_Click(object sender, EventArgs e)
        {
            if (txtupd_ganna_usrnm.Text == "" && txtupd_gana_pswd.Text == "")
            {
                lblupd_gana.Visible = true;
                lblupd_gana.Text = "You need to enter some data!";
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://gaana.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txtupd_ganna_usrnm.Text + "',password='" + Encrypt( txtupd_gana_pswd.Text) + "' where Url='http://gaana.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtupd_ganna_usrnm.Visible = false;
                txtupd_gana_pswd.Visible = false;
                btnupd_gana_ok.Visible = false;
                lblupd_gana.Visible = true;
                lblupd_gana.Text = "You have successfully updated Username/Email and Password of Ganna.";
            }
                else
            {
                lblupd_gana.Visible = true;
                lblupd_gana.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_savan_Click(object sender, EventArgs e)
        {
            txt_updt_savnpswd.Visible = true;
            txt_updt_svnemail.Visible = true;
            btn_updt_svnok.Visible = true;

        }

        protected void btn_updt_svnok_Click(object sender, EventArgs e)
        {
            if (txt_updt_svnemail.Text == "" && txt_updt_savnpswd.Text == "")
            {
                lbl_updt_savan.Visible = true;
                lbl_updt_savan.Text = "You need to enter some data!";
            }
            else
            {

                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.saavn.com/'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_svnemail.Text + "',password='" + Encrypt( txt_updt_savnpswd.Text) + "' where Url='http://www.saavn.com/' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_savnpswd.Visible = false;
                    txt_updt_svnemail.Visible = false;
                    btn_updt_svnok.Visible = false;
                    lbl_updt_savan.Visible = true;
                    lbl_updt_savan.Text = "You have successfully updated Username/Email and Password of Savan";
                }
                else
                {
                    lbl_updt_savan.Visible = true;
                    lbl_updt_savan.Text = "There is no data to update!";
                }
            }
        }

        protected void btn_updt_biscoot_Click(object sender, EventArgs e)
        {
            txt_updt_bisctemail.Visible = true;
            txt_updt_bisctpswd.Visible = true;
            btn_updt_bisctok.Visible = true;
        }

        protected void btn_updt_bisctok_Click(object sender, EventArgs e)
        {
            if (txt_updt_bisctemail.Text == "" && txt_updt_bisctpswd.Text == "")
            {
                lbl_bisct.Visible = true;
                lbl_bisct.Text = "You need to enter some data!";
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://bajao.biscoot.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_bisctemail.Text + "',password='" +Encrypt(  txt_updt_bisctpswd.Text) + "' where Url='http://bajao.biscoot.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_bisctemail.Visible = false;
                txt_updt_bisctpswd.Visible = false;
                btn_updt_bisctok.Visible = false;
                lbl_bisct.Visible = true;
                lbl_bisct.Text = "You have successfully updated Username/Email and Password of Biscoot";
            }
                else
            {
                lbl_bisct.Visible = true;
                lbl_bisct.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_youtube_Click(object sender, EventArgs e)
        {
            txt_updt_youtubeemil.Visible = true;
            txt_updt_youtubepswd.Visible = true;
            btn_updt_youtubeOK.Visible = true;

        }

        protected void btn_updt_youtubeOK_Click(object sender, EventArgs e)
        {
            if (txt_updt_youtubeemil.Text == "" && txt_updt_youtubepswd.Text == "")
            {
                lbl_updt_youtube.Visible = true;
                lbl_updt_youtube.Text = "You need to enter some data!";
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.youtube.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_youtubeemil.Text + "',password='" + Encrypt( txt_updt_youtubepswd.Text) + "' where Url='http://www.youtube.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_youtubeemil.Visible = false;
                txt_updt_youtubepswd.Visible = false;
                btn_updt_youtubeOK.Visible = false;
                lbl_updt_youtube.Visible = true;
                lbl_updt_youtube.Text = "You have successfully updated Username/Email and Password of Youtube";
            }
                else
            {
                lbl_updt_youtube.Visible = true;
                lbl_updt_youtube.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_close_gana_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://gaana.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://gaana.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lblupd_gana.Visible = true;
                lblupd_gana.Text = "You have successfully delete Username/Email and Password of Ganna.";
            }
            else
            {
                lblupd_gana.Visible = true;
                lblupd_gana.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_savan_Click(object sender, EventArgs e)
        {  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.saavn.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.saavn.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_savan.Visible = true;
                lbl_updt_savan.Text = "You have successfully delete Username/Email and Password of Savan";
            }
            else
            {
                lbl_updt_savan.Visible = true;
                lbl_updt_savan.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_biscoot_Click(object sender, EventArgs e)
        {   da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://bajao.biscoot.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://bajao.biscoot.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_bisct.Visible = true;
                lbl_bisct.Text = "You have successfully delete Username/Email and Password of Biscoot";
            }
            else
            {
                lbl_bisct.Visible = true;
                lbl_bisct.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_youtube_Click(object sender, EventArgs e)
        {  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.youtube.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.youtube.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_youtube.Visible = true;
                lbl_updt_youtube.Text = "You have successfully delete Username/Email and Password of Youtube";
            }
            else
            {
                lbl_updt_youtube.Visible = true;
                lbl_updt_youtube.Text = "There is no data to update!";
            }
        }

        
    }
}