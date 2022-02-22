using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            clsAdmin obj = (clsAdmin)Session["admin"];
            lblid.Text = (obj.Adminid).ToString();
            txtname.Text = obj.Name;
            txtmobile.Text = obj.Mobile;
            txtemail.Text = obj.Emailid;
            lblusername.Text = obj.Username;
        }
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        txtemail.Enabled = true;
        txtmobile.Enabled = true;
        txtname.Enabled = true;
        btnupdate.Visible = true;
        btnedit.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        clsAdmin obj = (clsAdmin)Session["admin"];
        obj.Name = txtname.Text;
        obj.Mobile = txtmobile.Text;
        obj.Emailid = txtemail.Text;
        obj.UpdateAdmin();
        btnupdate.Visible = false;
        btnedit.Visible = true;
        txtemail.Enabled = false;
        txtmobile.Enabled = false;
        txtname.Enabled = false;
        Session["admin"] = obj;
    }
    protected void btnchangepassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminChangePassword.aspx");
    }
}