<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuP.aspx.cs" Inherits="myproject.signuP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




    <style>


        body
        {
           margin:0 auto;
           padding:0px;
        }
        #wrapper
        {
             background-image:url('photos/building6.jpg');
           background-repeat:no-repeat;           
           background-size: 1960px 960px;
          height:760px;
           

        }
        #form
        {
            margin:0 auto;
            width:auto;

        }

        #pannelid
        {
            height:auto;
         
         
  
        }
        #guideofsignup
        {



        }
        

        


        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper" class="col-lg-12">
    
       






        <div id="wholepannel" class="panel panel-primary col-lg-12" >
      <div class="panel-heading" style="text-align:center;font-size:125%"> Registration Form</div>
      <div class="panel-body col-lg-12" id="pannelid" >

          <div id="form"> <%--form code--%>
       
     <legend> Login Information</legend>

       <div class="form-group">

           <label for="usr">User Id:</label>
      <asp:TextBox ID="txtuserid" runat="server" Class="form-control" required="required"></asp:TextBox>
           
       </div>


                <div class="form-group">
           <label for="usr">Password</label>
      <asp:TextBox ID="txtpassword" runat="server" Class="form-control" TextMode="Password" required="required"></asp:TextBox>
       
                    </div>
    <div class="form-group">
            <label for="usr">Confirm Password</label>
      <asp:TextBox ID="txtcpassword" runat="server" Class="form-control" TextMode="Password" required="required"></asp:TextBox>
        
        <p id="errorprint" style="color:red; font-weight:bold;"></p>
        </div>

       </div>





          
      
            <fieldset>
     <legend> Personal Information</legend>
       

                 <div class="form-group">
      <label for="usr">Name:</label>
      <asp:TextBox ID="username" runat="server" Class="form-control" required="required"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">Contact:</label>
      <asp:TextBox ID="contact" runat="server" Class="form-control" required="required"></asp:TextBox>
    </div>
          <div class="form-group">
      <label for="pwd">Email ID:</label>
       <asp:TextBox ID="emailid" runat="server" Class="form-control" required="required"></asp:TextBox>
    </div>

  <div class="form-group">
      <label for="pwd">Address:</label>
      <asp:TextBox ID="address"  Columns="25" runat="server" CLASS="form-control" TextMode="MultiLine" required="required"  ></asp:TextBox>
          </div>




  <div class="form-group">
      <label for="pwd">Date Of Birth</label>
      <asp:DropDownList ID="ddlyear" runat="server" required="required" ></asp:DropDownList>
      
      <asp:DropDownList ID="ddlmonth" runat="server" OnSelectedIndexChanged="ddlmonth_SelectedIndexChanged" required="required" ></asp:DropDownList>
      
      <asp:DropDownList ID="ddldays" runat="server"  required="required"></asp:DropDownList>

          
        </div>


            <div class="form-group">
      <label for="pwd">Gender</label>

                <asp:RadioButton ID="Male" GroupName="gender" runat="server" Text="Male"  />
                <asp:RadioButton ID="Female" GroupName="gender" runat="server" Text="Female" />

        </div>


                   <div class="form-group">
                       <asp:Button ID="Button1" runat="server" Text="Button"  Class="btn btn-success" OnClick="Button1_Click"  OnClientClick="return passwordmatchfunc()"/>
             
        </div>


        </fieldset>
          
       

 
   


          </div> <%--pannel content--%>
    


    </div>
    
    <%--form code--%>



    </div> <%--wrapper end--%>
    </form>








    

    
<script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
<script>

    //$(document).ready(function () {
    //    $("#wholepannel").click(function ()
    //    {
    //        $("#pannelid").slideToggle("slow");
    //        $("#guideofsignup").toggle();



    //    });
    //});




    //my function()
    function passwordmatchfunc()
    {
        var ret = true;
        var x = document.getElementById("txtpassword").value;
        var y = document.getElementById("txtcpassword").value;

        
        if (x !== y)
        {
           
            document.getElementById("errorprint").innerHTML = "Password mismatch!";
             ret = false;
        }

        return ret;

    } //my function() 






</script>
</body>
</html>
