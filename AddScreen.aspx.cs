using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddScreen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            clsCinemax objcity = new clsCinemax();
            DataSet ds = objcity.getAllCinemax();
            DataTable dt = ds.Tables[0];
            ddlcinemax.DataSource = dt;
            ddlcinemax.DataTextField = "name";
            ddlcinemax.DataValueField = "cinemaxid";
            ddlcinemax.DataBind();
            ddlcinemax.Items.Insert(0, new ListItem("Select Cinemax", String.Empty));
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsScreen obj = new clsScreen();
        obj.CinemaxID = int.Parse(ddlcinemax.SelectedItem.Value);
        obj.Name = txtname.Text;
        obj.Total = int.Parse(txttotal.Text);
        obj.Platinum = int.Parse(txtplatinum.Text);
        obj.Gold = int.Parse(txtgold.Text);
        obj.Silver = int.Parse(txtsilver.Text);
        if (!obj.checkScreen())
        {
            obj.AddScreen();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Screen Added Successfully";
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Screen Already Present";
        }
    }
}