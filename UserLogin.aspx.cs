using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserRegistration.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        clsUser obj = new clsUser();
        obj.Username = txtusername.Text;
        obj.Password = txtpassword.Text;
        obj = obj.AuthenticateMember();
        if (obj != null)
        {
            Session["user"] = obj;
            if (Session["seatid"] == null)
            {
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Response.Redirect("Booking.aspx");
            }
        }
        else
        {
            lblmsg.Text = "Invalid Username/Password";
        }
    }
}