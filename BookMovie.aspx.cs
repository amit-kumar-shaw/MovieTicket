using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BookMovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            if (Request.QueryString["id"] != null)
            {
                String mid = Request.QueryString["id"].ToString();
                clsMovie objmovie = new clsMovie();
                objmovie.ID = int.Parse(mid);
                objmovie = objmovie.getMoviebyID();
                lblmovie.Text = objmovie.Name;

                clsShowtime obj = new clsShowtime();
                obj.Movie = objmovie.Name;
                DataSet ds = obj.getCity();
                DataTable dt = ds.Tables[0];
                ddlcity.DataSource = dt;
                ddlcity.DataTextField = "city";
                ddlcity.DataValueField = "city";
                ddlcity.DataBind();
                ddlcity.Items.Insert(0, new ListItem("Select City", String.Empty));

                ddldate.Items.Insert(1, DateTime.Today.ToString());
                ddldate.Items.Insert(2, DateTime.Today.AddDays(1).ToString());
                ddldate.Items.Insert(3, DateTime.Today.AddDays(2).ToString());
            }
        }
    }
    protected void ddlcinemax_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsShowtime obj = new clsShowtime();
        obj.City = ddlcity.SelectedItem.Text;
        obj.Movie = lblmovie.Text;
        obj.Cinemax = ddlcinemax.SelectedItem.Text;
        DataSet ds = obj.getShow();
        DataTable dt = ds.Tables[0];
        ddltime.DataSource = dt;
        ddltime.DataTextField = "showtime";
        ddltime.DataValueField = "showtime";
        ddltime.DataBind();
        ddltime.Items.Insert(0, new ListItem("Select Showtime", String.Empty));
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsShowtime obj = new clsShowtime();
        obj.City = ddlcity.SelectedItem.Text;
        obj.Movie = lblmovie.Text;
        DataSet ds = obj.getCinemax();
        DataTable dt = ds.Tables[0];
        ddlcinemax.DataSource = dt;
        ddlcinemax.DataTextField = "cinemax";
        ddlcinemax.DataValueField = "cinemax";
        ddlcinemax.DataBind();
        ddlcinemax.Items.Insert(0, new ListItem("Select Cinemax", String.Empty));
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (ddltime.SelectedItem.Value != "Select")
        {
            Session["city"] = ddlcity.SelectedItem.Value;
            Session["cinemax"] = ddlcinemax.SelectedItem.Value;
            Session["movie"] = lblmovie.Text;
            Session["date"] = ddldate.SelectedItem.Value;
            Session["time"] = ddltime.SelectedItem.Value;
            Response.Redirect("Selectseats.aspx");
        }
    }
}