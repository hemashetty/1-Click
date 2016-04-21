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
using System.Text;
using System.IO;
using System.Security.Cryptography;
namespace _1_click.Pages
{
    public partial class set_shopping : System.Web.UI.Page
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


        protected void btn_updt_flipkart_Click(object sender, EventArgs e)
        {
            txt_updt_flipkartemail.Visible = true;
            txt_update_flipkartpswd.Visible = true;
            btn_updt_flipkartok.Visible = true;
        }

        protected void btn_updt_flipkartok_Click(object sender, EventArgs e)
        {
            if (txt_updt_flipkartemail.Text == "" && txt_update_flipkartpswd.Text=="")
            {
                lbl_flipkart.Visible = true;
                lbl_flipkart.Text = "You need to enter some data!";
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flipkart.com/account/login?from=header'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_flipkartemail.Text + "',password='" +Encrypt(  txt_update_flipkartpswd.Text )+ "' where Url='https://www.flipkart.com/account/login?from=header' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_updt_flipkartemail.Visible = false;
                txt_update_flipkartpswd.Visible = false;
                btn_updt_flipkartok.Visible = false;
                lbl_flipkart.Visible = true;
                lbl_flipkart.Text = "You have successfully updated Username/Email and Password of Flipkart.";
            }
                else
            {
                lbl_flipkart.Visible = true;
                lbl_flipkart.Text = "There is no data to update!";
            }
            }
        }

        protected void btn_updt_jabong_Click(object sender, EventArgs e)
        {
            txt_updt_jabongemail.Visible = true;
            txt_updt_jabongpswd.Visible = true;
            btn_updt_jabongok.Visible = true;

        }

        protected void btn_updt_jabongok_Click(object sender, EventArgs e)
        {
            if (txt_updt_jabongemail.Text == "" && txt_updt_jabongpswd.Text == "")
            {
                lbl_jabong.Visible = true;
                lbl_jabong.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jabong.com/'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_jabongemail.Text + "',password='" + Encrypt( txt_updt_jabongpswd.Text )+ "' where Url='http://www.jabong.com/' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_jabongemail.Visible = false;
                    txt_updt_jabongpswd.Visible = false;
                    btn_updt_jabongok.Visible = false;
                    lbl_jabong.Visible = true;
                    lbl_jabong.Text = "You have successfully updated Username/Email and Password of Jabong.";
                }
                else
                {
                    lbl_jabong.Visible = true;
                    lbl_jabong.Text = "There is no data to update!";
                }
            }
        }

        protected void btn_updt_mytra_Click(object sender, EventArgs e)
        {
            txt_updt_myntraemail.Visible = true;
            txt_updt_myntrapswd.Visible = true;
            btn_updt_myntraok.Visible = true;

        }

        protected void btn_updt_myntraok_Click(object sender, EventArgs e)
        {
            if (txt_updt_myntraemail.Text == "" && txt_updt_myntrapswd.Text == "")
            {

                lbl_myntra.Visible = true;
                lbl_myntra.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_myntraemail.Text + "',password='" + Encrypt( txt_updt_myntrapswd.Text) + "' where Url='http://www.myntra.com/#signin' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_myntraemail.Visible = false;
                    txt_updt_myntrapswd.Visible = false;
                    btn_updt_myntraok.Visible = false;
                    lbl_myntra.Visible = true;
                    lbl_myntra.Text = "You have successfully updated Username/Email and Password of Myntra.";
                }
                else
                {
                    lbl_myntra.Visible = true;
                    lbl_myntra.Text ="There is no data to update!";
                }
            }
        }

        protected void btn_updt_ebay_Click(object sender, EventArgs e)
        {
            txt_updt_ebayemail.Visible = true;
            txt_updt_ebaypswd.Visible = true;
            btn_updt_ebayok.Visible = true;
        }

        protected void btn_updt_ebayok_Click(object sender, EventArgs e)
        {
            if (txt_updt_ebayemail.Text == "" && txt_updt_ebaypswd.Text == "")
            {

                lbl_updt_ebay.Visible = true;
                lbl_updt_ebay.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_ebayemail.Text + "',password='" +Encrypt(  txt_updt_ebaypswd.Text )+ "' where Url='http://www.ebay.in/' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_ebayemail.Visible = false;
                    txt_updt_ebaypswd.Visible = false;
                    btn_updt_ebayok.Visible = false;
                    lbl_updt_ebay.Visible = true;
                    lbl_updt_ebay.Text = "You have successfully updated Username/Email and Password of Ebay.";
                }
                else
                {
                    lbl_updt_ebay.Visible = true;
                    lbl_updt_ebay.Text ="There is no data to update!";
                }
            }
        }

        protected void btn_updt_amazon_Click(object sender, EventArgs e)
        {
            txt_updt_amazonemail.Visible = true;
            txt_updt_amazonpswd.Visible = true;
            btn_updt_amazonok.Visible = true;
        }

        protected void btn_updt_amazonok_Click(object sender, EventArgs e)
        {
            if (txt_updt_amazonemail.Text == "" && txt_updt_amazonemail.Text == "")
            {
                lbl_amazon.Visible = true;
                lbl_amazon.Text = "You need to enter some data!";
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.amazon.in'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("Update click_tb set email='" + txt_updt_amazonemail.Text + "',password='" + Encrypt( txt_updt_amazonpswd.Text )+ "' where Url='https://www.amazon.in' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txt_updt_amazonemail.Visible = false;
                    txt_updt_amazonpswd.Visible = false;
                    btn_updt_amazonok.Visible = false;
                    lbl_amazon.Visible = true;
                    lbl_amazon.Text = "You have successfully updated Username/Email and Password of Amazon.";
                }
                else
                {
                    lbl_amazon.Visible = true;
                    lbl_amazon.Text = "There is no data to update!";
                }
            }
        }

        protected void btn_cls_flipkart_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flipkart.com/account/login?from=header'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("delete from click_tb where  Url='https://www.flipkart.com/account/login?from=header' and Jid='" + Label1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lbl_flipkart.Visible = true;
                    lbl_flipkart.Text = "You have successfully delete Username/Email and Password of Flipkart.";
                }
            else
                {
                    lbl_flipkart.Visible = true;
                    lbl_flipkart.Text = "There is no data to update!";
                }
        }

        protected void btn_cls_jabong_Click(object sender, EventArgs e)
        {
             da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jabong.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.jabong.com/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_jabong.Visible = true;
                lbl_jabong.Text = "You have successfully delete Username/Email and Password of Jabong.";
            }
            else
            {
                lbl_jabong.Visible = true;
                lbl_jabong.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_myntra_Click(object sender, EventArgs e)
        { da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.myntra.com/#signin' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_myntra.Visible = true;
                lbl_myntra.Text = "You have successfully delete Username/Email and Password of Myntra.";
            }
            else
            {
                lbl_myntra.Visible = true;
                lbl_myntra.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_ebay_Click(object sender, EventArgs e)
        {da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='http://www.ebay.in/' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_updt_ebay.Visible = true;
                lbl_updt_ebay.Text = "You have successfully delete Username/Email and Password of Ebay.";
            }
            else
            {
                lbl_updt_ebay.Visible = true;
                lbl_updt_ebay.Text = "There is no data to update!";
            }
        }

        protected void btn_cls_amzn_Click(object sender, EventArgs e)
        {   da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.amazon.in'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("delete from click_tb where Url='https://www.amazon.in' and Jid='" + Label1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_amazon.Visible = true;
                lbl_amazon.Text = "You have successfully delete Username/Email and Password of Amazon.";
            }
            else
            {
                lbl_amazon.Visible = true;
                lbl_amazon.Text = "There is no data to update!";
            }
        }
    }
}