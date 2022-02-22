using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddMovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsMovie obj = new clsMovie();
        obj.Name = txtname.Text;
        obj.Duration = int.Parse(txtduration.Text);
        obj.Description = txtdescription.Text;
        obj.Language = txtlanguage.Text;
        obj.ReleaseDate = ddlmonth.SelectedItem.Value + "-" + ddlday.SelectedItem.Text + "-" + ddlyear.SelectedItem.Text;
        obj.Status = rblstatus.SelectedItem.Value;
        String filename = "";
        if (filephoto.HasFile)
        {
            filename = System.IO.Path.GetFileName(filephoto.PostedFile.FileName);
            String[] arrfilename = filename.Split('.');
            filename = arrfilename[0] + DateTime.Now.Ticks.ToString() + "." + arrfilename[1]; ;
            String serverpath = Server.MapPath("movieImages\\" + filename);
            filephoto.PostedFile.SaveAs(serverpath);
        }
        obj.Photo = filename;
        if (!obj.checkMovie())
        {
            obj.AddMovie();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Movie Added Successfully";
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Movie Already Present";
        }
    }
}