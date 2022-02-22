using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddTimeslot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            clsCinemax obj = new clsCinemax();
            DataSet ds = obj.getAllCinemax();
            DataTable dt = ds.Tables[0];
            ddlcinemaxid.DataSource = dt;
            ddlcinemaxid.DataTextField = "name";
            ddlcinemaxid.DataValueField = "cinemaxid";
            ddlcinemaxid.DataBind();
            ddlcinemaxid.Items.Insert(0, new ListItem("Select Cinemax", String.Empty));
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsTimeslot obj = new clsTimeslot();
        obj.CinemaxID = int.Parse(ddlcinemaxid.SelectedItem.Value);
        obj.ScreenID = int.Parse(ddlscreenid.SelectedItem.Value);
        obj.Timeslot = txttimeslot.Text;
        if (!obj.checkTimeslot())
        {
            obj.AddTimeslot();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Time Slot Added Successfully";
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Time Slot Already Present";
        }
    }
    protected void ddlcinemaxid_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsScreen obj = new clsScreen();
        obj.CinemaxID = int.Parse(ddlcinemaxid.SelectedItem.Value);
        DataSet ds = obj.getScreenInCinemax();
        DataTable dt = ds.Tables[0];
        ddlscreenid.DataSource = dt;
        ddlscreenid.DataTextField = "name";
        ddlscreenid.DataValueField = "screenid";
        ddlscreenid.DataBind();
        ddlscreenid.Items.Insert(0, new ListItem("Select Screen", String.Empty));
    }
}