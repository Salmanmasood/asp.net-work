using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject.pages.eidt_profile
{
    public partial class education_edit : System.Web.UI.Page
    {

        public string[] months = new string[] { "Januray", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["c_img_id"] = 5014;
            for (int i = 0; i < months.Length; i++)
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
            string []educationlist=new string[4];
            Returnclass rc = new Returnclass();
            educationlist[0] = rc.scalarReturn("select ssc_degree from scc_record where ssc_fk_id=" + Session["c_img_id"]);
            educationlist[1] = rc.scalarReturn("select hsc_degree from hsc_record where hsc_fk_id =" + Session["c_img_id"]);
            educationlist[2] = rc.scalarReturn("select grad_degree from grad_record where grad_fk_id=" + Session["c_img_id"]);
            educationlist[3] = rc.scalarReturn("select masters_degree from masters_record where masters_fk_id=" + Session["c_img_id"]);

            for (int i = 0; i < educationlist.Length; i++)
            {
                DropDownList5.Items.Add(educationlist[i]);

            }

           


            

        }//load event end...................................

        protected void Button1_Click(object sender, EventArgs e)
        {
            int c = int.Parse(DropDownList6.SelectedValue);


            string[] masters = new string[7];

           
            switch (c)
            {
                case 1:
                    string[] ssc = new string[7];
            ssc[3] = Session["c_img_id"].ToString();
            ssc[2] = TextBox3.Text;
            ssc[1] = TextBox5.Text;
            ssc[0] = gradesfinder(ssc[1]);
            ssc[4] = DropDownList6.SelectedItem.ToString();

           
            ssc[5] = DropDownList2.SelectedItem.ToString() + "-" + DropDownList1.SelectedItem.ToString();
            if (CheckBox1.Checked==true)
            {
                ssc[6] = "In process";
            }
            else
            {
                ssc[6] = DropDownList4.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString();
            }



                     insert_data da = new insert_data();

            da.insert_s_h_m_g("@ssc_Grades", "@ssc_percentage", "@ssc_institute", "@ssc_degree", "@ssc_fk_id", "@scc_duration", "@scc_duration_END", "insert_scc_record", ssc);
                   
            break;
                case 2:
            string[] hsc = new string[7];
                    hsc[3] = Session["c_img_id"].ToString();
            hsc[2] = TextBox3.Text;
            hsc[1] = TextBox5.Text;
            hsc[0] = gradesfinder(hsc[1]);
            hsc[4] = DropDownList6.SelectedItem.ToString();

           
            hsc[5] = DropDownList2.SelectedItem.ToString() + "-" + DropDownList1.SelectedItem.ToString();
            if (CheckBox1.Checked==true)
            {
                hsc[6] = "In process";
            }
            else
            {
                hsc[6] = DropDownList4.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString();
            }



                      insert_data da1 = new insert_data();
            da1.insert_s_h_m_g("@hsc_Grades", "@hsc_percentage", "@hsc_institute", "@hsc_degree" ,"@hsc_fk_id","@hsc_duration","@HSC_duration_END" ,"insert_hsc_record", hsc);
                    break;
                case 3:

                    string[] grad = new string[7];

                    grad[3] = Session["c_img_id"].ToString();
            grad[2] = TextBox3.Text;
            grad[1] = TextBox5.Text;
            grad[0] = gradesfinder(grad[1]);
            grad[4] = DropDownList6.SelectedItem.ToString();

           
            grad[5] = DropDownList2.SelectedItem.ToString() + "-" + DropDownList1.SelectedItem.ToString();
            if (CheckBox1.Checked==true)
            {
                grad[6] = "In process";
            }
            else
            {
                grad[6] = DropDownList4.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString();
            }


                    insert_data da2 = new insert_data();

            da2.insert_s_h_m_g("@grad_Grades", "@grad_percentage", "@grad_institute", "@grad_degree", "@grad_fk_id","@grad_duration","@grad_duration_end", "insert_grad_record", grad);

                    break;
                case 4:
                   
                   
                    masters[3] = Session["c_img_id"].ToString();
            masters[2] = TextBox3.Text;
            masters[1] = TextBox5.Text;
            masters[0] = gradesfinder(masters[1]);
            masters[4] = DropDownList6.SelectedItem.ToString();

           
            masters[5] = DropDownList2.SelectedItem.ToString() + "-" + DropDownList1.SelectedItem.ToString();
            if (CheckBox1.Checked==true)
            {
                masters[6] = "In process";
            }
            else
            {
                masters[6] = DropDownList4.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString();
            }




                    insert_data da3 = new insert_data();
            da3.insert_s_h_m_g("@masters_Grades", "@masters_percentage", "@masters_institute", "@masters_degree", "@masters_fk_id", "@masters_duration", "@masters_duration_end", "insert_masters_record", masters);
            

                    break;

                case 5:

                   
                    masters[3] = Session["c_img_id"].ToString();
            masters[2] = TextBox3.Text;
            masters[1] = TextBox5.Text;
            masters[0] = gradesfinder(masters[1]);
            masters[4] = DropDownList6.SelectedItem.ToString();

           
            masters[5] = DropDownList2.SelectedItem.ToString() + "-" + DropDownList1.SelectedItem.ToString();
            if (CheckBox1.Checked==true)
            {
                masters[6] = "In process";
            }
            else
            {
                masters[6] = DropDownList4.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString();
            }






                    insert_data da4 = new insert_data();
                    da4.insert_s_h_m_g("@masters_Grades", "@masters_percentage", "@masters_institute", "@masters_degree", "@masters_fk_id", "@masters_duration", "@masters_duration_end", "insert_masters_record", masters);


                    break;

                
                default:
                    break;
            }







        }//btnevent end...................................

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = "";

            string[] ed = new string[6];
            ed[1] = TextBox5.Text;
            ed[0] = gradesfinder(ed[1]);
            ed[2] = TextBox3.Text;
            ed[3] = DropDownList2.SelectedItem.ToString() + "-" + DropDownList1.SelectedItem.ToString();
            if (CheckBox1.Checked == true)
            {
                ed[4] = "In process";
            }
            else
            {
               ed[4] = DropDownList4.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString();
            }
            ed[5] = DropDownList5.SelectedItem.ToString();
            if (DropDownList5.SelectedIndex==0)
            {
            
                updateclass uc = new updateclass();
                s = uc.update_education("update_tbl_scc_record", "@ssc_Grades", "@ssc_percentage", "@ssc_institute", "@scc_duration", "@scc_duration_END", ed, "@ssc_degree");
    
            }
            else if (DropDownList5.SelectedIndex==1)
            {

                updateclass uc = new updateclass();
                s = uc.update_education("update_hsc_record", "@hsc_Grades", "@hsc_percentage", "@hsc_institute", "@hcc_duration", "@HSC_duration_END", ed, "@hsc_degree");
    
            
            }

            else if (DropDownList5.SelectedIndex == 2)
            {

                updateclass uc = new updateclass();
                s = uc.update_education("update_grad_record", "@grad_Grades", "@grad_percentage", "@grad_institute", "@grad_duration", "@grad_duration_END", ed, "@grad_degree");


            }

            else if (DropDownList5.SelectedIndex == 3)
            {

                updateclass uc = new updateclass();
               s= uc.update_education("update_masters_record", "@masters_Grades", "@masters_percentage", "@masters_institute", "@masters_duration", "@masters_duration_END", ed, "@masters_degree");


            }


            Label1.Text = s;

        } //btnevent end...................................







         public string gradesfinder(string per)
        {
            int x = int.Parse(per);
            string s = "";
            if (x>=50)
            {
                if (x>=80 )
                {
                    s = "A1";
                }
                else if (x<80 && x>=70)
                {
                    s = "A";   
                }

                else if (x < 70 && x >= 60)
                {
                    s = "B";
                }

                else if (x < 60 && x >= 50)
                {
                    s = "C";
                }

                else if (x < 50 && x >= 40)
                {
                    s = "D";
                }



            }//if end
            return s;
        }//method end








    }
}