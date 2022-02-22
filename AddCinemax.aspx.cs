using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddCinemax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            clsCity objcity = new clsCity();
            DataSet ds = objcity.getAllCity();
            DataTable dt = ds.Tables[0];
            ddlcityid.DataSource = dt;
            ddlcityid.DataTextField = "name";
            ddlcityid.DataValueField = "cityid";
            ddlcityid.DataBind();
            ddlcityid.Items.Insert(0, new ListItem("Select City", String.Empty));
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsCinemax obj = new clsCinemax();
        obj.CityID = int.Parse(ddlcityid.SelectedItem.Value);
        obj.Name = txtname.Text;
        obj.Address = txtaddress.Text;
        obj.PhoneNo = txtphn.Text;
        obj.EmailID = txtemailid.Text;
        obj.Pincode = txtpincode.Text;
        String filename = "";
        if (filephoto.HasFile)
        {
            filename = System.IO.Path.GetFileName(filephoto.PostedFile.FileName);
            String[] arrfilename = filename.Split('.');
            filename = arrfilename[0] + DateTime.Now.Ticks.ToString() + "." + arrfilename[1]; ;
            String serverpath = Server.MapPath("cinemaxImages\\" + filename);
            filephoto.PostedFile.SaveAs(serverpath);
        }
        obj.Photo = filename;
        if (!obj.checkCinemax())
        {
            obj.AddCinemax();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Cinemax Added Successfully";
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Cinemax Already Present";
        }
    }
}