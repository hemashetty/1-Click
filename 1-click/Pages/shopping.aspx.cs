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
    public partial class shopping : System.Web.UI.Page
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


        protected void btnflipkart_Click(object sender, EventArgs e)
        {
            if (txtflipemail.Text == "" && txtflipswd.Text == "")
            {
                lbl_note_flipkart.Text = "Please enter details!";
                lbl_note_flipkart.Visible = true;

            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flipkart.com/account/login?from=header'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.flipkart.com/account/login?from=header'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string flip_unm = ds.Tables[0].Rows[0][0].ToString();
                string flip_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtflipemail.Text == flip_unm && txtflipswd.Text == flip_pswd)
                {
                    lbl_note_flipkart.Text = "You already storred these details!";
                    lbl_note_flipkart.Visible = true;
                }
                else if (flip_unm != null && flip_pswd != null)
                {
                    lbl_note_flipkart.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_flipkart.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.flipkart.com/account/login?from=header','" + txtflipemail.Text + "','" + Encrypt( txtflipswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtflipemail.Visible = false;
                txtflipswd.Visible = false;
                btnflipkart.Visible = false;
                lbl_note_flipkart.Text = "You have successfully added!";
                lbl_note_flipkart.Visible = true;
                btn_cancel_flipkart.Visible = false;
            }
            }
        }

        protected void imgflipkart_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.flipkart.com/account/login?from=header");
        }

        protected void btnjubong_Click(object sender, EventArgs e)
        {
            if (txtjubemil.Text == "" && txtjubpswd.Text == "")
            {
                lbl_note_jabong.Text = "Please enter details!";
                lbl_note_jabong.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jabong.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jabong.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string jubong_unm = ds.Tables[0].Rows[0][0].ToString();
                string jubong_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtjubemil.Text == jubong_unm && txtjubpswd.Text == jubong_pswd)
                {
                    lbl_note_jabong.Text = "You already storred these details!";
                    lbl_note_jabong.Visible = true;
                }
                else if (jubong_unm != null && jubong_pswd != null)
                {
                    lbl_note_jabong.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_jabong.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.jabong.com/','" + txtjubemil.Text + "','" +Encrypt(  txtjubpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtjubemil.Visible = false;
                txtjubpswd.Visible = false;
                btnjubong.Visible = false;
                lbl_note_jabong.Text = "You have successfully added!";
                lbl_note_jabong.Visible = true;
                btn_cancel_jabong.Visible = false;
            }
            }
        }

        protected void imgjubong_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.jabong.com/");
        }

        protected void btnmyntra_Click(object sender, EventArgs e)
        {
            if (txtmyntemail.Text == "" && txtmyntpswd.Text == "")
            {
                lbl_note_myntra.Text = "Please enter details!";
                lbl_note_myntra.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string myntra_unm = ds.Tables[0].Rows[0][0].ToString();
                string myntra_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtmyntemail.Text == myntra_unm && txtmyntpswd.Text == myntra_pswd)
                {
                    lbl_note_myntra.Text = "You already storred these details!";
                    lbl_note_myntra.Visible = true;
                }
                else if (myntra_unm != null && myntra_pswd != null)
                {
                    lbl_note_myntra.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_myntra.Visible = true;
                }
            }
            else
            {


                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.myntra.com/#signin','" + txtmyntemail.Text + "','" +Encrypt(  txtmyntpswd.Text )+ "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtmyntemail.Visible = false;
                txtmyntpswd.Visible = false;
                btnmyntra.Visible = false;
                lbl_note_myntra.Text = "You have successfully added!";
                lbl_note_myntra.Visible = true;
                btn_cancel_myntra.Visible = false;
            }
            }
        }

        protected void imgmyntra_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.myntra.com/#signin");
        }

        protected void btnebay_Click(object sender, EventArgs e)
        {
            if (txtebyemail.Text == "" && txtebypswd.Text == "")
            {
                lbl_note_ebay.Text = "Please enter details!";
                lbl_note_ebay.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.ebay.in/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string ebay_unm = ds.Tables[0].Rows[0][0].ToString();
                string ebay_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtebyemail.Text == ebay_unm && txtebypswd.Text == ebay_pswd)
                {
                    lbl_note_ebay.Text = "You already storred these details!";
                    lbl_note_ebay.Visible = true;
                }
                else if (ebay_unm != null && ebay_pswd != null)
                {
                    lbl_note_ebay.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_ebay.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.ebay.in/','" + txtebyemail.Text + "','" +Encrypt(  txtebypswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtebyemail.Visible = false;
                txtebypswd.Visible = false;
                btnebay.Visible = false;
                lbl_note_ebay.Text = "You have successfully added!";
                lbl_note_ebay.Visible = true;
                btn_cancel_ebay.Visible = false;
            }
            }
        }

        protected void imgeby_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.ebay.in/");
        }

        protected void btnamazon_Click(object sender, EventArgs e)
        {
            if (txtamazemail.Text == "" && txtamazpswd.Text == "")
            {
                lbl_note_amazon.Text = "Please enter details!";
                lbl_note_amazon.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.amazon.in'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.amazon.in'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string amazon_unm = ds.Tables[0].Rows[0][0].ToString();
                string amazon_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtamazemail.Text == amazon_unm && txtamazpswd.Text == amazon_pswd)
                {
                    lbl_note_amazon.Text = "You already storred these details!";
                    lbl_note_amazon.Visible = true;
                }
                else if (amazon_unm != null && amazon_pswd != null)
                {
                    lbl_note_amazon.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_amazon.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.amazon.in','" + txtamazemail.Text + "','" + Encrypt( txtamazpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtamazemail.Visible = false;
                txtamazpswd.Visible = false;
                btnamazon.Visible = false;
                lbl_note_amazon.Text = "You have successfully added!";
                lbl_note_amazon.Visible = true;
                btn_cancel_amazon.Visible = false;
            }
            }
        }

        protected void imgamazon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.amazon.in");
        }

        protected void btn_add_flipkart_Click(object sender, EventArgs e)
        {
            txtflipemail.Visible = true;
            txtflipswd.Visible = true;
            btnflipkart.Visible = true;
            btn_cancel_flipkart.Visible = true;
        }

        protected void btn_cancel_flipkart_Click(object sender, EventArgs e)
        {
            lbl_note_flipkart.Visible = false;
            txtflipemail.Visible = false;
            txtflipswd.Visible = false;
            btnflipkart.Visible = false;
            btn_cancel_flipkart.Visible = false;
        }

        protected void btn_add_jabong_Click(object sender, EventArgs e)
        {
            txtjubemil.Visible = true;
            txtjubpswd.Visible = true;
            btnjubong.Visible = true;
            btn_cancel_jabong.Visible = true;
        }

        protected void btn_cancel_jabong_Click(object sender, EventArgs e)
        {
            txtjubemil.Visible = false;
            lbl_note_jabong.Visible = false;
            txtjubpswd.Visible = false;
            btnjubong.Visible = false;
            btn_cancel_jabong.Visible = false;
        }

        protected void btn_add_myntra_Click(object sender, EventArgs e)
        {
            txtmyntemail.Visible = true;
            txtmyntpswd.Visible = true;
            btnmyntra.Visible = true;
            btn_cancel_myntra.Visible = true;
        }

        protected void btn_cancel_myntra_Click(object sender, EventArgs e)
        {
            txtmyntemail.Visible = false;
            txtmyntpswd.Visible = false;
            lbl_note_myntra.Visible = false;
            btnmyntra.Visible = false;
            btn_cancel_myntra.Visible = false;
        }

        protected void btn_add_ebay_Click(object sender, EventArgs e)
        {
            txtebyemail.Visible = true;
            txtebypswd.Visible = true;
            btnebay.Visible = true;
            btn_cancel_ebay.Visible = true;
        }

        protected void btn_cancel_ebay_Click(object sender, EventArgs e)
        {
            txtebyemail.Visible = false;
            lbl_note_ebay.Visible = false;
            txtebypswd.Visible = false;
            btnebay.Visible = false;
            btn_cancel_ebay.Visible = false;
        }

        protected void btn_add_amazon_Click(object sender, EventArgs e)
        {
            txtamazemail.Visible = true;
            txtamazpswd.Visible = true;
            btnamazon.Visible = true;
            btn_cancel_amazon.Visible = true;
        }

        protected void btn_cancel_amazon_Click(object sender, EventArgs e)
        {
            lbl_note_amazon.Visible = false;
            txtamazemail.Visible = false;
            txtamazpswd.Visible = false;
            btnamazon.Visible = false;
            btn_cancel_amazon.Visible = false;
        }
    }
}