using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace _1_click.Pages
{
    public partial class Admin_email : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["1-click"].ConnectionString);
            con.Open();
        }

        protected void btn_sendmail_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["1-click"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand command = new SqlCommand("SELECT Email FROM Joine_tb ;", con);
       
                con.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                       
                            SendPasswordResetEmail(reader["Email"].ToString());
                            Label1.Visible = true;
                            Label1.Text = "Email has successfully sent!";
                        
                    }
                }
            }
        }

        private void SendPasswordResetEmail(string ToEmail)
        {
            // MailMessage class is present is System.Net.Mail namespace
            MailMessage mailMessage = new MailMessage("hlax.tech@gmail.com", ToEmail);


            // StringBuilder class is present in System.Text namespace
            StringBuilder sbEmailBody = new StringBuilder();
            
            sbEmailBody.Append(txt_email_body.Text);
          
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b>1-CLICK</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = txt_subject.Text;
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                //UserName = "hemapadisetty@gmail.com",
                //Password = "#em@devi13121992"

                UserName = "hlax.tech@gmail.com",
                Password = "hemadevi"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }


      
    }
}