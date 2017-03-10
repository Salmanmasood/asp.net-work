using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace myproject
{
    public partial class viewjobsbyallusers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["job_id"] =Request.QueryString["view"].ToString();

            Returnclass re = new Returnclass();
           // ViewState["fk_comp_id"] = re.scalarReturn("select company_id from company_name_tbl where company_login_id_fk=" + ViewState["job_id"].ToString());
            string s = re.scalarReturn("select max(id) from tblImages_job_posterlogin_info where inimage_login_id_fk=" + ViewState["job_id"].ToString());
            
            if (s != "")
            {

                Image1.Visible = false;
                Image2.Visible = true;


                Returnclass ob = new Returnclass();

                ViewState["imageid"] = ob.scalarReturn("select max(id) from tblImages_job_posterlogin_info where inimage_login_id_fk=" + ViewState["job_id"].ToString());

                string cs = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("sp_posterGetImageById", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramId = new SqlParameter()
                    {
                        ParameterName = "@Id",
                        Value = ViewState["imageid"].ToString()
                    };
                    cmd.Parameters.Add(paramId);

                    SqlParameter paramif_fk = new SqlParameter()
                    {
                        ParameterName = "@inimage_login_id_fk",
                        Value = ViewState["job_id"].ToString()
                    };
                    cmd.Parameters.Add(paramif_fk);


                    con.Open();

                    byte[] bytes = (byte[])cmd.ExecuteScalar();
                    string strBase64 = Convert.ToBase64String(bytes);
                    Image2.ImageUrl = "data:Image/png;base64," + strBase64;

                }

            }

            //if end here ...........................

            else
            {

                Image2.Visible = false;
                Image1.Visible = true;


            } //else end......................



            showfields();










        }



        public void showfields()
        {

            Returnclass re = new Returnclass();
            ViewState["company_id"] = re.scalarReturn("select job_fk_companyid from job_title_tbl where job_id="+ViewState["job_id"].ToString());
            Label1.Text = re.scalarReturn("select job_title from job_title_tbl where job_id=" + ViewState["job_id"].ToString());
            jobdesc.Text = re.scalarReturn("select job_desc from job_title_tbl where job_id=" + ViewState["job_id"].ToString());
            lblcompanyname.Text = re.scalarReturn("select company_name from company_name_tbl where company_id=" + ViewState["company_id"].ToString());
            Label2.Text = re.scalarReturn("select company_desc from company_name_tbl where company_id=" + ViewState["company_id"].ToString());
            lblfunctionalarea.Text = re.scalarReturn("select job_functional_area from job_title_tbl where job_id=" + ViewState["job_id"].ToString());
            lblsortjob.Text = re.scalarReturn("select job_sort from job_title_tbl where job_id=" + ViewState["job_id"].ToString());
            lblcity.Text = re.scalarReturn("select location_city from company_location_tbl where location_fk_jobid=" + ViewState["job_id"].ToString());
            lblcountry.Text = re.scalarReturn("select location_country from company_location_tbl where location_fk_jobid=" + ViewState["job_id"].ToString());

            


           
        } //method end...........













    }
}