using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class signuP : System.Web.UI.Page
    {

   string[] months = new string[] { "Januray", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
       


        protected void Page_Load(object sender, EventArgs e)
        {

            for (int i = 1; i <= 31; i++)
            {

                ddldays.Items.Add(i.ToString());
            }

            
            for (int i = 0; i < months.Length; i++)
            {
                ddlmonth.Items.Add(months[i]);
                
            }
            //for YEARS IN COMBOBOX....
            for (int i = 1990; i < DateTime.Now.Year; i++)
            {
                ddlyear.Items.Add(i.ToString());  
               
            }

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            Session["userid"] = txtuserid.Text;
            Session["password"] = txtpassword.Text;
            Session["username"] = username.Text;
            Session["contact"] = contact.Text;
            Session["emailid"] = emailid.Text;
            Session["address"] = address.Text;
           
            if (Male.Checked==true)
            {
                Session["gender"] = "Male";
   
            }
            else if (Female.Checked==true)
            {
                Session["gender"] = "Female";
            }

            Session["Dob"] = ddldays.SelectedValue.ToString() + "-" + ddlmonth.SelectedValue.ToString() + "-" + ddlyear.SelectedValue.ToString();



            Response.Redirect("~/seeker pages/signup2.aspx");
        }

        protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
        {
         

            if (ddlmonth.SelectedItem.ToString() == "February")
            {
                ddldays.Items.Clear();
                for (int i = 1; i <= 28; i++)
                {
                    ddldays.Items.Add(i.ToString());  //setting feburary days
                }
            }

            else if (ddlmonth.SelectedItem.ToString() == "April" || ddlmonth.SelectedItem.ToString() == "June" || ddlmonth.SelectedItem.ToString() == "September" || ddlmonth.SelectedItem.ToString() == "November")
            {
                 ddldays.Items.Clear();
                for (int i = 1; i <= 30; i++)
                {
                    ddldays.Items.Add(i.ToString()); //setting 30 days months
                }

            }

            else
            {
                ddldays.Items.Clear();
                for (int i = 1; i <= 31; i++)
                {
                    ddldays.Items.Add(i.ToString()); //setting 31 days months
                }

            }




        } //btn event end here.....................................
           





    }
}