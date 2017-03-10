using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace myproject.pages
{
    public partial class profile_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
            Returnclass re = new Returnclass();
            string s = re.scalarReturn("select max(id) from tblImages_login_info where inimage_login_id_fk=" + Session["c_img_id"].ToString());
            if (s != "")
            {

                Image1.Visible = false;
                Image2.Visible = true;


                Returnclass ob = new Returnclass();

                ViewState["imageid"] = ob.scalarReturn("select max(id) from tblImages_login_info where inimage_login_id_fk=" + Session["c_img_id"]);

                string cs = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spGetImageById", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramId = new SqlParameter()
                    {
                        ParameterName = "@Id",
                        Value = ViewState["imageid"].ToString()
                    };
                    cmd.Parameters.Add(paramId);

                    SqlParameter paramif_fk = new SqlParameter()
                    {
                        ParameterName = "@inimage_login_id_fk",
                        Value = Session["c_img_id"].ToString()
                    };
                    cmd.Parameters.Add(paramif_fk);


                    con.Open();

                    byte[] bytes = (byte[])cmd.ExecuteScalar();
                    string strBase64 = Convert.ToBase64String(bytes);
                    Image2.ImageUrl = "data:Image/png;base64," + strBase64;

                }

            }

            //if end here ...........................

            else
            {

                Image2.Visible = false;
                Image1.Visible = true;


            }



        }

        protected void imgupload_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                string cs = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spUploadImage", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramName = new SqlParameter()
                    {
                        ParameterName = @"Name",
                        Value = filename
                    };
                    cmd.Parameters.Add(paramName);

                    SqlParameter paramSize = new SqlParameter()
                    {
                        ParameterName = "@Size",
                        Value = fileSize
                    };
                    cmd.Parameters.Add(paramSize);

                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);




                    cmd.Parameters.Add("@inimage_login_id_fk", SqlDbType.Int).Value = Session["c_img_id"].ToString();



                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    // Session["userid"] = "ttt";
                    Response.Redirect("~/seeker pages/pages/home_profile.aspx");

                }
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";

            }
        }//load event end................









    }
}