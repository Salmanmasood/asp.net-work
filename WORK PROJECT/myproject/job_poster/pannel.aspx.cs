using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace myproject.job_poster
{
    public partial class pannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            if (CheckBox1.Checked==true)
            {

              postjobs_insertclass ic = new postjobs_insertclass();
              ic.insert_companyname(txt_companyname.Text,txt_description.Text, Session["company_fk_posterid"].ToString());
              Returnclass rc=new Returnclass();
              string s=  rc.scalarReturn("select max(company_id) from company_name_tbl where company_fk_posterid="+Session["company_fk_posterid"].ToString());
              ic.insert_job(txtjob_title.Text, txt_job_desc.Text, ddlfunctionalarea.SelectedItem.ToString(), ddljobsort.SelectedItem.ToString(),s);
              string y =rc.scalarReturn("select max(job_id) from job_title_tbl where job_fk_companyid="+s);

              ic.insert_location(DropDownList2.SelectedItem.ToString(), DropDownList1.SelectedItem.ToString(),ddlcitywork.SelectedItem.ToString(),y);

              Session["companyid"] = s;
              Session["jobid"] = y;

    

            }//if end

            else
            
            {
              
                
                postjobs_insertclass ic = new postjobs_insertclass();
              // ic.insert_companyname(txt_companyname.Text, txt_description.Text, Session["company_fk_posterid"].ToString());
                Returnclass rc = new Returnclass();
                string s = rc.scalarReturn("select company_id from company_name_tbl where company_name='"+DropDownList3.SelectedItem.ToString()+"'");
                ic.insert_job(txtjob_title.Text, txt_job_desc.Text, ddlfunctionalarea.SelectedItem.ToString(), ddljobsort.SelectedItem.ToString(), s);
                string y = rc.scalarReturn("select max(job_id) from job_title_tbl where job_fk_companyid=" + s);
                ic.insert_location(DropDownList2.SelectedItem.ToString(), DropDownList1.SelectedItem.ToString(), DropDownList3.SelectedItem.ToString(), y);
                Session["companyid"] = s;
                Session["jobid"] = y;
            }


           Response.Redirect("~/job_poster/job_view.aspx");


        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

          
        }

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
            Response.Redirect("~/job_poster/adminpannelofposteraspx.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/job_poster/closeajob.aspx");
        }

      
    }
}