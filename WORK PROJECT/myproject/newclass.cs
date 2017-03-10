using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace myproject
{
    public class newclass
    {
        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;

        public string insert_experience(string[]exp)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("sp_user_experience", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@exP_place", SqlDbType.NVarChar, 70).Value = exp[0];
                cmd.Parameters.Add("@exP_startingdate", SqlDbType.NVarChar, 70).Value = exp[1];
                cmd.Parameters.Add("@exp_enddate", SqlDbType.NVarChar, 70).Value = exp[2];
                cmd.Parameters.Add("@exp_designation", SqlDbType.NVarChar, 70).Value = exp[3];
                cmd.Parameters.Add("@exp_fk_id ", SqlDbType.Int).Value = exp[4];

               
                conn.Open();
                cmd.ExecuteNonQuery();


                s = "DATA record has been inserted successfully.....";

            }
            

            finally
            {
                conn.Close();
            }

            return s;




        } 
        //end of method................



    }
}