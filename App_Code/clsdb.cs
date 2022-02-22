using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsdb
/// </summary>
public class clsdb
{
    private static SqlConnection mySqlCon()
    {
        String connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["dbTheater"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionstring);
        return con;
    }
    public static int InsertUpdateDelete(String query)
    {
        SqlConnection con = mySqlCon();
        int result = 0;
        try
        {
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            result = com.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            throw err;
        }

        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        return result;
    }


    public static DataSet getData(String query)
    {
        SqlConnection con = mySqlCon();
        DataSet ds = null;
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
        }
        catch (Exception err)
        {
            ds = null;
            throw err;
        }

        finally
        {

        }
        return ds;
    }


    public static Boolean CheckData(String query)
    {
        SqlConnection con = mySqlCon();
        bool result = false;
        try
        {
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                result = true;
            }
            dr.Close();
        }
        catch (Exception err)
        {
            throw err;
        }

        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        return result;
    }
}