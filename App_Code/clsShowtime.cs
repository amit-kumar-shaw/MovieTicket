using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsShowtime
/// </summary>
public class clsShowtime
{
	public clsShowtime()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String City
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
    public String Movie
    {
        get;
        set;
    }
    public String ShowTime
    {
        get;
        set;
    }
    public int AddShow()
    {
        String query = "insert into tblShowtime values('"+City+"','" + Cinemax + "','" + Screen + "','" + Movie + "','" + ShowTime + "')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteShow()
    {
        String query = "delete from tblShowtime where city='" + City + "' and cinemax='" + Cinemax + "' and screen='" + Screen + "' and movie='" + Movie + "' and showtime='" + ShowTime + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateShow()
    {
        String query = "update tblShowtime set showtime='" + ShowTime + "', movie='" + Movie + "' where city='" + City + "' and cinemax='" + Cinemax + "' and screen='" + Screen + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getShow()
    {
        DataSet ds = null;
        String query = "select distinct showtime from tblShowtime where city='" + City + "' and cinemax='" + Cinemax + "' and movie='" + Movie + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getAllShow()
    {
        DataSet ds = null;
        String query = "select * from tblShowtime";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkShow()
    {
        String query = "select * from tblShowtime where city='" + City + "' and cinemax='" + Cinemax + "' and screen='" + Screen + "' and movie='" + Movie + "' and showtime='"+ShowTime+"'";
        return clsdb.CheckData(query);
    }
    public DataSet getMovie()
    {
        DataSet ds = null;
        String query = "select distinct movie from tblShowtime where city='" + City + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getCity()
    {
        DataSet ds = null;
        String query = "select distinct city from tblShowtime where movie='" + Movie + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getCinemax()
    {
        DataSet ds = null;
        String query = "select distinct cinemax from tblShowtime where movie='" + Movie + "' and city='" + City + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getScreen()
    {
        DataSet ds = null;
        String query = "select distinct screen from tblShowtime where movie='" + Movie + "' and city='" + City + "' and cinemax='"+Cinemax+"'";
        ds = clsdb.getData(query);
        return ds;
    }
    public String getScreenname()
    {
        String s=null;
        DataSet ds = null;
        String query = "select distinct screen from tblShowtime where movie='" + Movie + "' and city='" + City + "' and cinemax='" + Cinemax + "' and showtime='"+ShowTime+"'";
        ds = clsdb.getData(query);
        DataTable dt = ds.Tables[0];
        foreach (DataRow dr in dt.Rows)
        {
            s = dr[0].ToString();
        }
        return s;
    }
}