<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="myproject.seeker_pages.user_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
	<title>Document</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css" />
	<style>

     #box{

  border: 1px solid black ;
  height: 100%;

}
#main-div{

height: 900px;
background-image: url("../photos/building6.jpg");
background-size:100% 900px;    

}
.insidebox{
    border: 1px solid black;
    margin: 10% auto 10% auto;
 max-width: 500px;
min-width: 200px; 
   padding-left: 60px;
   padding-right: 60px;
    
     border-radius:10px;
    
    background-color: whitesmoke;
}
div h1{
    text-align: center;
   
   
    
}
p#para{
    text-align: center;
    font-size: 14px;
}

	</style>



</head>
<body>
    <form id="form1" runat="server">
    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>

    <div id="main-div">
	<div id="box" class="img-responsive">

		<div class="insidebox">
         <div> <h1>Log In</h1></div>
         
       




                   <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                          <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username" required="required"></asp:TextBox>
                         
                      </div>
                       
     
                     </div>

                       <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                       <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                         
                      </div>
     
                     </div>


            
                       



                      <div class="form-group"  >
                          <asp:Button ID="Button1" runat="server" Text="Log In"  class="form-control  btn-success" OnClick="Button1_Click" OnClientClick="retrun(passwordmatchfunc())" />
                          
                            
                         </div>
              

                      <div class="form-group"  >
                          <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                         </div>
              

            <p id="para">Dont have an account? <a href="signuP.aspx">register now</a> </p>
           
		</div>
	</div>


</div>


    </form>



    <script>
    //my function()
    function passwordmatchfunc()
    {
        var ret = true;
        var x = document.getElementById("txtpassword").value;
        var y = document.getElementById("txtcpassword").value;

        
        if (x !== y)
        {
            alert('Password Mismatch');
            //document.getElementById("errorprint").innerHTML = "Password mismatch!";
             ret = false;
        }

        return ret;

    } //my function() 

        </script>
</body>
</html>
