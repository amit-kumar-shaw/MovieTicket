using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Movies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (this.IsPostBack == false)
        {
            BindGridview();
        }
    }
    private void BindGridview()
    {
        clsMovie obj = new clsMovie();
        obj.Status = "Currently Running";
        DataSet ds = obj.getMoviebyStatus();
        DataTable dt = ds.Tables[0];
        DataList1.DataSource = dt;
        DataList1.DataBind();

        obj.Status = "Upcoming";
        DataSet dsu = obj.getMoviebyStatus();
        DataTable dtu = dsu.Tables[0];
        DataList2.DataSource = dtu;
        DataList2.DataBind();
    }
    protected void btnbook_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        Response.Redirect("BookMovie.aspx?id=" + img.CommandArgument);
    }
    protected void btnview_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        Response.Redirect("MovieDetails.aspx?id=" + img.CommandArgument);
        

        //
        //if (this.IsPostBack == false)
        //{
        //    if (Request.QueryString["id"] != null)
        //    {
        //        String mid = Request.QueryString["id"].ToString();
        //    }
        //}
        //
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        Response.Redirect("MovieDetails.aspx?id=" + img.CommandArgument);
    }
}