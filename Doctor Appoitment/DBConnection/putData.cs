using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Helpers;

namespace Doctor_Appoitment.DBConnection
{
    public class putData
    {
        public static DataTable authenticateUser(string fn, string ln,string mob,string email,string pass, int nletter)
        {
            using (SqlConnection connection = DBConnection.buildConnection())
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("sp_RegisterUser", connection))//
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    
                    command.Parameters.Add(new SqlParameter("@fn", SqlDbType.NVarChar));
                    command.Parameters["@fn"].Value = fn;

                    command.Parameters.Add(new SqlParameter("@ln", SqlDbType.NVarChar));
                    command.Parameters["@ln"].Value = ln;
                    
                    command.Parameters.Add(new SqlParameter("@mob", SqlDbType.NVarChar));
                    command.Parameters["@mob"].Value = mob;
                    
                    command.Parameters.Add(new SqlParameter("@email", SqlDbType.NVarChar));
                    command.Parameters["@email"].Value = email;
                    
                    command.Parameters.Add(new SqlParameter("@pass", SqlDbType.NVarChar));
                    command.Parameters["@pass"].Value = pass;
                    
                    command.Parameters.Add(new SqlParameter("@nletter", SqlDbType.Int));
                    command.Parameters["@nletter"].Value = nletter;

                    //this parameter is just for testing purpose not used anywhere remove if needed update store procedure accordingly
                    SqlParameter generatedLoginIDParam = new SqlParameter("@generatedLoginID", SqlDbType.NVarChar, 50);
                    generatedLoginIDParam.Direction = ParameterDirection.Output;
                    command.Parameters.Add(generatedLoginIDParam);


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

        public static void insertloginperiod(string loginid,DateTime loginsince,DateTime logintill,string mode)
        {
            using (SqlConnection connection = DBConnection.buildConnection())
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("insertlogintime", connection))//
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters

                    command.Parameters.Add(new SqlParameter("@loginid", SqlDbType.NVarChar));
                    command.Parameters["@loginid"].Value = loginid;

                    command.Parameters.Add(new SqlParameter("@ldate", SqlDbType.DateTime));
                    command.Parameters["@ldate"].Value = loginsince;

                    command.Parameters.Add(new SqlParameter("@lodate", SqlDbType.DateTime));
                    command.Parameters["@lodate"].Value = logintill;
                    
                    command.Parameters.Add(new SqlParameter("@mode", SqlDbType.NVarChar));
                    command.Parameters["@mode"].Value = mode;


                    command.ExecuteNonQuery();
                    //using (SqlDataReader reader = command.ExecuteReader())
                    //{
                    //    string strmsg=reader.GetString(0);
                    //    return strmsg;
                    //}
                }
            }
            
        }
    }
}