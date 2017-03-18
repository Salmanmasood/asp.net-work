using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet ds = GetData();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();



            //   Returnclass re = new Returnclass();
            //Session["test"] = re.scalarReturn("select login_id from login_information where login_email='" + Session["userid"] + "'");

        }

        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from login_information", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        } 






















        //protected void Button1_Click(object sender, EventArgs e)
        //{
            
            
        //        MailMessage mailMessage = new MailMessage();
        //        mailMessage.To.Add("theideassolution@gmail.com");
        //        mailMessage.From = new MailAddress("ideassolution91@gmail.com");
        //        mailMessage.Subject = "Exam Notification";
        //        mailMessage.Body = "This is test and checking message";
        //        SmtpClient smtpClient = new SmtpClient("smtp.your-isp.com");
        //        smtpClient.Send(mailMessage);
        //        Response.Write("sent !");
            
        //}

    }



}
        
