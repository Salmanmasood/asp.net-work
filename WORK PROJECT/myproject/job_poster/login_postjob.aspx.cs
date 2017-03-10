using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace myproject.job_poster
{
    public partial class login_postjob : System.Web.UI.Page
    {
        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_post_job"]!=null)
            {

                Response.Redirect("~/job_poster/pannel.aspx");
            }
            
            
               
            


        }//load event


        	public int loginmethod(string email ,string password)
        
            {
		    DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("Select COUNT(*) FROM job_poster_id where login_email = '" + email + "' and login_password = '" + password + "'", connstring);
            int id=0;

            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                id = 1;

            }
            else
            {
                id = 0;
            }

            return id;
        }

            protected void bt1_Click(object sender, EventArgs e)
            {


                int x = loginmethod(TextBox1.Text, txtpassword.Text);
                Session["user_post_job"] = TextBox1.Text;
                Session["password_post_job"] = txtpassword.Text;

                if (x == 1)
                {

                    Returnclass rc = new Returnclass();
                    Session["company_fk_posterid"] = rc.scalarReturn("select login_id from job_poster_id where login_email='" + TextBox1.Text + "' and login_password='" + txtpassword.Text + "'");
               
                    Response.Redirect("~/job_poster/pannel.aspx");


                }

                else
                {
                    Label1.Text = ".";

                }


            }//event end













    }
}