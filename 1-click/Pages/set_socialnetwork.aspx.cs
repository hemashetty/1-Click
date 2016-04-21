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
    public partial class set_socialnetwork : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
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


        protected void btn_updt_fb_Click(object sender, EventArgs e)
        {
            txt_updt_fbemail.Visible = true;
            txt_updt_fbpswd.Visible = true;
            btn_updt_fbok.Visible = true;
        }

        protected void btn_updt_fbok_Click(object sender, EventArgs e)
        {
            if (txt_updt_fbemail.Text == "" && txt_updt_fbpswd.Text == "")
            {
                lbl_updt_fb.Visible = true;
                lbl_updt_fb.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.facebook.com/'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                 if (dt.Rows.Count > 0)
                 {
                     SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_fbemail.Text + "',password='" +Encrypt( txt_updt_fbpswd.Text) + "' where Url='https://www.facebook.com/' and Jid='" + Label1.Text + "'", con);
                     cmd.ExecuteNonQuery();
                     con.Close();
                     txt_updt_fbemail.Visible = false;
                     txt_updt_fbpswd.Visible = false;
                     btn_updt_fbok.Visible = false;
                     lbl_updt_fb.Visible = true;
                     lbl_updt_fb.Text = "You have successfully updated Username/Email and Password of Facebook.";
                 }
                else
                 {
                     lbl_updt_fb.Visible = true;
                     lbl_updt_fb.Text = "There is no data to update!";
                 }
            }
        }

        protected void btn_updt_twit_Click(object sender, EventArgs e)
        {
            txt_updt_twitemail.Visible = true;
            txt_updt_twtpswd.Visible = true;
            btn_twitok.Visible = true;

        }

        protected void btn_twitok_Click(object sender, EventArgs e)
        {
            if (txt_updt_twitemail.Text == "" && txt_updt_twtpswd.Text == "")
            {
                lbl_updt_twit.Visible = true;
                lbl_updt_twit.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://twitter.com/login'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_twitemail.Text + "',password='" + Encrypt(txt_updt_twtpswd.Text )+ "' where Url='https://twitter.com/login' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_twitemail.Visible = false;
                txt_updt_twtpswd.Visible = false;
                btn_twitok.Visible = false;
                lbl_updt_twit.Visible = true;
                lbl_updt_twit.Text = "You have successfully updated Username/Email and Password of Twitter.";
            }
            else
            {
                lbl_updt_twit.Visible = true;
                lbl_updt_twit.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_link_Click(object sender, EventArgs e)
        {
            txt_updt_linkemail.Visible = true;
            txt_updt_linkpswd.Visible = true;
            btn_updt_linkOk.Visible = true;

        }

        protected void btn_updt_linkOk_Click(object sender, EventArgs e)
        {
            if (txt_updt_linkemail.Text == "" && txt_updt_linkpswd.Text == "")
            {
                lbl_updt_link.Visible = true;
                lbl_updt_link.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.linkedin.com/uas/login'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_linkemail.Text + "',password='" + Encrypt(txt_updt_linkpswd.Text) + "' where Url='https://www.linkedin.com/uas/login' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_linkemail.Visible = false;
                    txt_updt_linkpswd.Visible = false;
                    btn_updt_linkOk.Visible = false;
                    lbl_updt_link.Visible = true;
                    lbl_updt_link.Text = "You have successfully updated Username/Email and Password of LinkedIn.";
                }
                else
                {
                    lbl_updt_link.Visible = true;
                    lbl_updt_link.Text = "There is no data to update!";
                }

            }
        }

        protected void btn_updt_gplus_Click(object sender, EventArgs e)
        {
            txt_updt_gplusemail.Visible = true;
            txt_updt_gpluspswd.Visible = true;
            btn_updt_gok.Visible = true;
        }

        protected void btn_updt_gok_Click(object sender, EventArgs e)
        {
            if (txt_updt_gplusemail.Text == "" && txt_updt_gpluspswd.Text == "")
            {
                lbl_updt_gplus.Visible = true;
                lbl_updt_gplus.Text = "You need to enter some data!";
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://plus.google.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_gplusemail.Text + "',password='" + Encrypt(txt_updt_gpluspswd.Text) + "' where Url='https://plus.google.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_gplusemail.Visible = false;
                txt_updt_gpluspswd.Visible = false;
                btn_updt_gok.Visible = false;
                lbl_updt_gplus.Visible = true;
                lbl_updt_gplus.Text = "You have successfully updated Username/Email and Password of Google Plus.";
            }
             else
            {
                lbl_updt_gplus.Visible = true;
                lbl_updt_gplus.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_pinterest_Click(object sender, EventArgs e)
        {
            txt_updt_pinemail.Visible = true;
            txt_updt_pinpswd.Visible = true;
            btn_updt_pint.Visible = true;

        }

        protected void btn_updt_pint_Click(object sender, EventArgs e)
        {
            if (txt_updt_pinemail.Text == "" && txt_updt_pinpswd.Text == "")
            {
                lbl_updt_pint.Visible = true;
                lbl_updt_pint.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.pinterest.com/login/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_pinemail.Text + "',password='" + Encrypt(txt_updt_pinpswd.Text) + "' where Url='https://www.pinterest.com/login/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_pinemail.Visible = false;
                txt_updt_pinpswd.Visible = false;
                btn_updt_pint.Visible = false;
                lbl_updt_pint.Visible = true;
                lbl_updt_pint.Text = "You have successfully updated Username/Email and Password of Pinterest.";
            }
            else
            {
                lbl_updt_pint.Visible = true;
                lbl_updt_pint.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_tumblr_Click(object sender, EventArgs e)
        {
            txt_updt_tumblremail.Visible = true;
            txt_updt_tumblrpswd.Visible = true;
            btn_updt_tumblrok.Visible = true;

        }

        protected void btn_updt_tumblrok_Click(object sender, EventArgs e)
        {
            if (txt_updt_tumblremail.Text == "" && txt_updt_tumblrpswd.Text == "")
            {
                lbl_updt_tumblr.Visible = true;
                lbl_updt_tumblr.Text = "You need to enter some data!";
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.tumblr.com/login'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_tumblremail.Text + "',password='" + Encrypt(txt_updt_tumblrpswd.Text) + "' where Url='https://www.tumblr.com/login' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_tumblremail.Visible = false;
                txt_updt_tumblrpswd.Visible = false;
                btn_updt_tumblrok.Visible = false;
                lbl_updt_tumblr.Visible = true;
                lbl_updt_tumblr.Text = "You have successfully updated Username/Email and Password of Tumbler.";
            }
             else
            {
                lbl_updt_tumblr.Visible = true;
                lbl_updt_tumblr.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_fliker_Click(object sender, EventArgs e)
        {
            txt_updt_flikremail.Visible = true;
            txt_updt_flikrpswd.Visible = true;
            btn_updt_flikrOK.Visible = true;
        }

        protected void btn_updt_flikrOK_Click(object sender, EventArgs e)
        {
            if (txt_updt_flikremail.Text == "" && txt_updt_flikrpswd.Text == "")
            {
                lbl_updt_flikr.Visible = true;
                lbl_updt_flikr.Text = "You need to enter some data!";
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flickr.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_flikremail.Text + "',password='" + Encrypt(txt_updt_flikrpswd.Text )+ "' where Url='https://www.flickr.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

                txt_updt_flikremail.Visible = false;
                txt_updt_flikrpswd.Visible = false;
                btn_updt_flikrOK.Visible = false;
                lbl_updt_flikr.Visible = true;
                lbl_updt_flikr.Text = "You have successfully updated Username/Email and Password of Fliker.";
            }
             else
            {
                lbl_updt_flikr.Visible = true;
                lbl_updt_flikr.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_cls_fb_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.facebook.com/'", con);

                
                 DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.facebook.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_fb.Visible = true;
                lbl_updt_fb.Text = "You have successfully delete Username/Email and Password of Facebook.";
            }
            else
            {
                lbl_updt_fb.Visible = true;
                lbl_updt_fb.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_twit_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://twitter.com/login'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://twitter.com/login' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_twit.Visible = true;
                lbl_updt_twit.Text = "You have successfully delete Username/Email and Password of Twitter.";
            }
            else
            {
                lbl_updt_twit.Visible = true;
                lbl_updt_twit.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_link_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.linkedin.com/uas/login'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.linkedin.com/uas/login' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_link.Visible = true;
                lbl_updt_link.Text = "You have successfully delete Username/Email and Password of LinkedIn.";
            }
            else
            {
                lbl_updt_link.Visible = true;
                lbl_updt_link.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_gpls_Click(object sender, EventArgs e)
        {
             da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://plus.google.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
            SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://plus.google.com/' and Jid='" + Label1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_updt_gplus.Visible = true;
            lbl_updt_gplus.Text = "You have successfully delete Username/Email and Password of Google Plus.";
            }
            else
            {
                lbl_updt_gplus.Visible = true;
            lbl_updt_gplus.Text ="There is no data to update!";
            }
        }

        protected void btn_cls_pin_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.pinterest.com/login/'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.pinterest.com/login/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_pint.Visible = true;
                lbl_updt_pint.Text = "You have successfully delete Username/Email and Password of Pinterest.";
            }
            else
            {
                lbl_updt_pint.Visible = true;
                lbl_updt_pint.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_tumblr_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.tumblr.com/login'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.tumblr.com/login' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_tumblr.Visible = true;
                lbl_updt_tumblr.Text = "You have successfully delete Username/Email and Password of Tumbler.";
            }
            else
            {
                lbl_updt_tumblr.Visible = true;
                lbl_updt_tumblr.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_flikr_Click(object sender, EventArgs e)
        {  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flickr.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.flickr.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_flikr.Visible = true;
                lbl_updt_flikr.Text = "You have successfully delete Username/Email and Password of Fliker.";
            }
            else
            {
                lbl_updt_flikr.Visible = true;
                lbl_updt_flikr.Text = "There is no data to update!";
            }
        }
    }
}