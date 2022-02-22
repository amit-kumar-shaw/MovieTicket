using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class Selectseats : System.Web.UI.Page
{
    int seats;
    float price;
    ArrayList seatid = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            int bookid=0;
            String seat = null;
            ImageButton img1 =null;
            clsShowtime showobj = new clsShowtime();
            showobj.City = (String)Session["city"];
            clsbooking objbook = new clsbooking();
            objbook.Movie = (String)Session["movie"];
            objbook.Movie = (String)Session["movie"];
            showobj.Movie = (String)Session["movie"];
            objbook.Cinemax = (String)Session["cinemax"];
            showobj.Cinemax = (String)Session["cinemax"];
            objbook.Day = (String)Session["date"];
            objbook.Showtime = (String)Session["time"];
            showobj.ShowTime = (String)Session["time"];
            objbook.Screen = showobj.getScreenname();

            clsseats objseats = new clsseats();
            DataSet ds = objbook.getAllID();
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                bookid = int.Parse(dr[0].ToString());
                objseats.BookID = bookid;
                DataSet dss=objseats.getSeatID();
                DataTable dts = dss.Tables[0];
                foreach (DataRow drs in dts.Rows)
                {
                    seat = drs[0].ToString();
                    //img1 = new ImageButton();
                   // img1.ID = seat;
                    String imgctrl = seat;
                    //int count = this.tbls.Controls.Count;
                     img1 = (ImageButton ) this.tbls.FindControl(imgctrl);

                    img1.ImageUrl = "chairImages\\rchair.jpg";
                    img1.Enabled = false;
                }
            }
        }
    }
    protected void s101_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img1 =(ImageButton) sender;
        if (Session["seats"] != null)
        {
            seats = (int)Session["seats"];
        }
        if (Session["price"] != null)
        {
            price = (float)Session["price"];
        }
        if (Session["seatid"] != null)
        {
            seatid = (ArrayList)Session["seatid"];
        }
        if (img1.ImageUrl.Contains("wchair.jpg"))
        {
            img1.ImageUrl = "chairImages\\cchair.jpg";
            seats++;
            Session["seats"] = seats;
            price += 100;
            Session["price"] = price;
            seatid.Add(img1.ID);
            Session["seatid"] = seatid;
        }
        else
        {
            img1.ImageUrl = "chairImages\\wchair.jpg";
            seats--;
            Session["seats"] = seats;
            price -= 100;
            Session["price"] = price;
            seatid.Remove(img1.ID);
            Session["seatid"] = seatid;
        }
    }

    protected void g101_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img1 = (ImageButton)sender;
        if (Session["seats"] != null)
        {
            seats = (int)Session["seats"];
        }
        if (Session["price"] != null)
        {
            price = (float)Session["price"];
        }
        if (Session["seatid"] != null)
        {
            seatid = (ArrayList)Session["seatid"];
        }
        if (img1.ImageUrl.Contains("wchair.jpg"))
        {
            img1.ImageUrl = "chairImages\\cchair.jpg";
            seats++;
            Session["seats"] = seats;
            price += 120;
            Session["price"] = price;
            seatid.Add(img1.ID);
            Session["seatid"] = seatid;
        }
        else
        {
            img1.ImageUrl = "chairImages\\wchair.jpg";
            seats--;
            Session["seats"] = seats;
            price -= 120;
            Session["price"] = price;
            seatid.Remove(img1.ID);
            Session["seatid"] = seatid;
        }
    }
    protected void p101_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img1 = (ImageButton)sender;
        if (Session["seats"] != null)
        {
            seats = (int)Session["seats"];
        }
        if (Session["price"] != null)
        {
            price = (float)Session["price"];
        }
        if (Session["seatid"] != null)
        {
            seatid = (ArrayList)Session["seatid"];
        }
        if (img1.ImageUrl.Contains("wchair.jpg"))
        {
            img1.ImageUrl = "chairImages\\cchair.jpg";
            seats++;
            Session["seats"] = seats;
            price += 150;
            Session["price"] = price;
            seatid.Add(img1.ID);
            Session["seatid"] = seatid;
        }
        else
        {
            img1.ImageUrl = "chairImages\\wchair.jpg";
            seats--;
            Session["seats"] = seats;
            price -= 150;
            Session["price"] = price;
            seatid.Remove(img1.ID);
            Session["seatid"] = seatid;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Booking.aspx");
    }
}