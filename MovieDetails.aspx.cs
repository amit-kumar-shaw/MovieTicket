using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MovieDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            if (Request.QueryString["id"] != null)
            {
                String mid = Request.QueryString["id"].ToString();
                clsMovie obj = new clsMovie();
                obj.ID = int.Parse(mid);
                obj = obj.getMoviebyID();
                lblname.Text = obj.Name;
                lblduration.Text = obj.Duration.ToString();
                lbldescription.Text = obj.Description;
                lbllanguage.Text = obj.Language;
                lblreleasedate.Text = obj.ReleaseDate;
                imgphoto.ImageUrl = "movieImages/" + obj.Photo;
                if (obj.Status == "Upcoming")
                {
                    ImageButton1.Visible = false;
                }
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            String mid = Request.QueryString["id"].ToString();
            Response.Redirect("BookMovie.aspx?id=" + mid);
        }
    }
}