using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;
namespace _1_click.Pages
{
    public partial class social : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
            lbl_yh.Text = Session["Jid"].ToString();
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


        protected void btnyahoo_Click(object sender, EventArgs e)
        {
            if (txtyahemail.Text == "" && txtyahpswd.Text == "")
            {
                lbl_note_yahoo.Text = "Please enter details!";
                lbl_note_yahoo.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='https://login.yahoo.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='https://login.yahoo.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string yaho_unm = ds.Tables[0].Rows[0][0].ToString();
                string yaho_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtyahemail.Text == yaho_unm && txtyahpswd.Text == yaho_pswd)
                {
                    lbl_note_yahoo.Text = "You already storred these details!";
                    lbl_note_yahoo.Visible = true;
                }
                else if (yaho_unm != null && yaho_pswd != null)
                {
                    lbl_note_yahoo.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_yahoo.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + lbl_yh.Text + "','https://login.yahoo.com/','" + txtyahemail.Text + "','" + Encrypt(txtyahpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtyahemail.Visible = false;
                txtyahpswd.Visible = false;
                btnyahoo.Visible = false;
                lbl_note_yahoo.Text = "You have successfully added!";
                lbl_note_yahoo.Visible = true;
                btn_cancel_yhoo.Visible = false;
                
            }
            }

        }

        

        protected void imgyh_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://login.yahoo.com/config/mail?.intl=uk&.src=ym");
        }

        protected void btngmail_Click(object sender, EventArgs e)
        {
            if (txtgmail.Text == "" && txtgpswd.Text == "")
            {
                lbl_note_gmail.Text = "Please enter details!";
                lbl_note_gmail.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='http://www.gmail.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='http://www.gmail.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string gmail_unm = ds.Tables[0].Rows[0][0].ToString();
                string gmail_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtgmail.Text == gmail_unm && txtgpswd.Text == gmail_pswd)
                {
                    lbl_note_gmail.Text = "You already storred these details!";
                    lbl_note_gmail.Visible = true;
                }
                else if (gmail_unm != null && gmail_pswd != null)
                {
                    lbl_note_gmail.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_gmail.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + lbl_yh.Text + "','http://www.gmail.com/','" + txtgmail.Text + "','" +Encrypt( txtgpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtgpswd.Visible = false;
                txtgmail.Visible = false;
                btngmail.Visible = false;
                lbl_note_gmail.Text = "You have successfully added!";
                lbl_note_gmail.Visible = true;
                btn_cancel_gmail.Visible = false;
            }
            }

        }

        protected void imgmail_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.gmail.com/");
        }

        protected void btnout_Click(object sender, EventArgs e)
        {
            if (txtoutmail.Text == "" && txtoutpswd.Text == "")
            {
                lbl_note_outlook.Text = "Please enter details!";
                lbl_note_outlook.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='https://www.outlook.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='https://www.outlook.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string out_unm = ds.Tables[0].Rows[0][0].ToString();
                string out_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtoutmail.Text == out_unm && txtoutpswd.Text == out_pswd)
                {
                    lbl_note_outlook.Text = "You already storred these details!";
                    lbl_note_outlook.Visible = true;
                }
                else if (out_unm != null && out_pswd != null)
                {
                    lbl_note_outlook.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_outlook.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + lbl_yh.Text + "','https://www.outlook.com/','" + txtoutmail.Text + "','" +Encrypt( txtoutpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtoutmail.Visible = false;
                txtoutpswd.Visible = false;
                btnout.Visible = false;
                lbl_note_outlook.Text = "You have successfully added!";
                lbl_note_outlook.Visible = true;
                btn_cancel_outlook.Visible = false;
            }
            }
        }

        protected void imgout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.outlook.com/");
        }

        protected void btnredf_Click(object sender, EventArgs e)
        {
            if (txtredmail.Text == "" && txtredpswd.Text == "")
            {
                lbl_note_rediff.Text = "Please enter details!";
                lbl_note_rediff.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='https://mail.rediff.com/cgi-bin/login.cgi'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + lbl_yh.Text + "' and Url='https://mail.rediff.com/cgi-bin/login.cgi'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string red_unm = ds.Tables[0].Rows[0][0].ToString();
                string red_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtredmail.Text == red_unm && txtredpswd.Text == red_pswd)
                {
                    lbl_note_rediff.Text = "You already storred these details!";
                    lbl_note_rediff.Visible = true;
                }
                else if (red_unm != null && red_pswd != null)
                {
                    lbl_note_rediff.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_rediff.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + lbl_yh.Text + "','https://mail.rediff.com/cgi-bin/login.cgi','" + txtredmail.Text + "','" +Encrypt( txtredpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtredmail.Visible = false;
                txtredpswd.Visible = false;
                btnredf.Visible = false;
                lbl_note_rediff.Text = "You have successfully added!";
                lbl_note_rediff.Visible = true;
                btn_cancel_rediff.Visible = false;
            }
            }
        }

        protected void imgredf_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://mail.rediff.com/cgi-bin/login.cgi");
        }

        protected void btn_add_yahoo_Click(object sender, EventArgs e)
        {
            txtyahemail.Visible = true;
            txtyahpswd.Visible = true;
            btnyahoo.Visible = true;
            btn_cancel_yhoo.Visible = true;
        }

        protected void btn_cancel_yhoo_Click(object sender, EventArgs e)
        {
            txtyahemail.Visible = false;
            txtyahpswd.Visible = false;
            btnyahoo.Visible = false;
            btn_cancel_yhoo.Visible = false;
            lbl_note_yahoo.Visible = false;
        }

        protected void btn_add_gmail_Click(object sender, EventArgs e)
        {
            txtgmail.Visible = true;
            txtgpswd.Visible = true;
            btngmail.Visible = true;
            btn_cancel_gmail.Visible = true;
        }

        protected void btn_cancel_gmail_Click(object sender, EventArgs e)
        {
            txtgmail.Visible = false;
            txtgpswd.Visible = false;
            btngmail.Visible = false;
            btn_cancel_gmail.Visible = false;
            lbl_note_gmail.Visible = false;
        }

        protected void btn_add_outlook_Click(object sender, EventArgs e)
        {
            txtoutmail.Visible = true;
            txtoutpswd.Visible = true;
            btnout.Visible = true;
            btn_cancel_outlook.Visible = true;
        }

        protected void btn_add_redif_Click(object sender, EventArgs e)
        {
            txtredmail.Visible = true;
            txtredpswd.Visible = true;
            btnredf.Visible = true;
            btn_cancel_rediff.Visible = true;
        }

        protected void btn_cancel_rediff_Click(object sender, EventArgs e)
        {
            txtredmail.Visible = false;
            txtredpswd.Visible = false;
            btnredf.Visible = false;
            btn_cancel_rediff.Visible = false;
            lbl_note_rediff.Visible = false;
        }

        protected void btn_cancel_outlook_Click(object sender, EventArgs e)
        {
            lbl_note_outlook.Visible = false;
            txtoutmail.Visible = false;
            txtoutpswd.Visible = false;
            btnout.Visible = false;
            btn_cancel_outlook.Visible = false;
        }

        
    }
}