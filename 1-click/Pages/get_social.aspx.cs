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
    public partial class get_social : System.Web.UI.Page
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


        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        protected void btn_shw_yahoo_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://login.yahoo.com/'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://login.yahoo.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Yahoo','https://login.yahoo.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_email.Visible = false;
                
            }
            else
            {
                lbl_note_email.Text = "This does not contain details!";
                lbl_note_email.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_note_nm.Text = "Yahoo";
            lbl_note_nm.Visible = true;
        }

        protected void btn_shw_gmail_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.gmail.com/'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.gmail.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text =Decrypt( pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Gmail','http://www.gmail.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_email.Visible = false;
            }
            else
            {
                lbl_note_email.Text = "This does not contain details!";
                lbl_note_email.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_note_nm.Text = "Gmail";
            lbl_note_nm.Visible = true;
        }

        protected void btn_shw_outlook_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.outlook.com/'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.outlook.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text =Decrypt( pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Outlook','https://www.outlook.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_email.Visible = false;
            }
            else
            {
                lbl_note_email.Text = "This does not contain details!";
                lbl_note_email.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_note_nm.Text = "Outlook";
            lbl_note_nm.Visible = true;
        }

        protected void btn_shw_rediff_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://mail.rediff.com/cgi-bin/login.cgi'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://mail.rediff.com/cgi-bin/login.cgi'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Rediff','https://mail.rediff.com/cgi-bin/login.cgi',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_email.Visible = false;
            }
            else
            {
                lbl_note_email.Text = "This does not contain details!";
                lbl_note_email.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_note_nm.Text = "Reddiff";
            lbl_note_nm.Visible = true;
        }
    }
}