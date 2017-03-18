<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pannel.aspx.cs" Inherits="myproject.job_poster.pannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Pannel</title>

    <style>

 body{
     margin:0 auto;
     padding:0px;
     background-color:#808080;
     background-image:url('../photos/White-Light-plain-Background-Design-Download.jpg');

     background-size:100% 100% ;

 }
 #wrapper{
        
     margin:0 auto;
     padding:0px;
    
     width:80%;
     height:auto;
 background-image:url('../img/registration_banner_img.png');
 }      
  header
  {
     background-color:#ffd800;
     width:100%;
     height:100px;
     background-image:url('../img/registration_banner_img.png');
     background-size:100% 100px ;
 
      }
  #contentofbody {
  
   
     width:100%;
     height:1000px;
       background-image:url('../photos/White-Light-plain-Background-Design-Download.jpg');
  background-size:100% 1000px ;
  }
 


        
   </style>
      <link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
    <form id="form1" runat="server">
    <div id="wrapper">
    
        <header></header>
        <div id="contentofbody">

            <div class="col-lg-3" style="height:100%;border:1px solid black">

                 <div class="container" style="width:100%;" id="changepro">
  <h3>Admin Pannel</h3>
  <p>Select Tab To cahnge your Profile Information</p>
  <ul class="nav nav-pills nav-stacked" >
    <li ><asp:Button ID="Button1" runat="server" Text="Log Out!" CssClass="btn btn-info btn-group-lg" OnClick="Button1_Click" Width="157px" /></li>
      
    <li><asp:Button ID="Button2" runat="server" Text="View Resumes" CssClass="btn btn-info btn-group-lg"  Width="157px" OnClick="Button2_Click" /> </li>
    <li><asp:Button ID="Button3" runat="server" Text="Admin Pannel" CssClass="btn btn-info btn-group-lg" Width="157px" OnClick="Button3_Click" /> </li>
    <li><asp:Button ID="Button5" runat="server" Text="Close a job" CssClass="btn btn-info btn-group-lg"  Width="157px" OnClick="Button5_Click" /> </li>
  </ul>
</div>


<img src="../img/123.jpg" style="width:100%;height:600px;margin-top:50px;" />









            </div>

            <div class="col-lg-9" style="height:100%;border:1px solid black">




                  <div class="form-group hideit"  style="padding-top:40px;display:none">
    
                       <label>Comapny Name</label>

                <div class="col-lg-12">

                    <div class="col-lg-8"><asp:TextBox ID="txt_companyname"  runat="server" Class="form-control"  placeholder="Company Name"></asp:TextBox>
                        
                    </div>
                    

                </div>
                      
            </div>


                         <div class="form-group showit"  style="padding-top:40px;">

      <label>Comapny Name</label>

                <div class="col-lg-12 ">

                    <div class="col-lg-8 ">
                         <asp:DropDownList ID="DropDownList3" runat="server" Class="form-control" DataSourceID="SqlDataSource1" DataTextField="company_name" DataValueField="company_name"></asp:DropDownList>

                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT [company_name] FROM [company_name_tbl] WHERE ([company_login_id_fk] = @company_login_id_fk)">
                             <SelectParameters>
                                 <asp:SessionParameter Name="company_login_id_fk" SessionField="company_fk_posterid" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>

                    </div>
                     
                </div>
                      
            </div>
                       <div class="form-group "  style="padding-top:40px;">

   

                <div class="col-lg-12 ">

                   <div  class="col-lg-8">
                          <asp:CheckBox ID="CheckBox1" runat="server"  Text="Insert New Company Name" OnCheckedChanged="CheckBox1_CheckedChanged" /></div>

                     
                </div>
                      
            </div>
                 

             
                
                <div class="form-group hideit" style="padding-top:40px;display:none">
      <label>Company Description</label>

                <div class="col-lg-12" >

                    <div  class="col-lg-8"><asp:TextBox ID="txt_description" runat="server" Class="form-control"  placeholder="Company Description" TextMode="MultiLine"></asp:TextBox></div>


                </div>



            </div>

                <br />
                <br />




                   <div class="form-group"  style="padding-top:40px;">
      <label>Job Title</label>

                <div class="col-lg-12">

                    <div class="col-lg-8"><asp:TextBox ID="txtjob_title" runat="server" Class="form-control"  placeholder="Company Name"></asp:TextBox></div>
                    
                    


                </div>



            </div>

                
                <div class="form-group" style="padding-top:40px;">
      <label>Job Description</label>

                <div class="col-lg-12" >

                    <div class="col-lg-8"><asp:TextBox ID="txt_job_desc" runat="server" Class="form-control"  placeholder="Company Description" TextMode="MultiLine"></asp:TextBox></div>


                </div>



            </div>



                
            



                  <div class="form-group">
      <label for="usr">Functional Area</label>
               <asp:DropDownList ID="ddlfunctionalarea" runat="server" Class="form-control">
                   <asp:ListItem>Software</asp:ListItem>
                   <asp:ListItem>Hardware</asp:ListItem>
                   <asp:ListItem>Networking</asp:ListItem>
               </asp:DropDownList>
   
                       </div>

                 <div class="form-group">
      <label for="pwd">What Sort of Job U want :</label>
               <asp:DropDownList ID="ddljobsort" runat="server" Class="form-control">
                   <asp:ListItem>Programming</asp:ListItem>
                   <asp:ListItem>non Programming</asp:ListItem>
                 </asp:DropDownList>
              
          </div>




                       <div class="form-group">
      <label for="pwd">Which Area You want to work In :</label>
               <asp:DropDownList ID="ddlcitywork" runat="server" Class="form-control">
                   <asp:ListItem>NoRTH kARACHI</asp:ListItem>
                   <asp:ListItem>Shah rA E FAISAL</asp:ListItem>
                   <asp:ListItem>Nazimabad</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


                   <div class="form-group">
      <label for="pwd">Country :</label>
               <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control">
                   <asp:ListItem>Pakistan</asp:ListItem>
                   <asp:ListItem>India</asp:ListItem>
                   <asp:ListItem>U.k</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


              <div class="form-group">
      <label for="pwd">City :</label>
               <asp:DropDownList ID="DropDownList2" runat="server" Class="form-control">
                   <asp:ListItem>Karachi</asp:ListItem>
                   <asp:ListItem>Lahore</asp:ListItem>
                   <asp:ListItem>Islamabad</asp:ListItem>
                 </asp:DropDownList>
              
          </div>










                <div class="form-group">
          <div class="col-sm-4"></div>
                         <div class="col-sm-4">   
                 <asp:Button ID="Button4" runat="server" CssClass="btn btn-success btn-lg" Text="Submit!" OnClick="Button4_Click" />
         </div>
                              <div class="col-sm-4"></div>
                           
                   
            </div>
            
                <img src="../img/postJobsBanner.jpg" style="width:100%;height:200px;margin-top:10px;" />









































       



        </div>
       


   
    </form>

    <script>

        $(document).ready(function () {

            $("#CheckBox1").click(function () {
                $("#DropDownList3").toggle();
                $(".hideit").toggle();
                $(".showit").toggle();

            });
        });


    </script>
</body>
</html>
