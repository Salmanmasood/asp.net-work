<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile_profile.aspx.cs" Inherits="myproject.pages.profile_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="css/bootstrap.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../../js/J-QUERY.js"></script>
    <style>
#wrapper{
    margin:0 auto;
    background-color:white;
    width:80%;
    height:auto
        }

body
{
background-color:white;

}

.menu {
	float:left;
	padding:20px 0 0 0;
	margin:0 0 20px 0;
    background-color:#808080;
    width:100%;
}
.menu ul {
	padding:0px 0 0 0;
}
.menu li {
	list-style:none;
	display:inline;
	padding: 0 15px;
} 
.menu li a {
	text-decoration:none;
	color:#ffffff;
	font-size:14px;
	padding:10px;
}
.menu li a:hover {
	text-decoration:none;
	color:#ffffff;
	font-size:14px;
	background:#ffa800;
	padding:10px;
}
.menu #active a {
	text-decoration:none;
	color:#ffffff;
	font-size:14px;
	background:#ffa800;
	padding:10px;
}

p {
font:"normal 25px 'LucidaGrande';"
 }

.list-group li span {
  
font:"normal 15px 'LucidaGrande';"
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div  id="wrapper">
    
           <div id="nav" >  <!--Start of navigation bar -->
 
<nav class="navbar navbar-inverse" style="background-color:#808080" >
  
    <div class="container-fluid">
        <div class="navbar-header">
            <p class="navbar-brand">Rozgar.com </p>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Jobs</a></li>

        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>


  


</div> <!--End of navigation bar -->

<div class="col-lg-12" style="height:500px;">
    <img  src="../../img/1.jpg" width="100%" height="400px" class="img img-responsive"/>
</div>

<div class=" container" style="width:100%">

<div class="col-lg-3" style="height:1000px;background-color:#dfe0e2">





    <asp:Image ID="Image1" runat="server"  class="media-object" style="width:180px;height:180px;border:2px solid gray;margin-top:5px;box-shadow:10px 10px 5px  "  ImageUrl="~/img/profile.png" />
    
    <asp:Image ID="Image2" runat="server"  class="media-object" style="width:180px;height:180px;border:2px solid gray;margin-top:5px;box-shadow:10px 10px 5px  "   ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
    
    <br />  
     <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <div class="container">
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="btn-info btn-sm"/>
        <br />
        <asp:Button ID="imgupload" runat="server" Text="Upload" CssClass="btn-success" OnClick="imgupload_Click" />

    </div>
    <h3 style="font:normal  'LucidaGrande';">Profile Summary</h3>
    <div class="container" style="width:100%;height:auto;" >
  
      
       <asp:DetailsView ID="DetailsView1" runat="server" Height="63px" Width="100%" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="personal_name" HeaderText="Name" SortExpression="personal_name" />
            <asp:BoundField DataField="column1" HeaderText="Contact" SortExpression="column1" />
            <asp:BoundField DataField="personal_emailid" HeaderText="Email" SortExpression="personal_emailid" />
            <asp:BoundField DataField="personal_address" HeaderText="Residential Address" SortExpression="personal_address" />
            <asp:BoundField DataField="personal_dateofbirth" HeaderText="Date Of Birth" SortExpression="personal_dateofbirth" />
            <asp:BoundField DataField="personal_gender" HeaderText="Gender" SortExpression="personal_gender" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>


       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT [personal_name], [personal_contact#] AS column1, [personal_emailid], [personal_address], [personal_dateofbirth], [personal_gender] FROM [personal_info_login_information] WHERE ([inpersonalinfo_login_id_fk] = @inpersonalinfo_login_id_fk)">
           <SelectParameters>
               <asp:SessionParameter Name="inpersonalinfo_login_id_fk" SessionField="c_img_id" Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
  
      



</div>





  <h3 style="font:normal  'LucidaGrande';">Contact Information</h3>
<div class="container"   style="width:100%;height:auto;">
  
 
         <asp:DetailsView ID="DetailsView2" runat="server" Height="63px" Width="100%" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="professional_functionalarea" HeaderText="professional_functionalarea" SortExpression="professional_functionalarea" />
            <asp:BoundField DataField="professional_experince" HeaderText="professional_experince" SortExpression="professional_experince" />
            <asp:BoundField DataField="professional_area_towork" HeaderText="professional_area_towork" SortExpression="professional_area_towork" />
            <asp:BoundField DataField="professional_want_job_sort" HeaderText="professional_want_job_sort" SortExpression="professional_want_job_sort" />
            <asp:BoundField DataField="professional_salary" HeaderText="professional_salary" SortExpression="professional_salary" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>


         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT [professional_functionalarea], [professional_experince], [professional_area_towork], [professional_want_job_sort], [professional_salary] FROM [professional_info_login_information] WHERE ([inprofessional_login_id_fk] = @inprofessional_login_id_fk2)">
             <SelectParameters>
                 <asp:SessionParameter Name="inprofessional_login_id_fk2" SessionField="c_img_id" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>


</div>





</div> <!--1st div of profile -->

<div class="col-lg-9" style="background-color:#dfe0e2;height:1000px;">



<div class="menu">

<ul>

<li ><a href="#">HOME</a></li>

<li id="active"><a href="#" >Profile</a></li>

<li><a href="#">Tips And Guide</a></li>

<li><a href="#">Jobs</a></li>

<li><a href="#">Alerts</a></li>

</ul>

</div>


<div class=" container" style="width:100%;background-color:#dfe0e2;height:auto;">

<div class="col-lg-6" style="height:auto;background-color:white;border:0.5px solid #dfe0e2">

<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-briefcase"> Experience </span> <input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

<h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

      <%-- work--%>
<div style="width:100%" id="flip1">Click to VIEW MORE</div>

    <div id="panel1"  style="display:none;background-color:#ffa800">
        <img src="../../img/slide1.jpg" style="width:200px;height:200px;"/>

</div>
    


    
   <%-- work--%>


</div>



<div class="col-lg-6" style="height:AUTO;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-education"> Education</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

  <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

      <%-- work--%>
<div style="width:100%" id="flip2">Click to VIEW MORE</div>

    <div id="panel2"  style="display:none;background-color:#ffa800">


</div>
    


    
   <%-- work--%>

  </div>



     



    <div class="col-lg-6" style="height:AUTO;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-info-sign"> Personal Information</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

  <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

      <%-- work--%>
<div style="width:100%" id="flip3">Click to VIEW MORE</div>

    <div id="panel3"  style="display:none;background-color:#ffa800">


</div>
    


    
   <%-- work--%>
</div>



       <div class="col-lg-6" style="height:AUTO;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-earphone"> Contact</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

    <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

      <%-- work--%>
<div style="width:100%" id="flip4">Click to VIEW MORE</div>

    <div id="panel4"  style="display:none;background-color:#ffa800">


</div>
    


    
   <%-- work--%>
</div>








    <div class="col-lg-6" style="height:AUTO;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-grain"> Skills</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>
<h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

      <%-- work--%>
<div style="width:100%" id="flip5">Click to VIEW MORE</div>

    <div id="panel5"  style="display:none;background-color:#ffa800">


</div>
    


    
   <%-- work--%>
  
</div>




</div><!--container div  -->

















































</div><!--2nd div of profile -->
    


   





            </div> <!--container div  -->
















       

       
         <!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>Bootstrap Theme Made By <a href="theideassolution@gmail.com">Ideas Solution</a></p> 
</footer>



    </div> <!--End of wrapper -->
    </form>





    
<script> 
$(document).ready(function(){
    $("#flip1").click(function(){
        $("#panel1").slideToggle("slow");
    });
});
</script> 
<script> 

$(document).ready(function () {
    $("#flip2").click(function () {
        $("#panel2").slideToggle("slow");
    });
});
</script> 
    <script> 

$(document).ready(function () {
    $("#flip3").click(function () {
        $("#panel3").slideToggle("slow");
    });
});
</script> 
    <script> 

$(document).ready(function () {
    $("#flip4").click(function () {
        $("#panel4").slideToggle("slow");
    });
});
</script> 
    <script> 

$(document).ready(function () {
    $("#flip5").click(function () {
        $("#panel5").slideToggle("slow");
    });
});

</script>
</body>
</html>
