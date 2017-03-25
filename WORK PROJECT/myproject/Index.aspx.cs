using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

            
            if (Session["userid"] == null)
            {
               Button1.Text = "Login";
               Button2.Text = "Sign up";
               Button7.Visible = false;
               Button8.Visible = false;
               Button1.Visible = true;
               Button2.Visible = true;
               GridView1.Visible = false;
               Button9.Visible = true;
               Button10.Visible = true;

             
            }
            else
            {

                Button7.Text = Session["username"].ToString();
                Button8.Text = "Log Out";
                Button7.Visible = true;
                Button8.Visible = true;
                Button1.Visible = false;
                Button2.Visible = false;
                Returnclass re = new Returnclass();
                Button9.Visible = false;
                Button10.Visible = false;
                Session["functtionalarea"] = re.scalarReturn
("select professional_functionalarea from professional_info_login_information p inner join login_information l on l.login_id=p.inprofessional_login_id_fk where l.login_email='" + Session["userid"] + "'");
                Session["jobsort"] = re.scalarReturn
("select professional_want_job_sort from professional_info_login_information p inner join login_information l on l.login_id=p.inprofessional_login_id_fk where l.login_email='" + Session["userid"] + "'");


            }






        }//loead event end

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/Index.aspx");


        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seeker pages/pages/home_profile.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seeker pages/user_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seeker pages/signuP.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Alljobs.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seeker pages/user_login.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/job_poster/login_postjob.aspx");
        } 








        
    }
}