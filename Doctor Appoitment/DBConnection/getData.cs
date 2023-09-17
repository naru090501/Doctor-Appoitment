using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data.Common;
using Microsoft.Ajax.Utilities;

namespace Doctor_Appoitment.DBConnection
{
    public class getData
    {
        public static DataTable authenticatUser(string login,string ltype)
        {
            using (SqlConnection connection = DBConnection.buildConnection())
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("sp_validateUser", connection))//sp_RegisterUser
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    command.Parameters.Add(new SqlParameter("@login", SqlDbType.NVarChar));
                    command.Parameters["@login"].Value = login;
                    
                    command.Parameters.Add(new SqlParameter("@logintype", SqlDbType.NVarChar));
                    command.Parameters["@logintype"].Value = ltype;


                    command.ExecuteNonQuery();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DataTable dataTable = new DataTable();
                        dataTable.Load(reader);
                        return dataTable;
                    }
                }
            }
            
        }
        public static DataTable logininfo(string loginid)
        {
            using (SqlConnection connection = DBConnection.buildConnection())
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("logininfo", connection))//sp_RegisterUser
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    command.Parameters.Add(new SqlParameter("@loginid", SqlDbType.NVarChar));
                    command.Parameters["@loginid"].Value = loginid;

                    command.ExecuteNonQuery();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DataTable dataTable = new DataTable();
                        dataTable.Load(reader);
                        return dataTable;
                    }
                }
            }
        }
        public static DataTable logintimecalculator(string loginid)
        {
            using (SqlConnection connection = DBConnection.buildConnection())
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("logintimecalculator", connection))//sp_RegisterUser
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    command.Parameters.Add(new SqlParameter("@loginid", SqlDbType.NVarChar));
                    command.Parameters["@loginid"].Value = loginid;

                    command.ExecuteNonQuery();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DataTable dataTable = new DataTable();
                        dataTable.Load(reader);
                        return dataTable;
                    }
                }
            }
        }
    }
}