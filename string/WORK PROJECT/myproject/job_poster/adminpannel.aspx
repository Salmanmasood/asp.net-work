<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpannel.aspx.cs" Inherits="myproject.job_poster.adminpannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
body,#wrapper
{
margin:0 auto;
padding:0px;
}




</style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper" style="width:100%;height:1000px;">
    


        <div class=" container" style="width:100%">

<div class="col-lg-3" style="height:1000px;background-color:#dfe0e2">


 <div class="container" style="width:100%;" id="changepro">
  <h3>Change Your Profile</h3>
  <p>Select Tab To cahnge your Profile Information</p>
  <ul class="nav nav-pills nav-stacked" >
    <li class="active" ><a href="Experience.aspx">Experience</a></li>
    <li ><a href="education_edit.aspx">Education</a></li>
    <li><a href="contact_edit.aspx">Contact Information</a></li>
    <li><a href="personal_edit.aspx">Personal Information</a></li>
  </ul>
</div>


 



</div> <!--1st div of profile -->

<div class="col-lg-9" style="background-color:#dfe0e2;height:1000px;">




    <div style="background-color:white;height:1000px; width:100%;border:1px solid  #808080">

        <img src="../../img/exper.jpg" style="height:100px;width:100%;" class="img-responsive"/>
        </div>


</div><!--2nd div of profile -->























    
</div><!--container div  -->







    </div> <%--div end--%>
    </form>
</body>
</html>
