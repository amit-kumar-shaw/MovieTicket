using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsCity
/// </summary>
public class clsCity
{
	public clsCity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String Name
    {
        get;
        set;
    }
    public int ID
    {
        get;
        set;
    }
    public int AddCity()
    {
        String query = "insert into tblCity (name) values('" + Name + "')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteCity()
    {
        String query = "delete from tblCity  where cityid=" + ID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateCity()
    {
        String query = "update tblCity set name='"+Name+"'  where cityid=" + ID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getAllCity()
    {
        DataSet ds = null;
        String query = "select * from tblCity";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getCity()
    {
        DataSet ds = null;
        String query = "select * from tblCity where cityid=" + ID + "";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkCity()
    {
        String query = "select * from tblCity where name='" + Name + "'";
        return clsdb.CheckData(query);
        
    }
}