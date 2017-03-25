<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cvtempaspx.aspx.cs" Inherits="myproject.cvtempaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="../css/StyleSheet3.css" rel="stylesheet" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>

#Image1
{
height:150px;
width:150px;

}

   </style>


</head>
<body>
    <form id="form1" runat="server">
    
   <div id="wrapper" class="container">
    
      <div class="col-lg-push-12" >

          <div class="col-md-4"> 
              <div class="form-group">

                  <asp:Image ID="Image1" src="../img/profile.png" runat="server" CssClass="img-responsive"  />

              </div>
              <h1 ><span class="glyphicon glyphicon-user"> </span>Personal Info</h1>

              <div class="form-group">

  <h1><kbd><asp:Label ID="name" runat="server" Text="Name: Salman Masood"  ></asp:Label></kbd> </h1>
              </div>

              <div class="form-group">

  <span class="glyphicon glyphicon-envelope"> </span><asp:Label ID="Email" runat="server" Text="Email: salmanmasood@aptechnk.com" class="formitem"></asp:Label>
              
              </div>

              <div class="form-group">

  <span class="glyphicon glyphicon-home"> </span><asp:Label ID="address" runat="server" Text="Address:Karachi,Pakistan "  class="formitem"></asp:Label>
              
              </div>


                <div class="form-group">

  <span class="glyphicon glyphicon-briefcase"> </span><asp:Label ID="job" runat="server" Text="Developer"  class="formitem"></asp:Label>
              
              </div>


                <div class="form-group">

  <span class="glyphicon glyphicon-earphone"> </span><asp:Label ID="Label1" runat="server" Text="Phone: 03412145194"  class="formitem"></asp:Label>
              
              </div>




              <hr />

              <h3>  <span class="glyphicon glyphicon-leaf"> </span> Skills</h3>

                <div class="form-group">

  <span class="glyphicon glyphicon-earphone"> </span><asp:Label ID="skills" runat="server" Text="Html,css,javascript"  class="formitem"></asp:Label>
              
              </div>



              
              <hr />

              <h3>  <span class="glyphicon glyphicon-leaf"> </span> Professional Experience</h3>

                <div class="form-group">

  <span class="glyphicon glyphicon-earphone"> </span><asp:Label ID="experience" runat="server" Text="1 YEARS"  class="formitem"></asp:Label>
              
              </div>


              
              <hr />

              <h3>  <span class="glyphicon glyphicon-leaf"> </span> Functional Area</h3>

                <div class="form-group">

  <span class="glyphicon glyphicon-earphone"> </span><asp:Label ID="FunctionalArea" runat="server" Text="1 YEARS"  class="formitem"></asp:Label>
              
              </div>


              <h3>  <span class="glyphicon glyphicon-leaf"> </span> Date Of Birth</h3>

                <div class="form-group">

  <span class="glyphicon glyphicon-earphone"> </span><asp:Label ID="dob" runat="server" Text="1 YEARS"  class="formitem"></asp:Label>
              
              </div>

















          </div>


          <div class="col-md-8"> 

          <div class="col-md-8 container"> 

               <h1 ><span class="glyphicon glyphicon-paperclip"> </span>Professional Experience</h1>


             





          </div><%-- container end--%>


              
          <div class="col-md-8 container"> 


               <h1 ><span class="glyphicon glyphicon-paperclip"> </span>Education</h1>


                   <div class="form-group">

  <h3><span class="glyphicon glyphicon-blackboard"> </span><asp:Label ID="Label15" runat="server" Text="MCS" class="formitem"></asp:Label>
      </h3>        
              </div>


              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label16" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label17" runat="server" Text="Department Of Computer Science."></asp:Label>
              </blockquote>

               <div class="form-group">

  <h3><span class="glyphicon glyphicon-blackboard"> </span><asp:Label ID="Label2" runat="server" Text="BSC" class="formitem"></asp:Label>
      </h3>        
              </div>

                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label18" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label19" runat="server" Text="Department Of Computer Science."></asp:Label>
              </blockquote>



              <div class="form-group">

  <h3><span class="glyphicon glyphicon-blackboard"> </span><asp:Label ID="Label3" runat="server" Text="hsc" class="formitem"></asp:Label>
      </h3>        
              </div>
              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label20" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label21" runat="server" Text="Department Of Computer Science."></asp:Label>
              </blockquote>

              <div class="form-group">

  <h3><span class="glyphicon glyphicon-blackboard"> </span><asp:Label ID="Label4" runat="server" Text="hsc" class="formitem"></asp:Label>
      </h3>        
              </div>
              
              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label22" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label23" runat="server" Text="Department Of Computer Science."></asp:Label>
              </blockquote>















          </div> <%--2nd container end--%>











          
          
          </div>





      </div>






    </div>

    </form>
</body>
</html>
