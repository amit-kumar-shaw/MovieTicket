using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            btnlogin.Visible = true;
            btnlogout.Visible = false;
            hplprofile.Visible = false;
        }
        else
        {
            btnlogin.Visible = false;
            btnlogout.Visible = true;
            hplprofile.Visible = true;
            clsUser obj = (clsUser)Session["user"];
            hplprofile.Text = "Hi, "+obj.Name;
        }
    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserLogin.aspx");
    }
    protected void btnlogout_Click(object sender, ImageClickEventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Homepage.aspx");
    }
}
