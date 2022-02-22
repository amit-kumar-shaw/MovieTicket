using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ManageTimeslot : System.Web.UI.Page
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
        clsTimeslot obj = new clsTimeslot();
        DataSet ds = obj.getAllTimeslot();
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageingex = e.NewPageIndex;
        GridView1.PageIndex = pageingex;
        BindGridview();
    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView1.EditIndex = rowedit;
        BindGridview();
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        try
        {
            String cinemaxid = GridView1.Rows[rowindex].Cells[1].Text;
            String screenid = GridView1.Rows[rowindex].Cells[2].Text;
            clsTimeslot obj = new clsTimeslot();
            obj.CinemaxID = int.Parse(cinemaxid);
            obj.ScreenID = int.Parse(screenid);
            int result = obj.DeleteTimeslot();
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
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        try
        {
            TextBox time = (TextBox)GridView1.Rows[rowindex].Cells[3].Controls[0];
            String cinemaxid = GridView1.Rows[rowindex].Cells[1].Text;
            String screenid = GridView1.Rows[rowindex].Cells[2].Text;
            clsTimeslot obj = new clsTimeslot();
            obj.CinemaxID = int.Parse(cinemaxid);
            obj.ScreenID = int.Parse(screenid);
            obj.Timeslot = time.Text;
            int result = obj.UpdateTimeslot();
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
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridview();
    }
}