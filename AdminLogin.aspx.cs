using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        clsAdmin objadmin = new clsAdmin();
        objadmin.Username = txtusername.Text;
        objadmin.Password = txtpassword.Text;

        objadmin = objadmin.AuthenticateMember();

        if (objadmin == null)
        {
            lblmsg.Text = "Invalid Login ID and Password";
        }
        else
        {
            lblmsg.Text = "Login Successfully";
            Session["admin"] = objadmin;
            Response.Redirect("AdminHome.aspx");
        }

    }
}