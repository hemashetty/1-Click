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
    public partial class set_travelling : System.Web.UI.Page
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

        protected void btn_updt_makemytrip_Click(object sender, EventArgs e)
        {
            txt_updt_makemytripemail.Visible = true;
            txt_updt_makemytrippswd.Visible = true;
            btn_updt_makemytripok.Visible = true;

        }

        protected void btn_updt_makemytripok_Click(object sender, EventArgs e)
        {
            if (txt_updt_makemytripemail.Text == "" && txt_updt_makemytrippswd.Text == "")
            {
                lbl_updt_makemytrip.Visible = true;
                lbl_updt_makemytrip.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.makemytrip.com/flights/'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_makemytripemail.Text + "',password='" +Encrypt(  txt_updt_makemytrippswd.Text) + "' where Url='http://www.makemytrip.com/flights/' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_makemytripemail.Visible = false;
                    txt_updt_makemytrippswd.Visible = false;
                    btn_updt_makemytripok.Visible = false;
                    lbl_updt_makemytrip.Visible = true;
                    lbl_updt_makemytrip.Text = "You have successfully updated Username/Email and Password of MakeMyTrip.";
                }
                else
                {
                    lbl_updt_makemytrip.Visible = true;
                    lbl_updt_makemytrip.Text = "There is no data to update!";
                }
            }
        }

        protected void btn_updt_bookmyshow_Click(object sender, EventArgs e)
        {
            txt_updt_bkmyshwemail.Visible = true;
            txt_updt_bkmyshwpswd.Visible = true;
            btn_updt_bkmyshwOK.Visible = true;

        }

        protected void btn_updt_bkmyshwOK_Click(object sender, EventArgs e)
        {
            if (txt_updt_bkmyshwemail.Text == "" && txt_updt_bkmyshwpswd.Text == "")
            {
                lbl_updt_bkmyshw.Visible = true;
                lbl_updt_bkmyshw.Text = "You need to enter some data!";
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://in.bookmyshow.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_bkmyshwemail.Text + "',password='" + Encrypt( txt_updt_bkmyshwpswd.Text )+ "' where Url='http://in.bookmyshow.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_bkmyshwemail.Visible = false;
                txt_updt_bkmyshwpswd.Visible = false;
                btn_updt_bkmyshwOK.Visible = false;
                lbl_updt_bkmyshw.Visible = true;
                lbl_updt_bkmyshw.Text = "You have successfully updated Username/Email and Password of BookMyShow.";
            }
                else
            {
                lbl_updt_bkmyshw.Visible = true;
                lbl_updt_bkmyshw.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_jetOK_Click(object sender, EventArgs e)
        {
            if (txt_updt_jetemail.Text == "" && txt_updt_jetpswd.Text=="")
            {
                lbl_updt_jetairways.Visible = true;
                lbl_updt_jetairways.Text = "You need to enter some data!";
            }
            else
            {
              da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jetairways.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_jetemail.Text + "',password='" + Encrypt( txt_updt_jetpswd.Text )+ "' where Url='http://www.jetairways.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_jetemail.Visible = false;
                txt_updt_jetpswd.Visible = false;
                btn_updt_jetOK.Visible = false;
                lbl_updt_jetairways.Visible = true;
                lbl_updt_jetairways.Text = "You have successfully updated Username/Email and Password of Jet Airway.";
            }
            else
            {
                lbl_updt_jetairways.Visible = true;
                lbl_updt_jetairways.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_jetairways_Click(object sender, EventArgs e)
        {
            txt_updt_jetemail.Visible = true;
            txt_updt_jetpswd.Visible = true;
            btn_updt_jetOK.Visible = true;

        }

        protected void btn_updt_yatra_Click(object sender, EventArgs e)
        {
            txt_updt_yatraemail.Visible = true;
            txt_updt_yatrapswd.Visible = true;
            btn_updt_yatraok.Visible = true;

        }

        protected void btn_updt_yatraok_Click(object sender, EventArgs e)
        {
            if (txt_updt_yatraemail.Text == "" && txt_updt_yatrapswd.Text=="")
            {
                lbl_yatra.Visible = true;
                lbl_yatra.Text = "You need to enter some data!";
            }
            else
            {
                   da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://secure.yatra.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_yatraemail.Text + "',password='" +Encrypt(  txt_updt_yatrapswd.Text )+ "' where Url='https://secure.yatra.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_yatraemail.Visible = false;
                txt_updt_yatrapswd.Visible = false;
                btn_updt_yatraok.Visible = false;
                lbl_yatra.Visible = true;
                lbl_yatra.Text = "You have successfully updated Username/Email and Password of Yatra.";
            }
                else
            {
                lbl_yatra.Visible = true;
                lbl_yatra.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_rail_Click(object sender, EventArgs e)
        {
            txt_updt_railemail.Visible = true;
            txt_updt_railpswd.Visible = true;
            btn_updt_railOK.Visible = true;
        }

        protected void btn_updt_railOK_Click(object sender, EventArgs e)
        {
            if (txt_updt_railemail.Text == "" && txt_updt_railpswd.Text=="")
            {
                lbl_rail.Visible = true;
                lbl_rail.Text = "You need to enter some data!";
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.irctc.co.in/eticketing/loginHome.jsf'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_railemail.Text + "',password='" + Encrypt( txt_updt_railpswd.Text) + "' where Url='https://www.irctc.co.in/eticketing/loginHome.jsf' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_railemail.Visible = false;
                txt_updt_railpswd.Visible = false;
                btn_updt_railOK.Visible = false;
                lbl_rail.Visible = true;
                lbl_rail.Text = "You have successfully updated Username/Email and Password of Railway.";
            }
                else
            {
                lbl_rail.Visible = true;
                lbl_rail.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_cls_mytrip_Click(object sender, EventArgs e)
        {
              da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.makemytrip.com/flights/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.makemytrip.com/flights/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_makemytrip.Visible = true;
                lbl_updt_makemytrip.Text = "You have successfully delete Username/Email and Password of MakeMyTrip.";
            }
            else
            {
                lbl_updt_makemytrip.Visible = true;
                lbl_updt_makemytrip.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_bkmyshw_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://in.bookmyshow.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://in.bookmyshow.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_bkmyshw.Visible = true;
                lbl_updt_bkmyshw.Text = "You have successfully delete Username/Email and Password of BookMyShow.";
            }
            else
            {
                lbl_updt_bkmyshw.Visible = true;
                lbl_updt_bkmyshw.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_jetair_Click(object sender, EventArgs e)
        {  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jetairways.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.jetairways.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_jetairways.Visible = true;
                lbl_updt_jetairways.Text = "You have successfully delete Username/Email and Password of Jet Airway.";
            }
            else
            {
                lbl_updt_jetairways.Visible = true;
                lbl_updt_jetairways.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_yatra_Click(object sender, EventArgs e)
        {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://secure.yatra.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://secure.yatra.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_yatra.Visible = true;
                lbl_yatra.Text = "You have successfully delete Username/Email and Password of Yatra.";
            }
            else
            {
                lbl_yatra.Visible = true;
                lbl_yatra.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_rail_Click(object sender, EventArgs e)
        {
             da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.irctc.co.in/eticketing/loginHome.jsf'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.irctc.co.in/eticketing/loginHome.jsf' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_rail.Visible = true;
                lbl_rail.Text = "You have successfully delete Username/Email and Password of Railway.";
            }
            else
            {
                lbl_rail.Visible = true;
                lbl_rail.Text = "There is no data to update!";
            }
        }
    }
}