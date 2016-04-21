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
    public partial class Travelling : System.Web.UI.Page
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


        protected void btnmytrip_Click(object sender, EventArgs e)
        {
            if (txtmytripemail.Text == "" && txtmytripswd.Text == "")
            {
                lbl_note_mytrip.Text = "Please enter details!";
                lbl_note_mytrip.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.makemytrip.com/flights/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.makemytrip.com/flights/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string mytrip_unm = ds.Tables[0].Rows[0][0].ToString();
                string mytrip_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtmytripemail.Text == mytrip_unm && txtmytripswd.Text == mytrip_pswd)
                {
                    lbl_note_mytrip.Text = "You already storred these details!";
                    lbl_note_mytrip.Visible = true;
                }
                else if (mytrip_unm != null && mytrip_pswd != null)
                {
                    lbl_note_mytrip.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_mytrip.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.makemytrip.com/flights/','" + txtmytripemail.Text + "','" +Encrypt( txtmytripswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtmytripemail.Visible = false;
                txtmytripswd.Visible = false;
                btnmytrip.Visible = false;
                lbl_note_mytrip.Text = "You have successfully added!";
                lbl_note_mytrip.Visible = true;
                btn_cancel_mytrip.Visible = false;
            }
            }

        }

        protected void imgmytrip_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.makemytrip.com/flights/");
        }

        protected void btnbookmyshow_Click(object sender, EventArgs e)
        {
            if (txtbookmyemail.Text == "" && txtbookmypswd.Text == "")
            {
                lbl_note_bookmyshow.Text = "Please enter details!";
                lbl_note_bookmyshow.Visible = true;
            }
            else
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://in.bookmyshow.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://in.bookmyshow.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string book_unm = ds.Tables[0].Rows[0][0].ToString();
                string book_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtbookmyemail.Text == book_unm && txtbookmypswd.Text == book_pswd)
                {
                    lbl_note_bookmyshow.Text = "You already storred these details!";
                    lbl_note_bookmyshow.Visible = true;
                }
                else if (book_unm != null && book_pswd != null)
                {
                    lbl_note_bookmyshow.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_bookmyshow.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://in.bookmyshow.com/','" + txtbookmyemail.Text + "','" +Encrypt( txtbookmypswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtbookmyemail.Visible = false;
                txtbookmypswd.Visible = false;
                btnbookmyshow.Visible = false;
                lbl_note_bookmyshow.Text = "You have successfully added!";
                lbl_note_bookmyshow.Visible = true;
                btn_cancel_bookmyshow.Visible = false;
            }
            }
        }

        protected void imgbookmytrip_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://in.bookmyshow.com/");
        }

        protected void btnjetairway_Click(object sender, EventArgs e)
        {
            if (txtjetairemail.Text == "" && txtjetairpswd.Text == "")
            {
                lbl_note_jetairways.Text = "Please enter details!";
                lbl_note_jetairways.Visible = true;
            }
            else
            {
                  da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jetairways.com/EN/IN/PlanYourTravel/BookOnline.aspx'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='http://www.jetairways.com/EN/IN/PlanYourTravel/BookOnline.aspx'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string jet_unm = ds.Tables[0].Rows[0][0].ToString();
                string jet_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtjetairemail.Text == jet_unm && txtjetairpswd.Text == jet_pswd)
                {
                    lbl_note_jetairways.Text = "You already storred these details!";
                    lbl_note_jetairways.Visible = true;
                }
                else if (jet_unm != null && jet_pswd != null)
                {
                    lbl_note_jetairways.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_jetairways.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','http://www.jetairways.com/','" + txtjetairemail.Text + "','" + Encrypt(txtjetairpswd.Text )+ "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtjetairemail.Visible = false;
                txtjetairpswd.Visible = false;
                btnjetairway.Visible = false;
                lbl_note_jetairways.Text = "You have successfully added!";
                lbl_note_jetairways.Visible = true;
                btn_cancel_jetairwys.Visible = false;
            }
            }
        }

        protected void imgjetairway_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.jetairways.com/");
        }

        protected void btnyatra_Click(object sender, EventArgs e)
        {
            if (txtyatraemail.Text == "" && txtyatrapswd.Text == "")
            {
                lbl_note_yatra.Text = "Please enter details!";
                lbl_note_yatra.Visible = true;
            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://secure.yatra.com/'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://secure.yatra.com/'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string yatra_unm = ds.Tables[0].Rows[0][0].ToString();
                string yatra_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtyatraemail.Text == yatra_unm && txtyatrapswd.Text == yatra_pswd)
                {
                    lbl_note_yatra.Text = "You already storred these details!";
                    lbl_note_yatra.Visible = true;
                }
                else if (yatra_unm != null && yatra_pswd != null)
                {
                    lbl_note_yatra.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_yatra.Visible = true;
                }
            }
            else
            {
                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://secure.yatra.com/','" + txtyatraemail.Text + "','" + Encrypt(txtyatrapswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtyatraemail.Visible = false;
                txtyatrapswd.Visible = false;
                btnyatra.Visible = false;
                lbl_note_yatra.Text = "You have successfully added!";
                lbl_note_yatra.Visible = true;
                btn_cancel_yatra.Visible = false;
            }
            }
        }

        protected void imgyatra_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://secure.yatra.com/social/common/yatra/signin");
        }

        protected void btnrailway_Click(object sender, EventArgs e)
        {
            if (txtrailemail.Text == "" && txtrailpswd.Text == "")
            {
                lbl_note_railway.Text = "Please enter details!";
                lbl_note_railway.Visible = true;

            }
            else
            {
                 da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.irctc.co.in/eticketing/loginHome.jsf'", con);
                DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select email,password from click_tb where Jid='" + Label1.Text + "' and Url='https://www.irctc.co.in/eticketing/loginHome.jsf'", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                string rail_unm = ds.Tables[0].Rows[0][0].ToString();
                string rail_pswd = ds.Tables[0].Rows[0][1].ToString();
                if (txtrailemail.Text == rail_unm && txtrailpswd.Text == rail_pswd)
                {
                    lbl_note_railway.Text = "You already storred these details!";
                    lbl_note_railway.Visible = true;

                }
                else if (rail_unm != null && rail_pswd != null)
                {
                    lbl_note_railway.Text = "You cannot enter the detail of same more than once!";
                    lbl_note_railway.Visible = true;

                }
            }
            else
            {


                cmd = new SqlCommand("insert into click_tb(Jid,Url,email,password)values('" + Label1.Text + "','https://www.irctc.co.in/eticketing/loginHome.jsf','" + txtrailemail.Text + "','" + Encrypt(txtrailpswd.Text) + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                txtrailemail.Visible = false;
                txtrailpswd.Visible = false;
                btnrailway.Visible = false;
                lbl_note_railway.Text = "You have successfully added!";
                lbl_note_railway.Visible = true;
                btn_cancel_railway.Visible = false;
            }

            }
        }

        protected void imgrail_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.irctc.co.in/eticketing/loginHome.jsf");
        }

        protected void btn_add_mytrip_Click(object sender, EventArgs e)
        {
            txtmytripemail.Visible = true;
            txtmytripswd.Visible = true;
            btnmytrip.Visible = true;
            btn_cancel_mytrip.Visible = true;
        }

        protected void btn_cancel_mytrip_Click(object sender, EventArgs e)
        {
            txtmytripemail.Visible = false;
            txtmytripswd.Visible = false;
            btnmytrip.Visible = false;
            btn_cancel_mytrip.Visible = false;
        }

        protected void btn_add_mybookshow_Click(object sender, EventArgs e)
        {
            txtbookmyemail.Visible = true;
            txtbookmypswd.Visible = true;
            btnbookmyshow.Visible = true;
            btn_cancel_bookmyshow.Visible = true;

        }

        protected void btn_cancel_bookmyshow_Click(object sender, EventArgs e)
        {
            txtbookmyemail.Visible = false;
            txtbookmypswd.Visible = false;
            btnbookmyshow.Visible = false;
            btn_cancel_bookmyshow.Visible = false;
            lbl_note_bookmyshow.Visible = false;
        }

        protected void btn_add_jetairways_Click(object sender, EventArgs e)
        {
            txtjetairemail.Visible = true;
            txtjetairpswd.Visible = true;
            btnjetairway.Visible = true;
            btn_cancel_jetairwys.Visible = true;
        }

        protected void btn_cancel_jetairwys_Click(object sender, EventArgs e)
        {
            txtjetairemail.Visible = false;
            txtjetairpswd.Visible = false;
            btnjetairway.Visible = false;
            btn_cancel_jetairwys.Visible = false;
        }

        protected void btn_add_yatra_Click(object sender, EventArgs e)
        {
            txtyatraemail.Visible = true;
            txtyatrapswd.Visible = true;
            btnyatra.Visible = true;
            btn_cancel_yatra.Visible = true;
        }

        protected void btn_cancel_yatra_Click(object sender, EventArgs e)
        {
            txtyatraemail.Visible = false;
            txtyatrapswd.Visible = false;
            btnyatra.Visible = false;
            btn_cancel_yatra.Visible = false;
            lbl_note_yatra.Visible = false;
        }

        protected void btn_add_railway_Click(object sender, EventArgs e)
        {
            txtrailemail.Visible = true;
            txtrailpswd.Visible = true;
            btnrailway.Visible = true;
            btn_cancel_railway.Visible = true;
        }

        protected void btn_cancel_railway_Click(object sender, EventArgs e)
        {
            txtrailemail.Visible = false;
            txtrailpswd.Visible = false;
            btnrailway.Visible = false;
            btn_cancel_railway.Visible = false;
            lbl_note_railway.Visible = false;
        }
    }
}