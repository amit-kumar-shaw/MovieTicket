using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Homepage : System.Web.UI.Page
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
            ddlcity.DataValueField = "name";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0,new ListItem("Select City", String.Empty));

            ddldate.Items.Insert(1, DateTime.Today.ToString());
            ddldate.Items.Insert(2, DateTime.Today.AddDays(1).ToString());
            ddldate.Items.Insert(3, DateTime.Today.AddDays(2).ToString());
        }
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsShowtime obj = new clsShowtime();
        obj.City = ddlcity.SelectedItem.Text;
        DataSet ds = obj.getMovie();
        DataTable dt = ds.Tables[0];
        ddlmovie.DataSource = dt;
        ddlmovie.DataTextField = "movie";
        ddlmovie.DataValueField = "movie";
        ddlmovie.DataBind();
        ddlmovie.Items.Insert(0, new ListItem("Select Movie", String.Empty));
    }
    protected void ddlmovie_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsShowtime obj = new clsShowtime();
        obj.City = ddlcity.SelectedItem.Text;
        obj.Movie = ddlmovie.SelectedItem.Text;
        DataSet ds = obj.getCinemax();
        DataTable dt = ds.Tables[0];
        ddlcinemax.DataSource = dt;
        ddlcinemax.DataTextField = "cinemax";
        ddlcinemax.DataValueField = "cinemax";
        ddlcinemax.DataBind();
        ddlcinemax.Items.Insert(0, new ListItem("Select Cinemax", String.Empty));
    }
    protected void ddlcinemax_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsShowtime obj = new clsShowtime();
        obj.City = ddlcity.SelectedItem.Text;
        obj.Movie = ddlmovie.SelectedItem.Text;
        obj.Cinemax = ddlcinemax.SelectedItem.Text;
        DataSet ds = obj.getShow();
        DataTable dt = ds.Tables[0];
        ddltime.DataSource = dt;
        ddltime.DataTextField = "showtime";
        ddltime.DataValueField = "showtime";
        ddltime.DataBind();
        ddltime.Items.Insert(0, new ListItem("Select Showtime", String.Empty));
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (ddltime.SelectedItem.Text != "Select Showtime")
        {
            Session["city"] = ddlcity.SelectedItem.Value;
            Session["cinemax"] = ddlcinemax.SelectedItem.Value;
            Session["movie"] = ddlmovie.SelectedItem.Value;
            Session["date"] = ddldate.SelectedItem.Value;
            Session["time"] = ddltime.SelectedItem.Value;
            Response.Redirect("Selectseats.aspx");
        }
    }
}