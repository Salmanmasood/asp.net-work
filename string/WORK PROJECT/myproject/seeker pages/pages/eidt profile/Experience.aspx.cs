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
    
        string []exp = new string[5];
     string[] salary = new string[3];
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
            

          




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exp[0] = TextBox1.Text;
            exp[1] = DropDownList1.SelectedItem.ToString()+"-"+DropDownList2.SelectedItem.ToString();
           
            if (CheckBox1.Checked==true)
            {
                exp[2] = "currently working";
            }
            else
            {
                exp[2] = DropDownList3.SelectedItem.ToString() + "-" + DropDownList4.SelectedItem.ToString();
           
            
            }
            exp[3] = TextBox3.Text;
            exp[4] = Session["c_img_id"].ToString();
            salary[2] = Session["c_img_id"].ToString();
            salary[1] = TextBox6.Text;
            salary[0] = TextBox5.Text;
 
            newclass nc = new newclass();
          string s=  nc.insert_experience(exp);
          updateclass uc = new updateclass();
          s = s + "/ " + uc.update_salary(salary);
            
            Response.Write(s);




        }

        protected void Button2_Click(object sender, EventArgs e)
        {

          
            exp[0] = DropDownList5.SelectedItem.ToString();
            exp[1] = DropDownList1.SelectedItem.ToString() + "-" + DropDownList2.SelectedItem.ToString();

            if (CheckBox1.Checked == true)
            {
                exp[2] = "currently working";
            }
            else
            {
                exp[2] = DropDownList3.SelectedItem.ToString() + "-" + DropDownList4.SelectedItem.ToString();


            }
            exp[3] = TextBox3.Text;
            salary[2] = Session["c_img_id"].ToString();
            salary[1] = TextBox6.Text;
            salary[0] = TextBox5.Text;
            string s;
            updateclass uc = new updateclass();
           
          s=  uc.update_experience(exp);
         s=s+"/ " +uc.update_salary(salary);
        
            Response.Write(s);


        } //EVENT END................

      

       
    }
}