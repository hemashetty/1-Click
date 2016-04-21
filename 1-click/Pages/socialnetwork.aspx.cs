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
    public partial class socialnetwork : System.Web.UI.Page
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



        protected void btnface_Click(object sender, EventArgs e)
        {



            if (txtfacemail.Text == "" && txtfacpswd.Text == "")
            {

                lbl_note_fb.Text = "Please enter details!";
                lbl_note_fb.Visible = true;

            }
            else
            {

                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.facebook.com/'", con);

                
                 DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.facebook.com/'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtfacemail.Text == unm && txtfacpswd.Text == pswd)
                {
                    lbl_note_fb.Text = "You already storred these details!";
                    lbl_note_fb.Visible = true;
                }
                else if (unm != null && pswd != null)
                {
                    lbl_note_fb.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_fb.Visible = true;
                }
            }
               
                else
                {
                    cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.facebook.com/','" + txtfacemail.Text + "','" + Encrypt(txtfacpswd.Text) + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txtfacemail.Visible = false;
                    txtfacpswd.Visible = false;
                    btnface.Visible = false;
                    lbl_note_fb.Text = "You have successfully added!";
                    lbl_note_fb.Visible = true;
                    btn_cancel_fb.Visible = false;
                }
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com");
        }

        protected void btntweet_Click(object sender, EventArgs e)
        {
            if (txtweetemail.Text == "" && txtweetpswd.Text == "")
            {
                lbl_note_tweet.Text = "Please enter details!";
                lbl_note_tweet.Visible = true;

            }
            else
            {
                
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://twitter.com/login'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://twitter.com/login'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string twit_unm = ds.Tables[0].Rows[0][0].ToString();
                string twit_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtweetemail.Text == twit_unm && txtweetpswd.Text == twit_pswd)
                {
                    lbl_note_tweet.Text = "You already storred these details!";
                    lbl_note_tweet.Visible = true;
                }
                else if (twit_unm != null && twit_pswd != null)
                {
                    lbl_note_tweet.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_tweet.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://twitter.com/login','" + txtweetemail.Text + "','" +Encrypt( txtweetpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtweetemail.Visible = false;
                txtweetpswd.Visible = false;
                btntweet.Visible = false;
                lbl_note_tweet.Text = "You have successfully added!";
                lbl_note_tweet.Visible = true;
                btn_cancel_tweet.Visible = false;
            }
            }
        }

        protected void imgtweet_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://twitter.com/login");
        }

        protected void btnlink_Click(object sender, EventArgs e)
        {
            if (txtlinemail.Text == "" && txtlinpswd.Text == "")
            {
                lbl_note_linked.Text = "Please enter details!";
                lbl_note_linked.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.linkedin.com/uas/login'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.linkedin.com/uas/login'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string linked_unm = ds.Tables[0].Rows[0][0].ToString();
                string linked_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtlinemail.Text == linked_unm && txtlinpswd.Text == linked_pswd)
                {
                    lbl_note_linked.Text = "You already storred these details!";
                    lbl_note_linked.Visible = true;
                }
                else if (linked_unm != null && linked_pswd != null)
                {
                    lbl_note_linked.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_linked.Visible = true;
                }
            }
            else
            {


                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.linkedin.com/uas/login','" + txtlinemail.Text + "','" +Encrypt( txtlinpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtlinemail.Visible = false;
                txtlinpswd.Visible = false;
                btnlink.Visible = false;
                lbl_note_linked.Text = "You have successfully added!";
                lbl_note_linked.Visible = true;
                btn_cancel__linked.Visible = false;
            }
            }
        }

        protected void imglink_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.linkedin.com/uas/login");
        }

        protected void btnpin_Click(object sender, EventArgs e)
        {
            if (txtpinemail.Text == "" && txtpinpswd.Text == "")
            {
                lbl_note_pinterest.Text = "Please enter details!";
                lbl_note_pinterest.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.pinterest.com/login/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.pinterest.com/login/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string pin_unm = ds.Tables[0].Rows[0][0].ToString();
                string pin_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtpinemail.Text == pin_unm && txtpinpswd.Text == pin_pswd)
                {
                    lbl_note_pinterest.Text = "You already storred these details!";
                    lbl_note_pinterest.Visible = true;
                }
                else if (pin_unm != null && pin_pswd != null)
                {
                    lbl_note_pinterest.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_pinterest.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.pinterest.com/login/','" + txtpinemail.Text + "','" +Encrypt( txtpinpswd.Text )+ "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtpinemail.Visible = false;
                txtpinpswd.Visible = false;
                btnpin.Visible = false;
                lbl_note_pinterest.Text = "You have successfully added!";
                lbl_note_pinterest.Visible = true;
                btn_cancel_pinterest.Visible = false;
            }
            }
        }

        protected void imgpint_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.pinterest.com/login/");
        }

        protected void btntublr_Click(object sender, EventArgs e)
        {
            if (txtumbemil.Text == "" && txtumbpswd.Text == "")
            {
                lbl_note_tumblr.Text = "Please enter details!";
                lbl_note_tumblr.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.tumblr.com/login'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.tumblr.com/login'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string tumbblr_unm = ds.Tables[0].Rows[0][0].ToString();
                string tumblr_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtumbemil.Text == tumbblr_unm && txtumbpswd.Text == tumblr_pswd)
                {
                    lbl_note_tumblr.Text = "You already storred these details!";
                    lbl_note_tumblr.Visible = true;
                }
                else if (tumbblr_unm != null && tumblr_pswd != null)
                {
                    lbl_note_tumblr.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_tumblr.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.tumblr.com/login','" + txtumbemil.Text + "','" +Encrypt( txtumbpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtumbemil.Visible = false;
                txtumbpswd.Visible = false;
                btntublr.Visible = false;
                lbl_note_tumblr.Text = "You have successfully added!";
                lbl_note_tumblr.Visible = true;
                btn_cancel_tumblr.Visible = false;
            }
            }
        }

        protected void imgtumblr_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.tumblr.com/login");
        }

        protected void btnflickr_Click(object sender, EventArgs e)
        {
            if (txtflicemail.Text == "" && txtflicpswd.Text == "")
            {
                lbl_note_flickr.Text = "Please enter details!";
                lbl_note_flickr.Visible = true;
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flickr.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flickr.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string flikr_unm = ds.Tables[0].Rows[0][0].ToString();
                string flikr_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtflicemail.Text == flikr_unm && txtflicpswd.Text == flikr_pswd)
                {
                    lbl_note_flickr.Text = "You already storred these details!";
                    lbl_note_flickr.Visible = true;
                }
                else if (flikr_unm != null && flikr_pswd != null)
                {
                    lbl_note_flickr.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_flickr.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.flickr.com/','" + txtflicemail.Text + "','" +Encrypt( txtflicpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtflicemail.Visible = false;
                txtflicpswd.Visible = false;
                btnflickr.Visible = false;
                lbl_note_flickr.Text = "You have successfully added!";
                lbl_note_flickr.Visible = true;
                btn_cancel_flikr.Visible = false;
            }
            }
        }

        protected void imgflickr_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.flickr.com/");
        }

        protected void btngplus_Click(object sender, EventArgs e)
        {
            if (txtgplsemail.Text == "" && txtgplspswd.Text == "")
            {
                lbl_note_gplus.Text = "Please enter details!";
                lbl_note_gplus.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://plus.google.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://plus.google.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string gplus_unm = ds.Tables[0].Rows[0][0].ToString();
                string gplus_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtgplsemail.Text == gplus_unm && txtgplspswd.Text == gplus_pswd)
                {
                    lbl_note_gplus.Text = "You already storred these details!";
                    lbl_note_gplus.Visible = true;
                }
                else if (gplus_unm != null && gplus_pswd != null)
                {
                    lbl_note_gplus.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_gplus.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://plus.google.com/','" + txtgplsemail.Text + "','" + Encrypt(txtgplspswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtgplsemail.Visible = false;
                txtgplspswd.Visible = false;
                btngplus.Visible = false;
                lbl_note_gplus.Text = "You have successfully added!";
                lbl_note_gplus.Visible = true;
                btn_cancel_gplus.Visible = false;
            }
            }
        }

        protected void imggplus_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://plus.google.com/");
        }

        protected void btn_add_fb_Click(object sender, EventArgs e)
        {
           
           
                txtfacemail.Visible = true;
                txtfacpswd.Visible = true;
                btnface.Visible = true;
                btn_cancel_fb.Visible = true;
            
        }

        protected void btn_twt_add_Click(object sender, EventArgs e)
        {
            txtweetemail.Visible = true;
            txtweetpswd.Visible = true;
            btntweet.Visible = true;
            btn_cancel_tweet.Visible = true;
        }

        protected void btn_add_linkedin_Click(object sender, EventArgs e)
        {
            txtlinemail.Visible = true;
            txtlinpswd.Visible = true;
            btnlink.Visible = true;
            btn_cancel__linked.Visible = true;
        }

        protected void btn_add_gplus_Click(object sender, EventArgs e)
        {
            txtgplsemail.Visible = true;
            txtgplspswd.Visible = true;
            btngplus.Visible = true;
            btn_cancel_gplus.Visible = true;
        }

        protected void btn_add_pinterest_Click(object sender, EventArgs e)
        {
            txtpinemail.Visible = true;
            txtpinpswd.Visible = true;
            btnpin.Visible = true;
            btn_cancel_pinterest.Visible = true;
        }

        protected void btn_add_tumblr_Click(object sender, EventArgs e)
        {
            txtumbemil.Visible = true;
            txtumbpswd.Visible = true;
            btntublr.Visible = true;
            btn_cancel_tumblr.Visible = true;
        }

        protected void btn_add_fliker_Click(object sender, EventArgs e)
        {
            txtflicemail.Visible = true;
            txtflicpswd.Visible = true;
            btnflickr.Visible = true;
            btn_cancel_flikr.Visible = true;
        }

        protected void btn_cancel_fb_Click(object sender, EventArgs e)
        {
           
            txtfacemail.Visible = false;
            txtfacpswd.Visible = false;
            btnface.Visible = false;
            btn_cancel_fb.Visible = false;
            lbl_note_fb.Visible = false;
        }

        protected void btn_cancel_tweet_Click(object sender, EventArgs e)
        {
            txtweetemail.Visible = false;
            txtweetpswd.Visible = false;
            btntweet.Visible = false;
            btn_cancel_tweet.Visible = false;
            lbl_note_tweet.Visible = false;
        }

        protected void btn_cancel__linked_Click(object sender, EventArgs e)
        {
            txtlinemail.Visible = false;
            txtlinpswd.Visible = false;
            btnlink.Visible = false;
            btn_cancel__linked.Visible = false;
            lbl_note_linked.Visible = false;
        }

        protected void btn_cancel_gplus_Click(object sender, EventArgs e)
        {
            txtgplsemail.Visible = false;
            txtgplspswd.Visible = false;
            btngplus.Visible = false;
            btn_cancel_gplus.Visible = false;
            lbl_note_gplus.Visible = false;
        }

        protected void btn_cancel_pinterest_Click(object sender, EventArgs e)
        {
            txtpinemail.Visible = false;
            txtpinpswd.Visible = false;
            btnpin.Visible = false;
            btn_cancel_pinterest.Visible = false;
            lbl_note_pinterest.Visible = false;
        }

        protected void btn_cancel_tumblr_Click(object sender, EventArgs e)
        {
            txtumbemil.Visible = false;
            txtumbpswd.Visible = false;
            btntublr.Visible = false;
            btn_cancel_tumblr.Visible = false;
            lbl_note_tumblr.Visible = false;
        }

        protected void btn_cancel_flikr_Click(object sender, EventArgs e)
        {
            txtflicemail.Visible = false;
            txtflicpswd.Visible = false;
            btnflickr.Visible = false;
            btn_cancel_flikr.Visible = false;
            lbl_note_flickr.Visible = false;
        }

       
    }
}