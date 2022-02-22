using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsseats
/// </summary>
public class clsseats
{
	public clsseats()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String SeatID
    {
        get;
        set;
    }
    public int BookID
    {
        get;
        set;
    }
    public int AddSeats()
    {
        String query = "insert into tblbookseat values(" + BookID + ",'"+SeatID+"')";
        return clsdb.InsertUpdateDelete(query);
    }
    
    public DataSet getAllSeats()
    {
        DataSet ds = null;
        String query = "select * from tblbookseat";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getSeatID()
    {
        DataSet ds = null;
        String query = "select seatno from tblbookseat where bookid="+BookID+"";
        ds = clsdb.getData(query);
        return ds;
    }
    //public DataSet getCity()
    //{
    //    DataSet ds = null;
    //    String query = "select * from tblCity where cityid=" + ID + "";
    //    ds = clsdb.getData(query);
    //    return ds;
    //}
    //public Boolean checkCity()
    //{
    //    String query = "select * from tblCity where name='" + Name + "'";
    //    return clsdb.CheckData(query);

    //}
}