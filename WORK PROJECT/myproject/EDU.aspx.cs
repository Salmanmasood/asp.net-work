using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class EDU : System.Web.UI.Page
    {
        string []a=new string [4];
        int[] percentage = new int[5];
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = 5;
            a[0]="A+";
            a[1] = "A";
            a[2] = "B";
            a[3] = "C";

            for (int i = 0; i < a.Length; i++)
            {
                ddlgrades_ssc.Items.Add(a[i].ToString());
                DropDownList1.Items.Add(a[i].ToString());
                DropDownList3.Items.Add(a[i].ToString());
                DropDownList5.Items.Add(a[i].ToString());

            }
            for (int i = 0; i < percentage.Length; i++)
            {
                percentage[i] = x * 10;
                ddlper_ssc.Items.Add(percentage[i].ToString() + " % Above");
                DropDownList2.Items.Add(percentage[i].ToString() + " % Above");
                DropDownList4.Items.Add(percentage[i].ToString() + " % Above");
                DropDownList6.Items.Add(percentage[i].ToString() + " % Above");
                x++;
            }
            
            

           


        } //load event end....................


        protected void ddlfunctionalarea_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
           Returnclass rc = new Returnclass();
          string x= rc.scalarReturn("select max(login_id) from login_information");
          int y = int.Parse(x);
            y=y+1;
            Session["fk_login_id"] =y.ToString() ;

            Session["ssc"] = txtssc.Text;
            //Session["hsc"] = txthsc.Text;
            //Session["grad"] = txtgrad.Text;
            //Session["masters"] = txtmasters.Text;
         string s=  callallmethods(demo.Text);
           //method calling for file uploaad..................................................................
            fileuploadmethod(FileUpload1, Session["userid"].ToString());
//...................................................................................................


            Response.Write(s);










        } //btn event end here  

        //login method..................
        public bool loginmethod()
        {

            bool x = false;
            try
            {
                //login info
                insert_data loginmethod = new insert_data();
                loginmethod.insert_loginmethod(Session["username"].ToString(), Session["password"].ToString());
                //login info
                x = true;
            }
            catch(Exception)
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
                personal[6] = Session["fk_login_id"].ToString();
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
                professional[6] = Session["fk_login_id"].ToString();


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





        //educational method
        public bool educationalinfomethod()
        {

            bool x = false;
            try
            {
                //educationa info

                  string[] educational=new string[6];
                educational[0] = Session["ssc"].ToString();
                educational[1] = Session["hsc"].ToString();
                educational[2] = Session["grad"].ToString();
                educational[3] = Session["masters"].ToString();
                educational[4] = Session["phd"].ToString();
                educational[5] = Session["fk_login_id"].ToString();



                insert_data eudcaionalmethod = new insert_data();
                eudcaionalmethod.insert_personalinfo(educational);
                //educationnal info

                x = true;
            }
            catch (Exception)
            {

                x = false;
            }

            return x;
        }

        //educational method......








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

                    certimethod.insert_certificate(arr[i], Session["fk_login_id"].ToString());

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

        //certificationl method......


















        public string callallmethods(string j)
        {

            bool x, y, z, a, c;
            x = loginmethod();
            y = personalinfomethod();
            z = professionalinfomethod();
            a = educationalinfomethod();
            c = certificationalinfomethod(j);

            string s = " ";
            if (x==false)
            {
                s = "Error at login method....";

            }

            if (y == false)
            {
                s = s+ " Error at personal method....";

            }


            if (z == false)
            {
                s = s + " Error at professional method....";

            }


            if (a == false)
            {
                s = s + " Error at educational method....";

            }


            if (c == false)
            {
                s = s + " Error at certificational method....";

            }

            else
            {
                s = "data is inserted successfully";
            }

            return s;
        
        } //method end.................................




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