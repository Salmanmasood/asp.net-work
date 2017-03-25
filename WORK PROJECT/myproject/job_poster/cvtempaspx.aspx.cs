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
    public partial class cvtempaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // ViewState["seeker_name"] = "test";
            ViewState["seeker_name"] = Request.QueryString["view"].ToString();
            Returnclass rc = new Returnclass();

            //Response.Write(ViewState["seeker_id"].ToString());
            name.Text = ViewState["seeker_name"].ToString();

            ViewState["seeker_id"] = rc.scalarReturn("select inpersonalinfo_login_id_fk from personal_info_login_information where personal_name='" + ViewState["seeker_name"].ToString() + "'");
            Email.Text = rc.scalarReturn("select login_email from login_information where login_id=" + ViewState["seeker_id"].ToString());
            address.Text = rc.scalarReturn("select personal_address  from personal_info_login_information where inpersonalinfo_login_id_fk=" + ViewState["seeker_id"].ToString());
            Label1.Text = rc.scalarReturn("select personal_contact# from personal_info_login_information where inpersonalinfo_login_id_fk=" + ViewState["seeker_id"].ToString());
            job.Text = rc.scalarReturn("select  professional_want_job_sort from professional_info_login_information where inprofessional_login_id_fk=" + ViewState["seeker_id"].ToString());
            experience.Text = rc.scalarReturn("select  professional_experince from professional_info_login_information where inprofessional_login_id_fk=" + ViewState["seeker_id"].ToString());
            FunctionalArea.Text = rc.scalarReturn("select  professional_functionalarea from professional_info_login_information where inprofessional_login_id_fk=" + ViewState["seeker_id"].ToString());
            string masters = rc.scalarReturn("select masters_degree from masters_record where masters_fk_id=" +ViewState["seeker_id"].ToString());
            if (masters!=" ")
            {
                Label15.Text = masters;
                
                string start = rc.scalarReturn("select masters_duration from masters_record where masters_fk_id=" + ViewState["seeker_id"].ToString());
                string end = rc.scalarReturn("select masters_duration_end from masters_record where masters_fk_id=" + ViewState["seeker_id"].ToString());
                Label16.Text = start +" To "+end;
                Label17.Text = rc.scalarReturn("select masters_institute from masters_record where masters_fk_id=" + ViewState["seeker_id"].ToString());
                

            }

            string grad = rc.scalarReturn("select grad_degree from grad_record where grad_fk_id=" + ViewState["seeker_id"].ToString());
            if (grad != " ")
            {
                Label2.Text = grad;

                string start = rc.scalarReturn("select grad_duration from grad_record where grad_fk_id=" + ViewState["seeker_id"].ToString());
                string end = rc.scalarReturn("select grad_duration_end from grad_record where grad_fk_id=" + ViewState["seeker_id"].ToString());
                Label18.Text = start + " To " + end;
                Label19.Text = rc.scalarReturn("select grad_institute from grad_record where grad_fk_id=" + ViewState["seeker_id"].ToString());


            }



            string hsc = rc.scalarReturn("select hsc_degree from hsc_record where hsc_fk_id=" + ViewState["seeker_id"].ToString());
            if (hsc != " ")
            {
                Label3.Text = hsc;

                string start = rc.scalarReturn("select hsc_duration from hsc_record where hsc_fk_id=" + ViewState["seeker_id"].ToString());
                string end = rc.scalarReturn("select hsc_duration_end from hsc_record where hsc_fk_id=" + ViewState["seeker_id"].ToString());
                Label20.Text = start + " To " + end;
                Label21.Text = rc.scalarReturn("select hsc_institute from hsc_record where hsc_fk_id=" + ViewState["seeker_id"].ToString());


            }

            string ssc = rc.scalarReturn("select ssc_degree from scc_record where ssc_fk_id=" + ViewState["seeker_id"].ToString());
            if (ssc != " ")
            {
                Label4.Text = ssc;

                string start = rc.scalarReturn("select scc_duration from scc_record where ssc_fk_id=" + ViewState["seeker_id"].ToString());
                string end = rc.scalarReturn("select scc_duration_end from scc_record where ssc_fk_id=" + ViewState["seeker_id"].ToString());
                Label22.Text = start + " To " + end;
                Label23.Text = rc.scalarReturn("select ssc_institute from scc_record where ssc_fk_id=" + ViewState["seeker_id"].ToString());


            }


            //string imgid = rc.scalarReturn("select id from tblImages_login_info where inimage_login_id_fk=" + ViewState["seeker_id"].ToString());
            Returnclass re = new Returnclass();
            string s = re.scalarReturn("select count(id) from tblImages_login_info where inimage_login_id_fk="  +ViewState["seeker_id"].ToString());



            if (s!="0")
            {
                Returnclass ob = new Returnclass();

                ViewState["imageid"] = ob.scalarReturn("select max(id) from tblImages_login_info where inimage_login_id_fk=" + ViewState["seeker_id"].ToString());

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
                        Value = ViewState["seeker_id"].ToString()
                    };
                    cmd.Parameters.Add(paramif_fk);


                    con.Open();

                    byte[] bytes = (byte[])cmd.ExecuteScalar();
                    string strBase64 = Convert.ToBase64String(bytes);
                    Image1.ImageUrl = "data:Image/png;base64," + strBase64;

                }




            }//if end





















        }
    }
}