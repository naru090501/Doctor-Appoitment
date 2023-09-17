using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Doctor_Appoitment.DBConnection
{
    public class DBConnection
    {
        public static SqlConnection buildConnection()
        {
            string connectionString = "Server=.\\SQLEXPRESS;Database=NDDOCTORNEW;User Id=narendra;Password=naru@123;";//for sql authentication server
            //string connectionString = "Server=.\\SQLEXPRESS;Database=WETEST;Integrated Security=True;";//for windows authentication server
            return new SqlConnection(connectionString);
        }
    }
}