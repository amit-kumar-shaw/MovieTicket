using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddShowtime : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            clsCity objcity = new clsCity();
            DataSet ds = objcity.getAllCity();
            DataTable dt = ds.Tables[0];
            ddlcity.DataSource = dt;
            ddlcity.DataTextField = "name";
            ddlcity.DataValueField = "cityid";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, new ListItem("Select City", String.Empty));

            clsMovie objmovie = new clsMovie();
            DataSet dsm = objmovie.getAllMovie();
            DataTable dtm = dsm.Tables[0];
            ddlmovie.DataSource = dtm;
            ddlmovie.DataTextField = "name";
            ddlmovie.DataValueField = "movieid";
            ddlmovie.DataBind();
            ddlmovie.Items.Insert(0, new ListItem("Select Movie", String.Empty));
        }
    }
    protected void btnaddshow_Click(object sender, EventArgs e)
    {
        clsShowtime obj = new clsShowtime();
        obj.City = (ddlcity.SelectedItem.Text);
        obj.Cinemax = (ddlcinemax.SelectedItem.Text);
        obj.Screen = (ddlscreen.SelectedItem.Text);
        obj.Movie = (ddlmovie.SelectedItem.Text);
        obj.ShowTime = cbltime.SelectedItem.Value;
        if (!obj.checkShow())
        {
            obj.AddShow();
            clsMovie objmovie = new clsMovie();
            objmovie.Name = ddlmovie.SelectedItem.Text;
            objmovie.Status = "Currently Running";
            objmovie.UpdateStatusByName();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Showtime Added Successfully";
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Showtime Already Present";
        }
    }
    protected void ddlcinemax_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlscreen.Items.Clear();
        clsScreen obj = new clsScreen();
        obj.CinemaxID = int.Parse(ddlcinemax.SelectedItem.Value);
        DataSet ds = obj.getScreenInCinemax();
        DataTable dt = ds.Tables[0];
        ddlscreen.DataSource = dt;
        ddlscreen.DataTextField = "name";
        ddlscreen.DataValueField = "screenid";
        ddlscreen.DataBind();
        ddlscreen.Items.Insert(0, new ListItem("Select Screen", String.Empty));
    }
    protected void ddlscreen_SelectedIndexChanged(object sender, EventArgs e)
    {
        cbltime.Items.Clear();
        cbltime.DataBind();
        clsTimeslot obj = new clsTimeslot();
        obj.CinemaxID = int.Parse(ddlcinemax.SelectedItem.Value);
        obj.ScreenID = int.Parse(ddlscreen.SelectedItem.Value);
        DataSet ds = obj.getTimeslot();
        DataTable dt = ds.Tables[0];
        cbltime.DataSource = dt;
        cbltime.DataTextField = "timeslot";
        cbltime.DataValueField = "timeslot";
        cbltime.DataBind();
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcinemax.Items.Clear();
        clsCinemax obj = new clsCinemax();
        obj.CityID = int.Parse(ddlcity.SelectedItem.Value);
        DataSet ds = obj.getCinemaxInCity();
        DataTable dt = ds.Tables[0];
        ddlcinemax.DataSource = dt;
        ddlcinemax.DataTextField = "name";
        ddlcinemax.DataValueField = "cinemaxid";
        ddlcinemax.DataBind();
        ddlcinemax.Items.Insert(0, new ListItem("Select Cinemax", String.Empty));
    }
    protected void ddlmovie_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}