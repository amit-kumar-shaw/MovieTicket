using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsCinemax
/// </summary>
public class clsCinemax
{
	public clsCinemax()
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
    public int CityID
    {
        get;
        set;
    }
    public String Address
    {
        get;
        set;
    }
    public int ID
    {
        get;
        set;
    }
    public String PhoneNo
    {
        get;
        set;
    }
    public String EmailID
    {
        get;
        set;
    }
    public String Photo
    {
        get;
        set;
    }
    public String Pincode
    {
        get;
        set;
    }
    public int AddCinemax()
    {
        String query = "insert into tblCinemax (cityid,name,address,phoneno,emailid,photo,pincode) values(" + CityID + ",'"+Name+"','" + Address + "','" + PhoneNo + "','"+EmailID+"','"+Photo+"','"+Pincode+"')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteCinemax()
    {
        String query = "delete from tblCinemax  where cinemaxid=" + ID + " and cityid="+CityID+"";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateCinemax()
    {
        String query = "update tblCinemax set name='" + Name + "', address='" + Address + "', phoneno='" + PhoneNo + "', emailid='" + EmailID + "',photo='" + Photo + "', pincode='" + Pincode + "' where cinemaxid=" + ID + " and cityid=" + CityID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getAllCinemax()
    {
        DataSet ds = null;
        String query = "select * from tblCinemax";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getCinemax()
    {
        DataSet ds = null;
        String query = "select * from tblCinemax where cinemaxid=" + ID + " and cityid=" + CityID + "";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getCinemaxInCity()
    {
        DataSet ds = null;
        String query = "select * from tblCinemax where cityid=" + CityID + "";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkCinemax()
    {
        String query = "select * from tblCinemax where name='" + Name + "' and cityid=" + CityID + "";
        return clsdb.CheckData(query);
    }
    public clsCinemax getID()
    {

        DataSet ds = null;
        String query = "select * from tblCinemax where name='" + Name + "'";
        ds = clsdb.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                this.ID = int.Parse(dr["cinemaxid"].ToString());
            }
        }
        else
        {
            return null;
        }
        return this;
    }
}