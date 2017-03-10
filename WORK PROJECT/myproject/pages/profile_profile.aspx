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
    <img  src="../img/cover.jpg" width="100%" height="500px"/>
</div>

<div class=" container" style="width:100%">

<div class="col-lg-3" style="height:1000px;background-color:#dfe0e2">






    <asp:Image ID="Image2" runat="server"  class="media-object" style="width:180px;height:180px;border:2px solid gray;margin-top:5px;box-shadow:10px 10px 5px  "   ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
    <h3 style="font:normal  'LucidaGrande';">Profile Summary</h3>
  <div class="container col-lg-12" >
  
  <ul class="list-group">
    <li class="list-group-item"><span class="glyphicon glyphicon-paperclip"> id:xpe-4321</span> </li>
    <li class="list-group-item"><span class="glyphicon glyphicon-eye-open"> Progress:60%</span></li>
    <li class="list-group-item"><span class="glyphicon glyphicon-cog"> Status:Seeker</span></li>
  </ul>
</div>





  <h3 style="font:normal  'LucidaGrande';">Contact Information</h3>
  <div class="container col-lg-12" >
  
  <ul class="list-group">
    <li class="list-group-item"><span class="glyphicon glyphicon-paperclip"> id:xpe-4321</span> </li>
    <li class="list-group-item"><span class="glyphicon glyphicon-phone"> Phone:03412145194 </span></li>
    <li class="list-group-item"><span class="glyphicon glyphicon-envelope" style="font-size:11px;color:#ffa800"> Email:Theideassolution@gmail.com</span> </li>
  </ul>
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



<div class=" container" style="width:100%;background-color:#dfe0e2;height:1000px;">

<div class="col-lg-6" style="height:250px;background-color:white;border:0.5px solid #dfe0e2">

<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-briefcase"> Experience </span> <input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

<h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>


<div style="width:100%">

 <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Show More!</button>
  <div id="demo" class="collapse">
   <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

  </div>
    

</div>



</div>



<div class="col-lg-6" style="height:250px;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-education"> Education</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

    <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>
     <div style="width:100%">

 <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo2">Show More!</button>
  <div id="demo2" class="collapse">
   <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

  </div>
</div>
  
</div>



     



    <div class="col-lg-6" style="height:250px;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-info-sign"> Personal Information</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

    <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>
     <div style="width:100%">

 <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo4">Show More!</button>
  <div id="demo4" class="collapse">
   <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

  </div>
</div>
  
</div>



       <div class="col-lg-6" style="height:250px;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-earphone"> Contact</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

    <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>
     <div style="width:100%">

 <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo5">Show More!</button>
  <div id="demo5" class="collapse">
   <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>

  </div>
</div>
  
</div>








    <div class="col-lg-6" style="height:250px;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-grain"> Skills</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

    <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>
 
</div>



       <div class="col-lg-6" style="height:250px;background-color:white;border:0.5px solid #dfe0e2"">
<h3 style="font:normal  'LucidaGrande';"><span class="glyphicon glyphicon-book"> Dimploma</span><input type="button" value="Edit" class="btn btn-info btn-xs" style="margin-left:20px;"/></h3>

    <h5>Company Name: </h5>

<h5>Job Title : </h5>

<h5>From 25 dec to present </h5>
  
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

</body>
</html>
