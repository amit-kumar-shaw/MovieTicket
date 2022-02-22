using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            clsUser obj = (clsUser)Session["user"];
            txtname.Text = obj.Name;
            txtmobile.Text = obj.Mobile;
            txtemail.Text = obj.Emailid;
            lblusername.Text = obj.Username;
        }
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnchangepassword_Click(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserChangePassword.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        clsUser obj = (clsUser)Session["user"];
        obj.Name = txtname.Text;
        obj.Mobile = txtmobile.Text;
        obj.Emailid = txtemail.Text;
        obj.UpdateUser();
        btnupdate.Visible = false;
        btnedit.Visible = true;
        txtemail.Enabled = false;
        txtmobile.Enabled = false;
        txtname.Enabled = false;
        Session["user"] = obj;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        txtemail.Enabled = true;
        txtmobile.Enabled = true;
        txtname.Enabled = true;
        btnupdate.Visible = true;
        btnedit.Visible = false;
    }
}