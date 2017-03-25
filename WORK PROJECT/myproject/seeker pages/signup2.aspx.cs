using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace myproject
{
    public partial class signup2 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Returnclass rc = new Returnclass();
           // Session["c_img_id"] = rc.scalarReturn("select max(login_id) from login_information");
            Session["functtionalarea"] = ddlfunctionalarea.SelectedItem.ToString();
            Session["currentsalary"] = ddlcurrentsalary.SelectedItem.ToString();
            Session["workexperience"] = ddlworkexperince.SelectedItem.ToString();
            Session["desiredsalary"] = dlldesiredsalary.SelectedItem.ToString();
            Session["careerlevel"] = ddlcareerlevel.SelectedItem.ToString();
            Session["jobsort"] = ddljobsort.SelectedItem.ToString();
            Session["workcity"] = ddlcitywork.SelectedItem.ToString();

            Response.Redirect("~/seeker pages/lastpage.aspx");


  }//btn event end..............................................................................

       























    }
}