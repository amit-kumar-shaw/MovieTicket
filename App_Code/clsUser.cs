using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsUser
/// </summary>
public class clsUser
{
	public clsUser()
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


    public int AddUser()
    {
        String query = "insert into tblUser values('" + Name + "','" + Mobile + "','"+Emailid+"','"+Username+"','"+Password+"')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateUser()
    {
        String query = "update tblUser set name='"+Name+"', mobileno='"+Mobile+"', emailid='"+Emailid+"' where Username='" + Username + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdatePassword()
    {
        String query = "update tblUser set password='" + Password + "' where Username='" + Username + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getAllUser()
    {
        DataSet ds = null;
        String query = "select * from tblUser";
        ds = clsdb.getData(query);
        return ds;
    }
    public DataSet getUser()
    {
        DataSet ds = null;
        String query = "select * from tblUser where Username='" + Username + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public Boolean checkUser()
    {
        String query = "select * from tblUser where Username='" + Username + "'";
        return clsdb.CheckData(query);



    }

    public int DeleteUser()
    {
        String query = "delete from tblUser  where Username='" + Username + "'";
        return clsdb.InsertUpdateDelete(query);
    }

    public clsUser AuthenticateMember()
    {

        DataSet ds = null;
        String query = "select * from tblUser where Username='" + Username + "' and Password='" + Password + "'";
        ds = clsdb.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //this.Name = dr["membername"].ToString();
                //this.DateOfBirth = dr["dob"].ToString();
                //this.EmailId = Emailid;
                this.Name = dr["Name"].ToString();
                this.Mobile = dr["MobileNo"].ToString();
                this.Emailid = dr["EmailId"].ToString();
                this.Username = dr["username"].ToString();
                this.Password = dr["password"].ToString();
            }
        }
        else
        {
            return null;
        }
        return this;

    }
}