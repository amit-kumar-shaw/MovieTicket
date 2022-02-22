using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ManageMovie : System.Web.UI.Page
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
        clsMovie objmovie = new clsMovie();
        DataSet ds = objmovie.getAllMovie();
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView1.EditIndex = rowedit;
        BindGridview();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        try
        {
            FileUpload gfileupload = (FileUpload)GridView1.Rows[rowindex].FindControl("FileUpload1");
            TextBox name = (TextBox)GridView1.Rows[rowindex].Cells[3].Controls[0];
            String id = GridView1.Rows[rowindex].Cells[2].Text;
            TextBox txtduration = (TextBox)GridView1.Rows[rowindex].Cells[4].Controls[0];
            TextBox txtdescription = (TextBox)GridView1.Rows[rowindex].Cells[5].Controls[0];
            TextBox txtlanguage = (TextBox)GridView1.Rows[rowindex].Cells[6].Controls[0];
            TextBox tdate = (TextBox)GridView1.Rows[rowindex].Cells[7].Controls[0];
            TextBox status = (TextBox)GridView1.Rows[rowindex].Cells[8].Controls[0];
            Label lbloldfilename = (Label)GridView1.Rows[rowindex].FindControl("lbloldfilename");
            if (gfileupload.HasFile)
            {
                lbloldfilename.Text = System.IO.Path.GetFileName(gfileupload.PostedFile.FileName);
                String[] arrfile = lbloldfilename.Text.Split('.');
                lbloldfilename.Text = arrfile[0] + DateTime.Now.Ticks.ToString() + "." + arrfile[1];
                String serverpath = Server.MapPath("movieImages\\" + lbloldfilename.Text);
                gfileupload.PostedFile.SaveAs(serverpath);
            }
            clsMovie obj = new clsMovie();
            obj.Photo = lbloldfilename.Text;
            obj.ID = int.Parse(id);
            obj.Name = name.Text;
            obj.Duration = int.Parse(txtduration.Text);
            obj.Description = txtdescription.Text;
            obj.Language = txtlanguage.Text;
            obj.ReleaseDate = tdate.Text;
            obj.Status = status.Text;
            int result = obj.UpdateMovie();
            if (result >= 1)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Record is Updated successfully";
                GridView1.EditIndex = -1;
                BindGridview();
            }
        }
        catch (Exception err)
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = err.Message;

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        try
        {
            String id = GridView1.Rows[rowindex].Cells[1].Text;
            clsMovie objmovie = new clsMovie();
            objmovie.ID = int.Parse(id);
            int result = objmovie.DeleteMovie();
            if (result >= 1)
            {
                lblmsg.Text = "Record is Deleted successfully";
                GridView1.EditIndex = -1;
                BindGridview();
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageingex = e.NewPageIndex;
        GridView1.PageIndex = pageingex;
        BindGridview();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridview();
    }
}