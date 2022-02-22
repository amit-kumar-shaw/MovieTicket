using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsMovie
/// </summary>
public class clsMovie
{
	public clsMovie()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddMovie()
    {
        String query = "insert into tblMovie (name,duration,description,language,releasedate,status,photo) values('" + Name + "'," + Duration + ",'" + Description + "','" + Language + "','" + ReleaseDate + "','" + Status+"','"+Photo+ "')";
        return clsdb.InsertUpdateDelete(query);
    }
    public int DeleteMovie()
    {
        String query = "delete from tblMovie  where movieid=" + ID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateMovie()
    {
        String query = "update tblMovie set name='" + Name + "', duration=" + Duration + ", description='" + Description + "', language='" + Language + "',releasedate='" + ReleaseDate + "', status='" + Status + "', photo='"+Photo+"' where movieid=" + ID + "";
        return clsdb.InsertUpdateDelete(query);
    }
    public int UpdateStatusByName()
    {
        String query = "update tblMovie set status='" + Status + "' where name='" + Name + "'";
        return clsdb.InsertUpdateDelete(query);
    }
    public DataSet getAllMovie()
    {
        DataSet ds = null;
        String query = "select * from tblMovie";
        ds = clsdb.getData(query);
        return ds;
    }

    public DataSet getMoviebyStatus()
    {
        DataSet ds = null;
        String query = "select * from tblMovie  where status='" + Status + "'";
        ds = clsdb.getData(query);
        return ds;
    }
    public clsMovie getMoviebyName()
    {

        DataSet ds = null;
        String query = "select * from tblMovie where name='" + Name + "'";
        ds = clsdb.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                this.ID = int.Parse(dr["movieid"].ToString());
                this.Name = dr["name"].ToString();
                this.Duration = int.Parse(dr["duration"].ToString());
                this.Description = dr["description"].ToString();
                this.Language = dr["language"].ToString();
                this.ReleaseDate = dr["releasedate"].ToString();
                this.Photo = dr["photo"].ToString();
                this.Status = dr["status"].ToString();
            }
        }
        else
        {
            return null;
        }
        return this;
    }
    public clsMovie getMoviebyID()
    {

        DataSet ds = null;
        String query = "select * from tblMovie where movieid='" + ID + "'";
        ds = clsdb.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                this.ID = int.Parse(dr["movieid"].ToString());
                this.Name = dr["name"].ToString();
                this.Duration = int.Parse(dr["duration"].ToString());
                this.Description = dr["description"].ToString();
                this.Language = dr["language"].ToString();
                this.ReleaseDate = dr["releasedate"].ToString();
                this.Photo = dr["photo"].ToString();
                this.Status = dr["status"].ToString();
            }
        }
        else
        {
            return null;
        }
        return this;
    }
    public Boolean checkMovie()
    {
        String query = "select * from tblMovie  where name='" + Name + "'";
        return clsdb.CheckData(query);
    }

    public int ID { get; set; }

    public String Name { get; set; }

    public int Duration { get; set; }

    public String Description { get; set; }

    public String Language { get; set; }

    public String ReleaseDate { get; set; }

    public String Status { get; set; }

    public String Photo { get; set; }
}