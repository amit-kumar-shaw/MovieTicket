using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("UserLogin.aspx");
        }
        else
        {
            clsUser obj = (clsUser)Session["user"];
            lblusername.Text = obj.Name;
            lblmovie.Text = (String)Session["movie"];
            lblcity.Text = (String)Session["city"];
            lblcinemax.Text = (String)Session["cinemax"];
            lbldate.Text = (String)Session["date"];
            lbltime.Text = (String)Session["time"];
            lblseats.Text = ((int)Session["seats"]).ToString();
            lblprice.Text = ((float)Session["price"]).ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        clsbooking bookobj = new clsbooking();
        clsShowtime showobj = new clsShowtime();
        showobj.City = (String)Session["city"];
        clsUser obj = (clsUser)Session["user"];
        bookobj.Username = obj.Username;
        bookobj.Movie = (String)Session["movie"];
        showobj.Movie= (String)Session["movie"];
        bookobj.Cinemax = (String)Session["cinemax"];
        showobj.Cinemax = (String)Session["cinemax"];
        bookobj.Day = (String)Session["date"];
        bookobj.Showtime = (String)Session["time"];
        showobj.ShowTime = (String)Session["time"];
        bookobj.Screen = showobj.getScreenname();
        bookobj.TotalTickets = (int)Session["seats"];
        bookobj.TotalPrice = (float)Session["price"];
        bookobj.AddBooking();
        bookobj.ID = bookobj.getID();
        Session["bookdetails"] = bookobj;
        ArrayList seatid = (ArrayList)Session["seatid"];
        clsseats seatsobj = null;
        foreach (String id in seatid)
        {
            seatsobj = new clsseats();
            seatsobj.BookID = bookobj.ID;
            seatsobj.SeatID = id;
            seatsobj.AddSeats();
        }
        Response.Redirect("Ticket.aspx");
    }
}