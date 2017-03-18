<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_postjob.aspx.cs" Inherits="myproject.job_poster.login_postjob" %>

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
background-image: url("../img/newlog.jpg");
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
<body onload="alertapply()">
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
                          <asp:Button  runat="server" Text="Login" id="bt1" class="btn btn-success btn-block" OnClick="bt1_Click"  />
                          
                            
                         </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            <p id="para">Dont have an account? <a href="poster_signup.aspx">register now</a> </p>
           
		</div>
	</div>


</div>


    </form>


    <script>

    
       function alertapply()
       {
           var val = document.getElementById("Label1").innerText;
           if (val!="")

           {
               alert("Invalid Password or Id!");
           }

       }
    </script>
</body>
</html>
