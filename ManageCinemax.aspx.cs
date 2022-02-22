using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ManageCinemax : System.Web.UI.Page
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
        clsCinemax objcinemax = new clsCinemax();
        DataSet ds = objcinemax.getAllCinemax();
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
            TextBox tname = (TextBox)GridView1.Rows[rowindex].FindControl("txtname");
            TextBox address = (TextBox)GridView1.Rows[rowindex].FindControl("txtaddress");
            TextBox phn = (TextBox)GridView1.Rows[rowindex].FindControl("txtphn");
            TextBox emailid = (TextBox)GridView1.Rows[rowindex].FindControl("txtemailid");
            TextBox pincode = (TextBox)GridView1.Rows[rowindex].FindControl("txtpincode");
            Label lbloldfilename = (Label)GridView1.Rows[rowindex].FindControl("lblfilename");
            Label id = (Label)GridView1.Rows[rowindex].FindControl("lblid");
            Label cityid = (Label)GridView1.Rows[rowindex].FindControl("lblcityid");
            if (gfileupload.HasFile)
            {
                lbloldfilename.Text = System.IO.Path.GetFileName(gfileupload.PostedFile.FileName);
                String[] arrfile = lbloldfilename.Text.Split('.');
                lbloldfilename.Text = arrfile[0] + DateTime.Now.Ticks.ToString() + "." + arrfile[1];
                String serverpath = Server.MapPath("cinemaxImages\\" + lbloldfilename.Text);
                gfileupload.PostedFile.SaveAs(serverpath);
            }
            clsCinemax obj = new clsCinemax();
            obj.Photo = lbloldfilename.Text;
            obj.Address = address.Text;
            obj.EmailID = emailid.Text;
            obj.Name = tname.Text;
            obj.PhoneNo = phn.Text;
            obj.Pincode = pincode.Text;
            obj.ID = int.Parse(id.Text);
            obj.CityID = int.Parse(cityid.Text);
            int result = obj.UpdateCinemax();
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
            Label id = (Label)GridView1.Rows[rowindex].FindControl("lblid");
            Label cityid = (Label)GridView1.Rows[rowindex].FindControl("lblcityid");
            clsCinemax obj = new clsCinemax();
            obj.ID = int.Parse(id.Text);
            obj.CityID = int.Parse(cityid.Text);
            int result = obj.DeleteCinemax();
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
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridview();
    }
}