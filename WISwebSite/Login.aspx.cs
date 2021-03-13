using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WISwebSite
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //get studentName that matches with ID
            string result = string.Empty;
            result = DataAccessLayer.getStudentName(txtUserID.Text);

            if (result.Equals("0"))
            {
                Response.Write("<script>alert('Please input valid ID or Password');</script>");
                Response.Redirect("Default.aspx");
            }
            else {
                string firstName = result;
                //Save Cookie
                HttpCookie aCookie = new HttpCookie("aUser");
                aCookie.Values["firstName"] = firstName;
                aCookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(aCookie);
            }

            bool isValidId = DataAccessLayer.verifyLogin(txtUserID.Text, txtPassword.Text);
            if (isValidId)
            {
                Response.Redirect("Home.aspx");
            }
            else {
                Response.Write("<script>alert('Please input valid ID or Password');</script>");
                Response.Redirect("Default.aspx");
            }
        }

        
    }
}