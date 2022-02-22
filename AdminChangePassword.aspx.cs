using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        clsAdmin obj = (clsAdmin)Session["admin"];
        if (obj.Password == txtold.Text)
        {
            obj.Password = txtnew.Text;
            obj.UpdatePassword();
            Session["admin"] = obj;
            Response.Redirect("AdminProfile.aspx");
        }
        else
        {
            lblmsg.Text = "Wrong Old Password";
        }
    }
}