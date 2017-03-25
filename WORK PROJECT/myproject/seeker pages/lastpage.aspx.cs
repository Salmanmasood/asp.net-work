using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class lastpage : System.Web.UI.Page
    {
        //string[] a = new string[4];

        string[] months = new string[] { "Januray", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
    
        int[] percentage = new int[5];
        string[] ssc = new string[5+2];
        string[] hsc = new string[5 + 2];
        string[] grad = new string[5 + 2];
        string[] masters = new string[5 + 2];
        protected void Page_Load(object sender, EventArgs e)
        {

            int x = 5;

            for (int i = 0; i < percentage.Length; i++)
            {
                percentage[i] = x * 10;
                ddlper_ssc.Items.Add(percentage[i].ToString() );
                DropDownList2.Items.Add(percentage[i].ToString() );
                DropDownList4.Items.Add(percentage[i].ToString() );
                DropDownList6.Items.Add(percentage[i].ToString() );
                x++;
            }


            //for YEARS IN COMBOBOX....
            for (int i = 1990; i < DateTime.Now.Year; i++)
            {
                DropDownList0.Items.Add(i.ToString());
                DropDownList7.Items.Add(i.ToString());
                DropDownList1.Items.Add(i.ToString());
                DropDownList8.Items.Add(i.ToString());
                DropDownList3.Items.Add(i.ToString());
                DropDownList10.Items.Add(i.ToString());
                DropDownList5.Items.Add(i.ToString());
                DropDownList11.Items.Add(i.ToString());




            }



        } //load event end..........................................

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
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            loginmethod();


            Returnclass rc = new Returnclass();
            string y = rc.scalarReturn("select max(login_id) from login_information");
            Session["c_img_id"] = y.ToString();
            Session["scc_ins"] = txtinsti_ssc.Text;
            Session["hsc_ins"] = txtinsti_hsc.Text;
            Session["grad_ins"] = txt_insti_grad.Text;
            Session["masters_ins"] = txt_insti_master.Text;
            Session["scc_percentage"] = ddlper_ssc.SelectedItem.ToString();
            Session["scc_grades"] = gradesfinder(Session["scc_percentage"].ToString());
            Session["hsc_percentage"] = DropDownList2.SelectedItem.ToString();
            Session["hsc_grades"] = gradesfinder(Session["hsc_percentage"].ToString());
            Session["grad_percentage"] = DropDownList4.SelectedItem.ToString();
            Session["grad_grades"] = gradesfinder(Session["grad_percentage"].ToString());
            Session["masters_percentage"] = DropDownList6.SelectedItem.ToString();
            Session["masters_grades"] = gradesfinder(Session["masters_percentage"].ToString());

            //for educational
            Session["ssc"] = txtdeg_ssc.Text;
            Session["hsc"] = txtdeg_hsc.Text;
            Session["grad"] = txt_deg_grad.Text;
            Session["masters"] = txt_deg_master.Text;
            //for educational
            //code......................................
            ssc[0] = Session["scc_grades"].ToString();
            ssc[1] = Session["scc_percentage"].ToString();
            ssc[2] = Session["scc_ins"].ToString();
            ssc[3] = Session["c_img_id"].ToString();
            ssc[4] = Session["ssc"].ToString();
            ssc[5] = DropDownList0.SelectedItem.ToString();
            ssc[6] = DropDownList7.SelectedItem.ToString();
            //hsc
            hsc[0] = Session["hsc_grades"].ToString();
            hsc[1] = Session["hsc_percentage"].ToString();
            hsc[2] = Session["hsc_ins"].ToString();
            hsc[3] = Session["c_img_id"].ToString();
            hsc[4] = Session["hsc"].ToString();
            hsc[5] = DropDownList1.SelectedItem.ToString();
            hsc[6] = DropDownList8.SelectedItem.ToString();

            //grad
            grad[0] = Session["grad_grades"].ToString();
            grad[1] = Session["grad_percentage"].ToString();
            grad[2] = Session["grad_ins"].ToString();
            grad[3] = Session["c_img_id"].ToString();
            grad[4] = Session["grad"].ToString();
            grad[5] = DropDownList3.SelectedItem.ToString();
            grad[6] = DropDownList10.SelectedItem.ToString();

            //masters
            masters[0] = Session["masters_grades"].ToString();
            masters[1] = Session["masters_percentage"].ToString();
            masters[2] = Session["masters_ins"].ToString();
            masters[3] = Session["c_img_id"].ToString();
            masters[4] = Session["masters"].ToString();
            masters[5] = DropDownList5.SelectedItem.ToString();
            masters[6] = DropDownList11.SelectedItem.ToString();
            
            //code......................................


            personalinfomethod();
            professionalinfomethod();
            certificationalinfomethod(demo.Text);

            if (txt_deg_master.Text!= " " && txt_insti_master.Text!=" ")
            {
                insert_data da3 = new insert_data();
                da3.insert_s_h_m_g("@masters_Grades", "@masters_percentage", "@masters_institute", "@masters_degree", "@masters_fk_id", "@masters_duration", "@masters_duration_end", "insert_masters_record", masters);
            
    
            }
            if (txt_deg_grad.Text!=" " && txt_insti_grad.Text!=" ")
            {
                insert_data da2 = new insert_data();
                da2.insert_s_h_m_g("@grad_Grades", "@grad_percentage", "@grad_institute", "@grad_degree", "@grad_fk_id", "@grad_duration", "@grad_duration_end", "insert_grad_record", grad);
                
            }

            if (txtdeg_hsc.Text!=" " && txtinsti_hsc.Text!=" ")
            {
                insert_data da1 = new insert_data();
                da1.insert_s_h_m_g("@hsc_Grades", "@hsc_percentage", "@hsc_institute", "@hsc_degree", "@hsc_fk_id", "@hsc_duration", "@HSC_duration_END", "insert_hsc_record", hsc);
                
            }

            if (txtinsti_ssc.Text!=" " && txtdeg_ssc.Text!=" ")
            {
                insert_data da = new insert_data();
                da.insert_s_h_m_g("@ssc_Grades", "@ssc_percentage", "@ssc_institute", "@ssc_degree", "@ssc_fk_id", "@scc_duration", "@scc_duration_END", "insert_scc_record", ssc);
                
            }
            

            //method calling for file uploaad..................................................................
            if (FileUpload1.HasFile)
            {
                fileuploadmethod(FileUpload1, Session["userid"].ToString());
                
            }
        
            //...................................................................................................

            Label1.Text = "success";
           Response.Redirect("~/Index.aspx");







               





        } //btn event end..........................

        //login method..................


        public bool loginmethod()
        {

            bool x = false;
            try
            {
                //login info
                insert_data loginmethod = new insert_data();
                loginmethod.insert_loginmethod(Session["userid"].ToString(), Session["password"].ToString(), "splogin");
                //login info
                x = true;
            }
            catch (Exception)
            {

                x = false;
            }

            return x;
        }
        //login method..................






        //perosnalinfo method..................
        public bool personalinfomethod()
        {

            bool x = false;
            try
            {
                //personal info
                string[] personal = new string[10];
                personal[0] = Session["username"].ToString();
                personal[1] = Session["contact"].ToString();
                personal[2] = Session["emailid"].ToString();
                personal[3] = Session["address"].ToString();
                personal[4] = Session["Dob"].ToString();
                personal[5] = Session["gender"].ToString();
                personal[6] = Session["c_img_id"].ToString();
                insert_data personalmethod = new insert_data();
                personalmethod.insert_personalinfo(personal);
                //personal info

                x = true;
            }
            catch (Exception)
            {

                x = false;
            }

            return x;
        }
        //personal method..................





        //professional method
        public bool professionalinfomethod()
        {

            bool x = false;
            try
            {
                //personal info
                string[] professional = new string[7];
                professional[0] = Session["functtionalarea"].ToString();
                professional[1] = Session["currentsalary"].ToString();
                professional[2] = Session["workexperience"].ToString();
                professional[3] = Session["desiredsalary"].ToString();
                professional[4] = Session["jobsort"].ToString();
                professional[5] = Session["workcity"].ToString();
                professional[6] = Session["c_img_id"].ToString();


                insert_data personalmethod = new insert_data();
                personalmethod.insert_professionalinfo(professional);
                //personal info

                x = true;
            }
            catch (Exception)
            {

                x = false;
            }

            return x;
        }

        //professional method












        //certificationl method
        public bool certificationalinfomethod(string skills)
        {

            bool x = false;
            try
            {
                
                //educationa info
                string[] arr = skills.Split(',');


                insert_data certimethod = new insert_data();


                for (int i = 0; i < arr.Length; i++)
                {

                    certimethod.insert_certificate(arr[i], Session["c_img_id"].ToString());

                }

                //educationnal info

                x = true;
            }
            catch (Exception)
            {

                x = false;
            }

            return x;
        }

        //certificationl method.....












       

        //method of file uploading.................................................................................................
        public string fileuploadmethod(FileUpload fileupload1, string id)
        {
            string s = "";
            // If the user has selected a file
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".doc" && fileExtension.ToLower() != ".docx" && fileExtension.ToLower() != ".rtf")
                {
                    //  lblMessage.ForeColor = System.Drawing.Color.Red;
                    s = "Only files with .doc and .docx extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                        s = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + id + FileUpload1.FileName));
                        s = "File uploaded successfully";
                    }
                }
            }
            else
            {

                s = "Please select a file";
            }

            return s;
        } //method end.///////














    }
}