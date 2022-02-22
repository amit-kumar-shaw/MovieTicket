using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ManageScreen : System.Web.UI.Page
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
        clsScreen objcity = new clsScreen();
        DataSet ds = objcity.getAllScreen();
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
            TextBox name = (TextBox)GridView1.Rows[rowindex].Cells[3].Controls[0];
            TextBox total = (TextBox)GridView1.Rows[rowindex].Cells[4].Controls[0];
            TextBox platinum = (TextBox)GridView1.Rows[rowindex].Cells[5].Controls[0];
            TextBox gold = (TextBox)GridView1.Rows[rowindex].Cells[6].Controls[0];
            TextBox silver = (TextBox)GridView1.Rows[rowindex].Cells[7].Controls[0];
            String id = GridView1.Rows[rowindex].Cells[1].Text;
            String cinemaxid = GridView1.Rows[rowindex].Cells[2].Text;
            clsScreen obj = new clsScreen();
            obj.ID = int.Parse(id);
            obj.CinemaxID = int.Parse(cinemaxid);
            obj.Name = name.Text;
            obj.Total = int.Parse(total.Text);
            obj.Platinum = int.Parse(platinum.Text);
            obj.Gold = int.Parse(gold.Text);
            obj.Silver = int.Parse(silver.Text);
            int result = obj.UpdateScreen();
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
            String cinemaxid = GridView1.Rows[rowindex].Cells[2].Text;
            clsScreen obj = new clsScreen();
            obj.ID = int.Parse(id);
            obj.CinemaxID = int.Parse(cinemaxid);
            int result = obj.DeleteScreen();
            if (result >= 1)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Record is Deleted successfully";
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