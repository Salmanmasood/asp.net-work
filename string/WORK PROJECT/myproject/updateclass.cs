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
    public class updateclass
    {
        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;


        public string update_experience(string[] exp)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {

                SqlCommand cmd = new SqlCommand("update_sp_user_experience", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@exP_place", SqlDbType.NVarChar, 70).Value = exp[0];
                cmd.Parameters.Add("@exP_startingdate", SqlDbType.NVarChar, 70).Value = exp[1];
                cmd.Parameters.Add("@exp_enddate", SqlDbType.NVarChar, 70).Value = exp[2];
                cmd.Parameters.Add("@exp_designation", SqlDbType.NVarChar, 70).Value = exp[3];
                


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




        public string update_salary(string[] salary)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {

                SqlCommand cmd = new SqlCommand("UPDATE_SP_SALARYFROMPROFESSIONAL", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@professional_salary", SqlDbType.Float).Value = salary[0];
                cmd.Parameters.Add("@professional_desired_salary", SqlDbType.Float).Value = salary[1];
                cmd.Parameters.Add("@inprofessional_login_id_fk", SqlDbType.Int).Value = salary[2];
                



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



        public string update_education(string proc, string grades, string percentage, string institue,string start,string end ,string[] education, string degree)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {

                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(grades, SqlDbType.NVarChar,20).Value = education[0];
                cmd.Parameters.Add(percentage, SqlDbType.Float).Value = education[1];
                cmd.Parameters.Add(institue, SqlDbType.NVarChar, 20).Value = education[2];
                cmd.Parameters.Add(start, SqlDbType.NVarChar, 20).Value = education[3];
                cmd.Parameters.Add(end, SqlDbType.NVarChar, 20).Value = education[4];
                cmd.Parameters.Add(degree, SqlDbType.NVarChar, 20).Value = education[5];

                



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