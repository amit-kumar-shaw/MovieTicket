using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsCity objcity = new clsCity();
        objcity.Name = txtcity.Text;
        if (!objcity.checkCity())
        {
            if (objcity.AddCity() == 1)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "City Added Successfully";
            }
            else
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "City Not Added";
            }
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "City Already Present";
        }
    }
}