using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WISwebSite
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string programName = txtProgramList.SelectedValue;
            int stdNo = DataAccessLayer.getStdNo();
            DataAccessLayer.saveStdInfo(stdNo, txtFirstName.Text, txtLastName.Text, txtStudentID.Text, txtEmail.Text, programName, txtPassword.Text);

            
           
            Response.Redirect("Login.aspx");
        }
    }
}