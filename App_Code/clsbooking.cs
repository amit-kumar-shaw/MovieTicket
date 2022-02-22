using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsbooking
/// </summary>
public class clsbooking
{
	public clsbooking()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String Movie
    {
        get;
        set;
    }
    public String Cinemax
    {
        get;
        set;
    }
    public String Screen
    {
        get;
        set;
    }
    public String Day
    {
        get;
        set;
    }
    public String Showtime
    {
        get;
        set;
    }
    public String Username
    {
        get;
        set;
    }
    public int TotalTickets
    {
        get;
        set;
    }
    public float TotalPrice
    {
        get;
        set;
    }
    public int ID
    {
        get;
        set;
    }
    public int AddBooking()
    {
        String query = "insert into tblbooking (movie,username,cinemax,screen,date,showtime,totaltickets,totalprice) values('" + Movie +"','"+Username+ "','"+Cinemax+"','"+Screen+"','"+Day+"','"+Showtime+"',"+TotalTickets+","+TotalPrice+")";
        return clsdb.InsertUpdateDelete(query);
    }
    
    public DataSet getAllBooking()
    {
        DataSet ds = null;
        String query = "select * from tblbooking";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getAllID()
    {
        DataSet ds = null;
        String query = "select * from tblbooking where movie='" + Movie + "' and cinemax='" + Cinemax + "' and screen='" + Screen + "' and date='" + Day + "' and showtime='" + Showtime + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public int getID()
    {
        DataSet ds = null;
        int s=0;
        String query = "select * from tblbooking where movie='" + Movie + "' and username='" + Username + "' and cinemax='" + Cinemax + "' and screen='" + Screen + "' and date='" + Day + "' and showtime='" + Showtime + "' and totaltickets=" + TotalTickets + " and totalprice=" + TotalPrice + "";
        ds = clsdb.getData(query);
        DataTable dt = ds.Tables[0];
        foreach (DataRow dr in dt.Rows)
        {
            s =int.Parse( dr[0].ToString());
        }
        return s;
    }
    //public Boolean checkCity()
    //{
    //    String query = "select * from tblCity where name='" + Name + "'";
    //    return clsdb.CheckData(query);

    //}
}