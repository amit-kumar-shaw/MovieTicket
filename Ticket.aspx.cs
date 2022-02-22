using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList seatid = (ArrayList)Session["seatid"];
        clsbooking bookobj = (clsbooking)Session["bookdetails"];
        lblid.Text = bookobj.ID.ToString();
        lblcinemax.Text = bookobj.Cinemax;
        lblmovie.Text = bookobj.Movie;
        lbldate.Text = bookobj.Day;
        lbltime.Text = bookobj.Showtime;
        lbltotalseat.Text = bookobj.TotalTickets.ToString();
        lblprice.Text = bookobj.TotalPrice.ToString();
        foreach (String id in seatid)
        {
            lblseatno.Text = lblseatno.Text + "   " + id;
        }
        Session["seats"] = null;
        Session["price"] = null;
    }
}