<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="poster_signup.aspx.cs" Inherits="myproject.job_poster.poster_signup" %>
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
background-image: url("../photos/building5.jpg");
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
         <div> <h1>Sign Up</h1></div>
         
       




                   <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                          <asp:TextBox ID="TextBox1" runat="server" onchange="emailvalidation()" class="form-control" placeholder="Email Address" required="required" OnTextChanged="TextBox1_TextChanged" ClientIDMode="AutoID"></asp:TextBox>
                         
                      </div>
                       
     
                     </div>

                       <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                       <asp:TextBox ID="txtpassword" runat="server" onchange="passwordvalidation()" class="form-control" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                         
                      </div>
     
                     </div>


            
                       <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                       <asp:TextBox ID="txtcpassword" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password" required="required"></asp:TextBox>
                         
                      </div>
     
                     </div>




                      <div class="form-group"  >
                          <asp:Button  runat="server" Text="Sign Up" id="bt1" class="btn btn-success btn-block"   OnClientClick="passwordmatchfunc()" OnClick="bt1_Click"/>
                          
                            
                         </div>

              <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon">
                            <asp:Label ID="Label1" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
                        </div>
                         
                      </div>

          
           
		</div>
	</div>


</div>


    </form>



    <script>
        function emailvalidation()
        {
            var c = document.getElementById("TextBox1").value;
            var pos = c.search("@");
            var domainanme = c.substring(pos + 1);
            domainanme.toLowerCase();
            //alert(domainanme);
            if (domainanme !== "rozgaar.com")
            {
                document.getElementById("Label1").innerHTML = 'invalid id domain name ,use "@rozgaar.com"';
                document.getElementById("Label1").style.color = "Red";
                //alert('invalid id domain name ,use "@rozgaar.com"');
                document.getElementById("txtpassword").disabled = true;
            }
            else {
                document.getElementById("Label1").innerHTML = ' ';
                document.getElementById("txtpassword").disabled = false;
            }
        }
       

        function passwordvalidation()
        {
            var arr = ["_", "&", "*", "@", ")", "(", "$", "#", , "!", "-", "+",">"]
            var c = document.getElementById("txtpassword").value;
            if (c.length<8)
            {
                document.getElementById("Label1").innerHTML = 'Passowrd Should contain atleast 8 characters';
                document.getElementById("Label1").style.color = "Red";
                //alert('Passowrd Should contain atleast 8 characters');
                document.getElementById("txtcpassword").disabled = true;

            }
            else
            {
                document.getElementById("txtcpassword").disabled = false;
                document.getElementById("Label1").innerHTML = ' ';
                var count=0, temp;

                for (var i = 0; i < arr.length; i++)
                {
                    temp = s.search(arr[i])
                    if (temp = !-1)
                    {
                        count++;

                    }


                }//loop end...........
                

                if (count>=2)
                {
                    document.getElementById("Label1").innerHTML = "Strong Password!";
                    document.getElementById("Label1").style.color="Green";

                }
                else
                {
                    document.getElementById("Label1").innerHTML = "weak password!";
                    document.getElementById("Label1").style.color = "Red";

                }


            }



            

        }



    function passwordmatchfunc()
    {
        var ret = true;
        var x = document.getElementById("txtpassword").value;
        var y = document.getElementById("txtcpassword").value;

        
        if (x !== y)
        {

            alert("Password mismatch!");
            //document.getElementById("errorprint").innerHTML = "Password mismatch!";
             ret = false;
        }

        return ret;

    } //my function() 

        </script>
</body>
</html>
