using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        else
        {
            clsAdmin obj = (clsAdmin)Session["admin"];
            lblname.Text = obj.Name;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }
}
