<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cvtempaspx.aspx.cs" Inherits="myproject.cvtempaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="css/StyleSheet3.css" rel="stylesheet" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    
   <div id="wrapper" class="container">
    
      <div class="col-lg-push-12" >

          <div class="col-md-4"> 
              <div class="form-group">

                  <asp:Image ID="Image1" src="img/person-2-thumbnail.jpg" runat="server" CssClass="img-responsive" />

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

              <h1>  <span class="glyphicon glyphicon-leaf"> </span> Skills</h1>


               <h2>
                   <asp:Label ID="Label2" runat="server" Text="Html"></asp:Label></h2>
  <div class="progress">

    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:50%">
      100% Complete (info)
    </div>
  </div>
  


  <h2>
                   <asp:Label ID="Label3" runat="server" Text="Css"></asp:Label></h2>
  <div class="progress">

    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:50%">
      80% Complete (info)
    </div>
  </div>
  

  <h2>
                   <asp:Label ID="Label4" runat="server" Text="JavaScript"></asp:Label></h2>
  <div class="progress">

    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:50%">
      70% Complete (info)
    </div>
  </div>
  





  <h2>
                   <asp:Label ID="Label5" runat="server" Text="Jquery"></asp:Label></h2>
  <div class="progress">

    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%">
      50% Complete (info)
    </div>
  </div>
  





















          </div>


          <div class="col-md-8"> 

          <div class="col-md-8 container"> 

               <h1 ><span class="glyphicon glyphicon-paperclip"> </span>Professional Experience</h1>


                   <div class="form-group">

  <h3><span class="glyphicon glyphicon-envelope"> </span><asp:Label ID="Label6" runat="server" Text="Front End Developer" class="formitem"></asp:Label>
      </h3>        
              </div>


              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label7" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label8" runat="server" Text="orem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste."></asp:Label>
              </blockquote>


                <div class="form-group">

  <h3><span class="glyphicon glyphicon-envelope"> </span><asp:Label ID="Label9" runat="server" Text="Front End Developer" class="formitem"></asp:Label>
      </h3>        
              </div>


              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label10" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label11" runat="server" Text="orem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste."></asp:Label>
              </blockquote>





                <div class="form-group">

  <h3><span class="glyphicon glyphicon-envelope"> </span><asp:Label ID="Label12" runat="server" Text="Front End Developer" class="formitem"></asp:Label>
      </h3>        
              </div>


              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label13" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label14" runat="server" Text="orem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste."></asp:Label>
              </blockquote>








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

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label18" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label19" runat="server" Text="Department Of Computer Science."></asp:Label>
              </blockquote>


              
                   <div class="form-group">

  <span class="glyphicon glyphicon-calendar"> </span><asp:Label ID="Label20" runat="server" Text="Jan,2015-current" class="formitem"></asp:Label>
              
              </div>

              <blockquote>
                  <asp:Label ID="Label21" runat="server" Text="Department Of Computer Science."></asp:Label>
              </blockquote>


              
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
