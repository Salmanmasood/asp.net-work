using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject.job_poster
{
    public partial class adminpannelofposteraspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            Response.Redirect("~/job_poster/pannel.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/job_poster/closeajob.aspx");
        }

    }
}