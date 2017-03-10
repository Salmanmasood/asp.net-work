using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace myproject
{
    public class postjobs_insertclass
    {


        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;


        public bool insert_companyname(string c_name, string c_details, string fk)
        {
            bool s = false;
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("insert_companyname", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@company_name", SqlDbType.NVarChar, 20).Value = c_name;
                cmd.Parameters.Add("@company_details", SqlDbType.NVarChar).Value = c_details;
                cmd.Parameters.Add("@company_login_id_fk", SqlDbType.Int).Value = fk;


                conn.Open();
                cmd.ExecuteNonQuery();

                //  s = "DATA record has been inserted successfully.....";
                s = true;

            }
            //catch (Exception)
            //{
            //    s = "data is not inserted !!!";

            //}

            finally
            {
                conn.Close();
            }

            return s;

        } //method end....................................................................................................................


        //location method..............................................................................................................


        public bool insert_location(string city, string country, string area, string fk)
        {
            bool s = false;
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("insert_companylocation", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@location_city", SqlDbType.NVarChar, 20).Value = city;
                cmd.Parameters.Add("@location_country", SqlDbType.NVarChar, 20).Value = country;
                cmd.Parameters.Add("@location_area", SqlDbType.NVarChar, 20).Value = area;
                cmd.Parameters.Add("@location_login_id_fk", SqlDbType.Int).Value = fk;


                conn.Open();
                cmd.ExecuteNonQuery();
                s = true;
                //s = "DATA record has been inserted successfully.....";

            }
            catch (Exception)
            {
                //  s = "data is not inserted !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;
        } //method end....................................................................................................................


        public bool insert_job(string job_title, string j_desc, string j_funarea, string j_sort, string fk)
        {
            bool s = false;
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("insert_job_title", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@job_title", SqlDbType.NVarChar, 20).Value = job_title;
                cmd.Parameters.Add("@job_desc", SqlDbType.NVarChar, 20).Value = j_desc;
                cmd.Parameters.Add("@job_functional_area", SqlDbType.NVarChar, 20).Value = j_funarea;
                cmd.Parameters.Add("@job_sort", SqlDbType.NVarChar, 20).Value = j_sort;
                cmd.Parameters.Add("@job_fk_jobitle", SqlDbType.Int).Value = fk;



                conn.Open();
                cmd.ExecuteNonQuery();
                s = true;
                //s = "DATA record has been inserted successfully.....";

            }
            catch (Exception)
            {
                //  s = "data is not inserted !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;

        } //method end....................................................................................................................











































    } //class end...................................
}