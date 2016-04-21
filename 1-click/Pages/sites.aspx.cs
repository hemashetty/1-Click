using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_click.Pages
{
    public partial class sites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["username"].ToString();
        }

        protected void img_social_site_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("get_socialnetwork.aspx");
        }

        protected void img_email_site_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("get_social.aspx");
        }

        protected void img_travel_site_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("get_travelling.aspx");
        }

        protected void img_shop_site_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("get_shopping.aspx");
        }

        protected void img_site_radio_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("get_entertainment.aspx");
        }

      
    }
}