using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace myproject.pages
{
    public partial class profile_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            Returnclass ob = new Returnclass();

            ViewState["imageid"] = ob.scalarReturn("select max(id) from tblImages_login_info where inimage_login_id_fk=1");
            Session["id_fk"] = 1;
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
                    Value = Session["id_fk"].ToString()
                };
                cmd.Parameters.Add(paramif_fk);


                con.Open();

                byte[] bytes = (byte[])cmd.ExecuteScalar();
                string strBase64 = Convert.ToBase64String(bytes);
                Image2.ImageUrl = "data:Image/png;base64," + strBase64;

            }






        }//load event end................





    }
}