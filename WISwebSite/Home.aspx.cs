using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WISwebSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["aUser"];
            if (cookie == null)
            {
                Response.Redirect("Default.aspx");
            }
            else {
                Label1.Text = "Hello "+ cookie.Values["firstName"];
                //cookie["firstName"].ToString();
            }


            
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["aUser"];
            if (cookie != null) {
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
                Response.Redirect("Default.aspx");
            }
            //Response.Cookies["aUser"]["firstName"] = 
            

        }
    }
}