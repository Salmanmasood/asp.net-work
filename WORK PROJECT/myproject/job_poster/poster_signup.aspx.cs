using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject.job_poster
{
    public partial class poster_signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {

            Returnclass r=new Returnclass();
            string test = r.scalarReturn("select count(login_id) from job_poster_id where login_email='" + TextBox1.Text + "'");

            if (test != "0")
            {
                Label1.Text = "This email id is already taken,Please Select Another email Id";



            }
            else
            {

                Session["username"] = TextBox1.Text;
                Session["P_password"] = txtpassword.Text;
                if (txtpassword.Text == txtcpassword.Text)
                {

                    insert_data ob = new insert_data();
                    ob.insert_loginmethod(TextBox1.Text, txtpassword.Text, "proc_job_poster_id");

                    Response.Redirect("~/job_poster/pannel.aspx");

                }

            }


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Returnclass r = new Returnclass();
            string test = r.scalarReturn("select count(login_id) from job_poster_id where login_email='" + TextBox1.Text + "'");

            if (test != "0")
            {
                Label1.Text = "This email id is already taken,Please Select Another email Id";


            }
        } //btn event end...............................




    }
}