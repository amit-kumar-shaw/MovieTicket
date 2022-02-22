using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ManageShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool pagetype = this.IsPostBack;//bool true/false
        //if (pagetype == false)
        //{
        //  BindGridview();
        //}
        if (this.IsPostBack == false)
        {
            BindGridview();
        }
    }
    private void BindGridview()
    {
        clsShowtime memobj = new clsShowtime();
        DataSet ds = memobj.getAllShow();
        DataTable dt = ds.Tables[0];
        //GridView1.DataSource = ds.Tables[0];
        GridView1.DataSource = dt;
        // DataBind()-to show the data
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //get the row to edit
        int rowedit = e.NewEditIndex;
        //set the row of the gridview to edit mode
        GridView1.EditIndex = rowedit;
        //bind the gris view again
        BindGridview();

    }
    protected void GridView1_SelctedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //get the row index to update
        int rowindex = e.RowIndex;
        //get the values of the row columns
        try
        {
            String tcity = GridView1.Rows[rowindex].Cells[1].Text;
            String tcinemaxid = GridView1.Rows[rowindex].Cells[2].Text;
            String tscreenid = GridView1.Rows[rowindex].Cells[3].Text;
            TextBox tmovieid = (TextBox)GridView1.Rows[rowindex].Cells[4].Controls[0];
            TextBox tshowtime = (TextBox)GridView1.Rows[rowindex].Cells[5].Controls[0];
            clsShowtime showtimeobj = new clsShowtime();
            showtimeobj.Movie = (tmovieid.Text);
            showtimeobj.ShowTime = tshowtime.Text;
            showtimeobj.City = (tcity);
            showtimeobj.Cinemax = (tcinemaxid);
            showtimeobj.Screen = (tscreenid);
            int result = showtimeobj.UpdateShow();
            if (result >= 1)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Record is Updated successfully";

                //refresh the gridview
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
        //get the row index to update
        int rowindex = e.RowIndex;
        //get the values of the row columns
        try
        {
            String tcity = GridView1.Rows[rowindex].Cells[1].Text;
            String tcinemaxid = GridView1.Rows[rowindex].Cells[2].Text;
            String tscreenid = GridView1.Rows[rowindex].Cells[3].Text;
            String tmovieid = GridView1.Rows[rowindex].Cells[4].Text;
            String tshowtime = GridView1.Rows[rowindex].Cells[5].Text;
            clsShowtime showtimeobj = new clsShowtime();
            showtimeobj.Movie = tmovieid;
            showtimeobj.ShowTime = tshowtime;
            showtimeobj.City = (tcity);
            showtimeobj.Cinemax = (tcinemaxid);
            showtimeobj.Screen = (tscreenid);
            int result = showtimeobj.DeleteShow();
            if (result >= 1)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Record is Deleted successfully";

                //refresh the gridview
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
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblcinemax = (Label)e.Row.FindControl("lblcinemax");
            Label lblscreen = (Label)e.Row.FindControl("lblscreenid");
            
            CheckBoxList CheckBoxList1 = (CheckBoxList)e.Row.FindControl("CheckBoxList1");
            if (CheckBoxList1 != null)
            {
                clsCinemax objcinemax = new clsCinemax();
                clsScreen objscreen = new clsScreen();
                objcinemax.Name=lblcinemax.Text;
                objscreen.Name=lblscreen.Text;
                objscreen=objscreen.getID();
                objcinemax=objcinemax.getID();
                populateShowTime(objcinemax.ID, objscreen.ID, CheckBoxList1);
            }
        }
    }

    private void populateShowTime(int cinemaxid, int screenid, CheckBoxList CheckBoxList1)
    {
       
        clsTimeslot obj = new clsTimeslot();
        obj.CinemaxID = (cinemaxid );
        obj.ScreenID = (screenid );
        DataSet ds = obj.getTimeslot();
        DataTable dt = ds.Tables[0];
        CheckBoxList1.DataSource = dt;
        CheckBoxList1.DataTextField = "timeslot";
        CheckBoxList1.DataValueField = "timeslot";
        CheckBoxList1.DataBind();
    }
}