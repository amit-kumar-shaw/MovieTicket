using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsAdmin
/// </summary>
public class clsAdmin
{
	public clsAdmin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int Adminid
    {
        get;
        set;
    }
    public String Name
    {
        get;
        set;
    }

    public String Mobile
    {
        get;
        set;
    }
    public String Emailid
    {
        get;
        set;
    }
    public String Username
    {
        get;
        set;
    }
    public String Password
    {
        get;
        set;
    }


    public int AddAdmin()
    {
        String query = "insert into tblAdmin (name,mobileno,emailid,username,password) values('" + Name + "','" + Mobile + "','" + Emailid + "','" + Username + "','" + Password + "')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteAdmin()
    {
        String query = "delete from tblAdmin where Username='" + Username + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateAdmin()
    {
        String query = "update tblAdmin set name='"+Name+"', mobileno='"+Mobile+"', emailid='"+Emailid+"' where Username='" + Username + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdatePassword()
    {
        String query = "update tblAdmin set password='" + Password + "' where Username='" + Username + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getAllAdmin()
    {
        DataSet ds = null;
        String query = "select * from tblAdmin";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getAdmin()
    {
        DataSet ds = null;
        String query = "select * from tblAdmin where Username='" + Username + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkAdmin()
    {
        String query = "select * from tblAdmin where Username='" + Username + "'";
        return clsdb.CheckData(query);
    }

    //public int DeleteUser()
    //{
    //    String query = "delete from tblUser  where Username='" + Username + "'";
    //    return clsdb.InsertUpdateDelete(query);
    //}

    public clsAdmin AuthenticateMember()
    {

        DataSet ds = null;
        String query = "select * from tblAdmin where Username='" + Username + "' and Password='" + Password + "'";
        ds = clsdb.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //this.Name = dr["membername"].ToString();
                //this.DateOfBirth = dr["dob"].ToString();
                //this.EmailId = Emailid;
                this.Adminid=int.Parse(dr["AdminId"].ToString());
                this.Name = dr["Name"].ToString();
                this.Mobile = dr["MobileNo"].ToString();
                this.Emailid = dr["EmailId"].ToString();
                this.Username = dr["username"].ToString();
            }
        }
        else
        {
            return null;
        }
        return this;

    }
}