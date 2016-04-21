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
    public partial class get_shopping : System.Web.UI.Page
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

        protected void btn_shw_flipkart_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flipkart.com/account/login?from=header'", con);

             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flipkart.com/account/login?from=header'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text =Decrypt( pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Flipkart','https://www.flipkart.com/account/login?from=header',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_shopping.Visible = false;
            }
            else
            {
                lbl_note_shopping.Text = "This does not contain details!";
                lbl_note_shopping.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_shopping.Text = "Flipkart";
            lbl_nm_shopping.Visible = true;
        }

        protected void btn_shw_jabong_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jabong.com/'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jabong.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text =Decrypt( pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Jabong','http://www.jabong.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_shopping.Visible = false;
            }
            else
            {
                lbl_note_shopping.Text = "This does not contain details!";
                lbl_note_shopping.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_shopping.Text = "Jabong";
            lbl_nm_shopping.Visible = true;
        }

        protected void btn_shw_myntra_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.myntra.com/#signin'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.myntra.com/#signin'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text =Decrypt( pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Myntra','http://www.myntra.com/#signin',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_shopping.Visible = false;
            }
            else
            {
                lbl_note_shopping.Text = "This does not contain details!";
                lbl_note_shopping.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_shopping.Text = "Myntra";
            lbl_nm_shopping.Visible = true;
        }

        protected void btn_shw_ebay_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Ebay','http://www.ebay.in/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_shopping.Visible = false;
            }
            else
            {
                lbl_note_shopping.Text = "This does not contain details!";
                lbl_note_shopping.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_shopping.Text = "Ebay";
            lbl_nm_shopping.Visible = true;
        }

        protected void btn_shw_amazon_Click(object sender, ImageClickEventArgs e)
        {

            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.amazon.in'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.amazon.in'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Amazon','https://www.amazon.in',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_shopping.Visible = false;
            }
            else
            {
                lbl_note_shopping.Text = "This does not contain details!";
                lbl_note_shopping.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_shopping.Text = "Amazon";
            lbl_nm_shopping.Visible = true;
        }
    }
}