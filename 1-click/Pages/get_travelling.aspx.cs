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
    public partial class get_travelling : System.Web.UI.Page
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

        protected void btn_shw_makemytrip_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.makemytrip.com/flights/'", con);
             DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.makemytrip.com/flights/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text =Decrypt( pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Make My Trip','http://www.makemytrip.com/flights/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_travelling.Visible = false;
            }
            else
            {
                lbl_note_travelling.Text = "This does not contain details!";
                lbl_note_travelling.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_travelling.Text = "MakeMyTrip";
            lbl_nm_travelling.Visible = true;
        }

        protected void btn_shw_bookmyshow_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://in.bookmyshow.com/'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://in.bookmyshow.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Book My Show','http://in.bookmyshow.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_travelling.Visible = false;
            }
            else
            {
                lbl_note_travelling.Text = "This does not contain details!";
                lbl_note_travelling.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_travelling.Text = "BookMyShow";
            lbl_nm_travelling.Visible = true;
        }

        protected void btn_shw_jetairway_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jetairways.com/'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jetairways.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Jet Airways','http://www.jetairways.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_travelling.Visible = false;
            }
            else
            {
                lbl_note_travelling.Text = "This does not contain details!";
                lbl_note_travelling.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_travelling.Text = "Jet Airways";
            lbl_nm_travelling.Visible = true;
        }

        protected void btn_shw_yatra_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://secure.yatra.com/'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://secure.yatra.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','Yatra','https://secure.yatra.com/',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_travelling.Visible = false;
            }
            else
            {
                lbl_note_travelling.Text = "This does not contain details!";
                lbl_note_travelling.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_travelling.Text = "Yatra";
            lbl_nm_travelling.Visible = true;
        }

        protected void btn_shw_railway_Click(object sender, ImageClickEventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.irctc.co.in/eticketing/loginHome.jsf'", con);
              DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.irctc.co.in/eticketing/loginHome.jsf'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string unm = ds.Tables[0].Rows[0][0].ToString();
                string pswd = ds.Tables[0].Rows[0][1].ToString();
                txt_shw_email.Text = unm;
                txt_shw_pswd.Text = Decrypt(pswd);
                cmd = new SqlCommand("insert into History_tb(Jid,Name,Url,Time)values('" + Label1.Text + "','RailWay','https://www.irctc.co.in/eticketing/loginHome.jsf',GetDATE())", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_note_travelling.Visible = false;
            }
            else
            {
                lbl_note_travelling.Text = "This does not contain details!";
                lbl_note_travelling.Visible = true;
                txt_shw_email.Text = "";
                txt_shw_pswd.Text = "";
            }
            lbl_nm_travelling.Text = "Railway";
            lbl_nm_travelling.Visible = true;
        }
    }
}