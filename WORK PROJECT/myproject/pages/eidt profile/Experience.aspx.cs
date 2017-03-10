using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject.pages.eidt_profile
{
    public partial class Experience : System.Web.UI.Page
    {

     string[] months = new string[] { "Januray", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
       

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i <months.Length; i++)
            {
                DropDownList1.Items.Add(months[i].ToString());
                DropDownList3.Items.Add(months[i].ToString());

            }

            //for YEARS IN COMBOBOX....
            for (int i = 1990; i < DateTime.Now.Year; i++)
            {
                DropDownList2.Items.Add(i.ToString());
                DropDownList4.Items.Add(i.ToString());

            }


            if (!IsPostBack)
            {
                Button1.Visible = true;
            }

            if (Button1.Visible == true)
            {
                Button2.Visible = false;

            }
            




        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Button2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = false;
        }
    }
}