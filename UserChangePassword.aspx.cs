using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        clsUser obj = (clsUser)Session["user"];
        if (obj.Password == txtold.Text)
        {
            obj.Password = txtnew.Text;
            obj.UpdatePassword();
            Session["user"] = obj;
            Response.Redirect("UserProfile.aspx");
        }
        else
        {
            lblmsg.Text = "Wrong Old Password";
        }
    }
}