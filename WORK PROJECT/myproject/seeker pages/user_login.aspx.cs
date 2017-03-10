using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace myproject.seeker_pages
{
    public partial class user_login : System.Web.UI.Page
    {
        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        


      
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = " ";
            SqlConnection conn = new SqlConnection(connstring);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "select login_password from login_information where login_email='" + TextBox1.Text + "'";
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string pasword_var = dr["login_password"].ToString();
                    if (pasword_var == txtpassword.Text)
                    {
                        string q;
                        Returnclass ob = new Returnclass();
                       q= ob.scalarReturn("SELECT personal_NAME FROM personal_info_login_information P INNER JOIN login_information L ON P.inpersonalinfo_login_id_fk=L.login_id WHERE L.login_email='"+TextBox1.Text+"'");
                        // Page.Session.Add("userid",dr["s_userid_int"]);
                        Page.Session.Add("userid", TextBox1.Text);
                        Page.Session.Add("username",q);
                        Page.Session.Timeout = 20;
                        
                        Session["c_img_id"] = ob.scalarReturn("select login_id from login_information where login_email='" + Session["userid"] + "'");

                        Session["functtionalarea"] = ob.scalarReturn("select professional_functionalarea from professional_info_login_information where inprofessional_login_id_fk=" + Session["c_img_id"]);
                        Session["jobsort"] = ob.scalarReturn("select professional_want_job_sort from professional_info_login_information where inprofessional_login_id_fk=" + Session["c_img_id"]);
                        
                        Response.Redirect("~/Index.aspx?id=success");


                    }
                    else
                    {
                        Label1.Text = "Invalid id or password!";
                        //Response.Write("wrong method......");
                    }

                }

            }

            catch (Exception)
            {
                // lblmsg.ForeColor = System.Drawing.Color.Red;

                Label1.Text = "Invalid id or password!";

               // Response.Write("wrong method......");
                //  lblmsg.Text = "Invalid Id or Password!";

            }

        }
    }
}