using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        
    
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        clsUser objuser = new clsUser();
        objuser.Name = txtname.Text;
        objuser.Mobile = txtmobile.Text;
        objuser.Emailid = txtemailid.Text;
        objuser.Username = txtusername.Text;
        objuser.Password = txtpassword.Text;
        if (!objuser.checkUser())
        {
            if (objuser.AddUser() == 1)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "User Added Successfully";
            }
            else
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "User Not Added";
            }
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "User already exist";
        }
    }
}