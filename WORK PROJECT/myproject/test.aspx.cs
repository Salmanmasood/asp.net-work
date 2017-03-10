using System;
using System.Collections.Generic;
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
            //   Session["userid"] = "ttt";
            //   Returnclass re = new Returnclass();
            //Session["test"] = re.scalarReturn("select login_id from login_information where login_email='" + Session["userid"] + "'");

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
        
