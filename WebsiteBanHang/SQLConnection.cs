using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteBanHang
{
    public class SQLConnection
    {
        public static string chuoiketnoi = "Data Source=LAPTOP-R1SI18OV\\SQLEXPRESS;Initial Catalog=WebsiteBH;Integrated Security=True";
        public static SqlConnection conn { get; set; }

        public SQLConnection()
        {
            conn = new SqlConnection(chuoiketnoi);
        }

        public static int executeNonquery(string strQuery)
        {
            conn = new SqlConnection(chuoiketnoi);
            conn.Open();
            SqlCommand command = new SqlCommand(strQuery, conn);
            int resuit = command.ExecuteNonQuery();
            conn.Close();
            return resuit;
        }

        public static DataTable executeQuery(string strQuery)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            conn = new SqlConnection(chuoiketnoi);
            conn.Open();
            SqlCommand command = new SqlCommand(strQuery, conn);
            sqlDataAdapter.SelectCommand = command;
            sqlDataAdapter.Fill(ds);
            conn.Close();
            return ds.Tables[0];
        }
    }
}