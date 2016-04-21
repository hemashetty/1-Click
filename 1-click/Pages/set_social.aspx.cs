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
    public partial class set_social : System.Web.UI.Page
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


        protected void btn_updt_yahoo_Click(object sender, EventArgs e)
        {
            txt_updt_yahoemail.Visible = true;
            txt_updt_yhopswd.Visible = true;
            btn_updt_yahook.Visible = true;
        }

        protected void btn_updt_yahook_Click(object sender, EventArgs e)
        {
            if (txt_updt_yahoemail.Text == "" && txt_updt_yhopswd.Text == "")
            {
                lbl_updt_yaho.Visible = true;
                lbl_updt_yaho.Text = "You need to enter some data!";
            }
            else
            {

                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://login.yahoo.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_yahoemail.Text + "',password='" + Encrypt(txt_updt_yhopswd.Text) + "' where Url='https://login.yahoo.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_yahoemail.Visible = false;
                txt_updt_yhopswd.Visible = false;
                btn_updt_yahook.Visible = false;
                lbl_updt_yaho.Visible = true;
                lbl_updt_yaho.Text = "You have successfully updated Username/Email and Password of Yahoo Mail.";
            }
                else
            {
                lbl_updt_yaho.Visible = true;
                lbl_updt_yaho.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_gmail_Click(object sender, EventArgs e)
        {
            txt_updt_gmilemail.Visible = true;
            txt_updt_gmilpswd.Visible = true;
            btn_updt_gmilok.Visible = true;

        }

        protected void btn_updt_gmilok_Click(object sender, EventArgs e)
        {
            if (txt_updt_gmilemail.Text == "" && txt_updt_gmilpswd.Text == "")
            {
                lbl_gmail.Visible = true;
                lbl_gmail.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.gmail.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_gmilemail.Text + "',password='" +Encrypt( txt_updt_gmilpswd.Text )+ "' where Url='http://www.gmail.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_gmilemail.Visible = false;
                txt_updt_gmilpswd.Visible = false;
                btn_updt_gmilok.Visible = false;
                lbl_gmail.Visible = true;
                lbl_gmail.Text = "You have successfully updated Username/Email and Password of Gmail Mail.";
            }
                else
            {
                lbl_gmail.Visible = true;
                lbl_gmail.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_outlook_Click(object sender, EventArgs e)
        {
            txt_updt_outemail.Visible = true;
            txt_updt_outpswd.Visible = true;
            btn_updt_outok.Visible = true;
        }

        protected void btn_updt_outok_Click(object sender, EventArgs e)
        {
            if (txt_updt_outemail.Text == "" && txt_updt_outpswd.Text == "")
            {
                lbl_updt_out.Visible = true;
                lbl_updt_out.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.outlook.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_outemail.Text + "',password='" +Encrypt( txt_updt_outpswd.Text) + "' where Url='https://www.outlook.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_outemail.Visible = false;
                txt_updt_outpswd.Visible = false;
                btn_updt_outok.Visible = false;
                lbl_updt_out.Visible = true;
                lbl_updt_out.Text = "You have successfully updated Username/Email and Password of Outlook Mail.";
            }
                else
            {
                lbl_updt_out.Visible = true;
                lbl_updt_out.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_redif_Click(object sender, EventArgs e)
        {
            txt_updt_redifemail.Visible = true;
            txt_updt_redifpswd.Visible = true;
            btn_updt_redfOK.Visible = true;

        }

        protected void btn_updt_redfOK_Click(object sender, EventArgs e)
        {
            if (txt_updt_redifemail.Text == "" && txt_updt_redifpswd.Text == "")
            {
                lbl_redif.Visible = true;
                lbl_redif.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://mail.rediff.com/cgi-bin/login.cgi'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_redifemail.Text + "',password='" + Encrypt(txt_updt_redifpswd.Text) + "' where Url='https://mail.rediff.com/cgi-bin/login.cgi' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_redifemail.Visible = false;
                txt_updt_redifpswd.Visible = false;
                btn_updt_redfOK.Visible = false;
                lbl_redif.Visible = true;
                lbl_redif.Text = "You have successfully updated Username/Email and Password of Rediff Mail.";
            }
                else
            {
                lbl_redif.Visible = true;
                lbl_redif.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_cls_yho_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://login.yahoo.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://login.yahoo.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_yaho.Visible = true;
                lbl_updt_yaho.Text = "You have successfully delete Username/Email and Password of Yahoo Mail.";
            }
            else
            {
                lbl_updt_yaho.Visible = true;
                lbl_updt_yaho.Text = "There is no data to Delete!";
            }
        }

        protected void btn_cls_gmil_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.gmail.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.gmail.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_gmail.Visible = true;
                lbl_gmail.Text = "You have successfully delete Username/Email and Password of Gmail Mail.";
            }
            else
            {
                lbl_gmail.Visible = true;
                lbl_gmail.Text = "There is no data to Delete!";
            }
        }

        protected void btn_cls_outlok_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.outlook.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.outlook.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_out.Visible = true;
                lbl_updt_out.Text = "You have successfully delete Username/Email and Password of Outlook Mail.";
            }
            else
            {
                lbl_updt_out.Visible = true;
                lbl_updt_out.Text = "There is no data to Delete!";
            }
        }

        protected void btn_cls_redif_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://mail.rediff.com/cgi-bin/login.cgi'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://mail.rediff.com/cgi-bin/login.cgi' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_redif.Visible = true;
                lbl_redif.Text = "You have successfully delete Username/Email and Password of Rediff Mail.";
            }
            else
            {
                lbl_redif.Visible = true;
                lbl_redif.Text = "There is no data to Delete!";
            }
        }
    }
}