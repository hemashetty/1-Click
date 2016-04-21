using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_click.Pages
{
    public partial class postses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["gmail_nm"] = "shettysatya12@gmail.com";
            Session["gmail_pwd"] = "veni@143";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}