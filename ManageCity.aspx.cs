using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ManageCity : System.Web.UI.Page
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
        clsCity objcity = new clsCity();
        DataSet ds = objcity.getAllCity();
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        try
        {
            TextBox city = (TextBox)GridView1.Rows[rowindex].Cells[2].Controls[0];
            String id = GridView1.Rows[rowindex].Cells[1].Text;
            clsCity objcity = new clsCity();
            objcity.ID = int.Parse(id);
            objcity.Name = city.Text;
            int result = objcity.UpdateCity();
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
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView1.EditIndex = rowedit;
        BindGridview();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        try
        {
            String id = GridView1.Rows[rowindex].Cells[1].Text;
            clsCity objcity = new clsCity();
            objcity.ID = int.Parse(id);
            int result = objcity.DeleteCity();
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