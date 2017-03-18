using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class Alljobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet ds = GetData();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }//load event end


        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select job_id,job_title as JobTitle ,job_desc as JobDescriptions,job_functional_area as FunctionalArea from job_title_tbl ", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        } 

    }
}