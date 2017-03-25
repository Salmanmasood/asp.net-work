using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject.job_poster
{
    public partial class viewresumes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["posterid"];
            ViewState["query"] = "select r.seeker_id ,r.resume_username,r.resume_education,r.resume_functionalarea,r.resume_applydate,r.resume_functionalarea,j.job_title,c.company_name from resumeofapplicants r inner join job_title_tbl j on j.job_id=r.resume_fk inner join company_name_tbl c on c.company_id=j.job_fk_jobitle inner join job_poster_id l on l.login_id=c.company_login_id_fk where l.login_id=" + cookie["poster_id"].ToString();
            DataSet ds = GetData(ViewState["query"].ToString());
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }//load event end.......
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
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/Index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/job_poster/viewresumes.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/job_poster/pannel.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/job_poster/closeajob.aspx");
        }
    }
}