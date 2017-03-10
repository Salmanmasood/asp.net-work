<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewjobsbyallusers.aspx.cs" Inherits="myproject.viewjobsbyallusers" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
body
{

margin:0 auto;
padding:0px;
}
#wrapper
{
width:100%;
height:auto;
background-color:#f1e7e7;


}
.labeld
{
color:#110ff2;


}
    </style>

      <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
         <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>

    <div id="wrapper" >

        <div class="container">

            <div class="col-md-12" style="height:200px;">
                <img src="img/img-4119.jpg" style="width:100%;height:200px;" class="img img-responsive img-thumbnail" />
            </div>

            <div class="col-md-12" style="height:auto;min-height:50px">

            </div>


        <div class="col-md-12" style="height:auto;">

            <div class="col-md-8" style="height:auto;">

                <div style="margin-top:100px;margin-bottom:50px;border:inset">
              <asp:Image ID="Image1"  ImageUrl="~/img/profile.png" runat="server" Style="width:100%;height:500px;" CssClass="img img-responsive" />
                <asp:Image ID="Image2" runat="server" Style="width:100%;height:500px;" CssClass="img img-responsive" />

                    </div>

                

                    
                 <div class="form-group">
                      <div class="input-group">
        
                    <asp:Label ID="lblMessage" runat="server" class="labeld" Text=""></asp:Label>
                      </div>
     
                     </div>


                             
                 <div class="form-group">
                      <div class="input-group">
                       <h4>Job Title: <small>
                          <asp:Label ID="Label1" class="labeld" runat="server" Text="Label" DataSourceID="SqlDataSource1" ></asp:Label>

                   </small></h4>
                      </div>     
                     </div>


        

                    <div class="form-group">
                      <div class="input-group">
                         <h4>Job Description:</h4>                  
                          <asp:Label ID="jobdesc" runat="server" class="labeld" Text="Label"></asp:Label>
                      </div>     
                     </div>




        </div> 


           












            <div class="col-md-4"style="height:auto;margin-top:100px;">
               
                 <div class="form-group">
                      <div class="input-group">
                         <h4> Company Name:</h4>                  
                          <asp:Label ID="lblcompanyname" class="labeld" runat="server" Text="Axact Pvt Ltd"></asp:Label>
                      </div>     
                     </div>

                 <div class="form-group">
                      <div class="input-group">
                         <h4>Company Description:</h4><p>                  
                          <asp:Label ID="Label2" runat="server" class="labeld" Text="i m getting job here ..ameen"></asp:Label>
                    </p>
                      </div>     
                     </div>

                 <div class="form-group">
                      <div class="input-group">
                         <h4>Functional Area:</h4><p>                  
                          <asp:Label ID="lblfunctionalarea" class="labeld" runat="server" Text="Software"></asp:Label>
                    </p>
                      </div>     
                     </div>

                 <div class="form-group">
                      <div class="input-group">
                         <h4>Job Sort:</h4><p>                  
                          <asp:Label ID="lblsortjob" class="labeld" runat="server" Text="Software"></asp:Label>
                    </p>
                      </div>     
                     </div>


                
                 <div class="form-group">
                      <div class="input-group">
                         <h4>Job Location:</h4><p>                  
                          <asp:Label ID="lblcity" class="labeld" runat="server" Text="Karachi"></asp:Label>
                    </p>
                      </div>     
                     </div>


                
                 <div class="form-group">
                      <div class="input-group">
                         <h4>Country:</h4><p>                  
                          <asp:Label ID="lblcountry" class="labeld" runat="server" Text="Pakistan"></asp:Label>
                    </p>
                      </div>     
                     </div>

                
                        <div class="form-group">
                      <div class="input-group">
                         <h4>Country:</h4><p>
                             <asp:Button ID="Button1" runat="server" Text="Apply Now!" CssClass=" btn btn-success" />                  
                          
                    </p>
                      </div>     
                     </div>

                




            </div>





            </div>





    </div>

        </div>
    </form>
</body>
</html>
