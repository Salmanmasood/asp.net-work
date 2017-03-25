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
    public class insert_data
    {

    private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
        

        public string insert_loginmethod(string id,string password,string proc)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@login_email", SqlDbType.NVarChar, 70).Value = id;
                cmd.Parameters.Add("@login_password", SqlDbType.NVarChar, 20).Value = password;
                conn.Open();
                cmd.ExecuteNonQuery();


                s="DATA record has been inserted successfully.....";

            }
            catch (Exception)
            {
                s="data is not inserted !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;

        } //method end...........


        


        //insertion personal information...................................................................................................
        public string insert_personalinfo(string []perosnalinfo)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("sp_personalinfo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@personal_name", SqlDbType.NVarChar, 20).Value = perosnalinfo[0]; //name
                cmd.Parameters.Add("@personal_contact#", SqlDbType.NVarChar, 20).Value = perosnalinfo[1]; //contact
                cmd.Parameters.Add("@personal_emailid", SqlDbType.NVarChar, 20).Value = perosnalinfo[2]; //emailid
                cmd.Parameters.Add("@personal_address", SqlDbType.NVarChar, 20).Value = perosnalinfo[3]; //address
                cmd.Parameters.Add("@personal_dateofbirth", SqlDbType.NVarChar, 20).Value = perosnalinfo[4]; //dateofbirth
                cmd.Parameters.Add("@personal_gender", SqlDbType.NVarChar, 20).Value = perosnalinfo[5]; //gender
                cmd.Parameters.Add("@inpersonalinfo_login_id_fk", SqlDbType.Int).Value = perosnalinfo[6]; //c_img_id

                conn.Open();
                cmd.ExecuteNonQuery();

                s = "DATA record has been inserted successfully.....";

            }
            catch (Exception)
            {
                s = "data is not inserted !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;

        } //method end....................................................................................................................



// professional info method...............................................................................................................

       
        public string insert_professionalinfo(string[] professionalinfo)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("sp_professionalinfo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@professional_functionalarea", SqlDbType.NVarChar, 20).Value = professionalinfo[0]; //functionalarea
                cmd.Parameters.Add("@professional_salary", SqlDbType.Float).Value = professionalinfo[1]; //salary
                cmd.Parameters.Add("@professional_experince", SqlDbType.Int).Value = professionalinfo[2]; //experience
                cmd.Parameters.Add("@professional_desired_salary", SqlDbType.Float).Value = professionalinfo[3]; //desired salary
                cmd.Parameters.Add("@professional_want_job_sort", SqlDbType.NVarChar, 20).Value = professionalinfo[4]; //job_sort
                cmd.Parameters.Add("@professional_area_towork", SqlDbType.NVarChar, 20).Value = professionalinfo[5]; //area to work
                cmd.Parameters.Add("@inprofessional_login_id_fk", SqlDbType.Int).Value = professionalinfo[6]; //c_img_id

                conn.Open();
                cmd.ExecuteNonQuery();

                s = "DATA record has been inserted successfully.....";

            }
            catch (Exception)
            {
                s = "data is not inserted !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;

        } //method end....................................................................................................................




        //insertion educational information...................................................................................................

     










        //insertion Certificational information...................................................................................................

        public string insert_certificate(string c_name,string id)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                if (c_name!=null)
            {
               
                SqlCommand cmd = new SqlCommand("sp_certification", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@certification_name", SqlDbType.NVarChar, 20).Value = c_name;
                cmd.Parameters.Add("@incertification_login_id_fk", SqlDbType.Int).Value = id;
               
                conn.Open();
                cmd.ExecuteNonQuery();

            }   s = "DATA record has been inserted successfully.....";

            }
            catch (Exception)
            {
                s = "data is not inserted !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;

        } //method end....................................................................................................................




        public string insert_s_h_m_g(string grades, string percentage, string institue,string degree, string fk,string start,string end,string procname,string []arry_edu)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand(procname, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(grades, SqlDbType.NVarChar, 20).Value =arry_edu[0];
                cmd.Parameters.Add(degree, SqlDbType.NVarChar, 20).Value = arry_edu[4];
                cmd.Parameters.Add(percentage, SqlDbType.Float).Value = arry_edu[1];
                cmd.Parameters.Add(institue, SqlDbType.NVarChar,20).Value = arry_edu[2];
                cmd.Parameters.Add(fk, SqlDbType.Int).Value = arry_edu[3];
                cmd.Parameters.Add(start, SqlDbType.NVarChar, 20).Value = arry_edu[5];
                cmd.Parameters.Add(end, SqlDbType.NVarChar, 20).Value = arry_edu[6];
                
                conn.Open();
                cmd.ExecuteNonQuery();

                s = "DATA record has been inserted successfully.....";

            }
          

            finally
            {
                conn.Close();
            }

            return s;

        } //method end....................................................................................................................





        public string resumemethod(string name, string edu,string functionalarea,string applydate,string experience,string fk,string seeker_id)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                

                    SqlCommand cmd = new SqlCommand("insertresumesofapplicants", conn);
                
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@resume_username", SqlDbType.NVarChar, 70).Value = name;
                    cmd.Parameters.Add("@resume_education", SqlDbType.NVarChar).Value = edu;
                    cmd.Parameters.Add("@resume_functionalarea", SqlDbType.NVarChar, 70).Value = functionalarea;
                    cmd.Parameters.Add("@resume_applydate", SqlDbType.NVarChar,70).Value = applydate;
                    cmd.Parameters.Add("@resume_experience", SqlDbType.Int).Value = experience;
                    cmd.Parameters.Add("@resume_fk", SqlDbType.Int).Value = fk;
                    cmd.Parameters.Add("@seeker_id", SqlDbType.Int).Value = seeker_id;




                    conn.Open();
                    cmd.ExecuteNonQuery();

                 s = "success";

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































    } //class end............................................

}