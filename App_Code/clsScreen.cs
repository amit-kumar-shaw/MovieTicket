using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsScreen
/// </summary>
public class clsScreen
{
	public clsScreen()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int CinemaxID   
    {
        get;
        set;
    }
    public int ID
    {
        get;
        set;
    }
    public String Name
    {
        get;
        set;
    }
    public int Total
    {
        get;
        set;
    }
    public int Platinum
    {
        get;
        set;
    }
    public int Gold
    {
        get;
        set;
    }
    public int Silver
    {
        get;
        set;
    }
    public int AddScreen()
    {
        String query = "insert into tblScreen (cinemaxid,name,totalseats,platinum,gold,silver) values(" + CinemaxID +",'"+Name+ "',"+Total+"," + Platinum + "," + Gold + "," + Silver + ")";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteScreen()
    {
        String query = "delete from tblScreen where screenid=" + ID + " and cinemaxid="+CinemaxID+"";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateScreen()
    {
        String query = "update tblScreen set name='"+Name+"', totalseats='"+Total+"', platinum=" + Platinum + ", gold=" + Gold + ", silver=" + Silver + " where screenid=" + ID + " and cinemaxid=" + CinemaxID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getScreen()
    {
        DataSet ds = null;
        String query = "select * from tblScreen where screenid=" + ID + " and cinemaxid=" + CinemaxID + "";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getAllScreen()
    {
        DataSet ds = null;
        String query = "select * from tblScreen";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getScreenInCinemax()
    {
        DataSet ds = null;
        String query = "select * from tblScreen where cinemaxid=" + CinemaxID + "";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkScreen()
    {
        String query = "select * from tblScreen where name='" + Name + "' and cinemaxid=" + CinemaxID + "";
        return clsdb.CheckData(query);
    }
    public clsScreen getID()
    {

        DataSet ds = null;
        String query = "select * from tblScreen where name='" + Name + "'";
        ds = clsdb.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                this.ID = int.Parse(dr["screenid"].ToString());
            }
        }
        else
        {
            return null;
        }
        return this;
    }
}