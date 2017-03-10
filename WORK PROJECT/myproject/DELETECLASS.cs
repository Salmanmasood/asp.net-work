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
    public class DELETECLASS
    {





        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;


        public string DELETEMETHOD(string id, string TITLE, string proc,string P_id,string p_title)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(P_id, SqlDbType.Int).Value = id;
                cmd.Parameters.Add(p_title, SqlDbType.NVarChar, 20).Value = TITLE;
                conn.Open();
                cmd.ExecuteNonQuery();


                s = "DATA record has been delete successfully.....";

            }
            catch (Exception)
            {
                s = "data is not delete !!!";

            }

            finally
            {
                conn.Close();
            }

            return s;

        } //method end...........




    }
}