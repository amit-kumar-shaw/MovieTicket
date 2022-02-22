using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsTimeslot
/// </summary>
public class clsTimeslot
{
	public clsTimeslot()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddTimeslot()
    {
        String query = "insert into tblTimeslot values(" + CinemaxID + "," + ScreenID + ",'"+Timeslot+"')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteTimeslot()
    {
        String query = "delete from tblTimeslot  where cinemaxid=" + CinemaxID + " and screenid="+ScreenID+"";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateTimeslot()
    {
        String query = "update tblTimeslot set timeslot='" + Timeslot + "'  where cinemaxid=" + CinemaxID + " and screenid=" + ScreenID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getAllTimeslot()
    {
        DataSet ds = null;
        String query = "select * from tblTimeslot";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getTimeslot()
    {
        DataSet ds = null;
        String query = "select * from tblTimeslot where cinemaxid=" + CinemaxID + " and screenid=" + ScreenID + "";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkTimeslot()
    {
        String query = "select * from tblTimeSlot where cinemaxid=" + CinemaxID + " and screenid=" + ScreenID + " and timeslot='"+Timeslot+"'";
        return clsdb.CheckData(query);

    }

    public int CinemaxID { get; set; }

    public int ScreenID { get; set; }

    public String Timeslot { get; set; }
}