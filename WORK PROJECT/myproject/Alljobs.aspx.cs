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
            if (!IsPostBack)
            {
                ViewState["query"] = "select  job_id,company_name as CompanyName,job_title as Job,job_desc as JobDescription,job_sort as JobSort, job_functional_area as FunctionalArea  from job_title_tbl inner join company_location_tbl on job_title_tbl.job_id=company_location_tbl.location_login_id_fk  inner join company_name_tbl on company_name_tbl.company_id=job_title_tbl.job_fk_jobitle";
                ViewState["flag"] = 0;

            }
           
            DataSet ds = GetData(ViewState["query"].ToString());
            GridView1.DataSource = ds;
            GridView1.DataBind();

           




        }//load event end


        public DataSet GetData(string querry)
        {
            string CS = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter(querry, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        } //method end........





        protected void Button1_Click(object sender, EventArgs e)
        {

           // ViewState["query"] = "select * from job_title_tbl where job_title like  '" + TextBox1.Text + "%' or job_functional_area='" + DropDownList4.SelectedItem.ToString() + "%' or job_sort like '" + DropDownList5.SelectedItem.ToString() + "%'";
           
            if (CheckBox1.Checked==true)
            {

                ViewState["query"] = " select company_name as CompanyName, job_id,job_title as Job,job_desc as JobDescription,job_sort as JobSort, job_functional_area as FunctionalArea  from job_title_tbl inner join company_location_tbl on job_title_tbl.job_id=company_location_tbl.location_login_id_fk  inner join company_name_tbl on company_name_tbl.company_id=job_title_tbl.job_fk_jobitle    where location_city like '" + DropDownList1.SelectedItem.ToString() + "%' or location_area like '" + DropDownList2.SelectedItem.ToString() + "%'  or location_country like '" + DropDownList3.SelectedItem.ToString() + "%'  or job_sort like '" + DropDownList5.SelectedItem.ToString() + "%' or job_functional_area like '" + DropDownList4.SelectedItem.ToString() + "%' or company_name like '" + DropDownList6.SelectedItem.ToString() + "%'";

            }
            else
            {
                ViewState["query"] = " select company_name as CompanyName, job_id,job_title as Job,job_desc as JobDescription,job_sort as JobSort, job_functional_area as FunctionalArea  from job_title_tbl inner join company_location_tbl on job_title_tbl.job_id=company_location_tbl.location_login_id_fk  inner join company_name_tbl on company_name_tbl.company_id=job_title_tbl.job_fk_jobitle where job_title like '" + TextBox1.Text + "%' or job_title like '%" + TextBox1.Text + "%' or job_title like '%" + TextBox1.Text + "' or company_name like'%" + TextBox1.Text + "%' or company_name like'" + TextBox1.Text + "%' or company_name like'%" + TextBox1.Text + "' ";


            }
            




            DataSet ds = GetData(ViewState["query"].ToString());
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        


    }
}