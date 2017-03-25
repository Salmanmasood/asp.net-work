<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="educational.aspx.cs" Inherits="myproject.page" %>

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
          height:960px;
           

        }
        #form
        {
            margin:0 auto;
            width:auto;

        }

        #pannelid
        {
            height:800px;
        
  
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
       <fieldset>   
           <legend>Educational Information</legend>
       
           <div class="form-group">
      <label for="usr">Functional Area</label>
               <asp:DropDownList ID="ddlfunctionalarea" runat="server" Class="form-control">
                   <asp:ListItem>SSC</asp:ListItem>
                   <asp:ListItem>HSC</asp:ListItem>
                   <asp:ListItem>Gradution</asp:ListItem>
                   <asp:ListItem>Masters</asp:ListItem>
                   <asp:ListItem>PHD</asp:ListItem>

               </asp:DropDownList>
   
                       </div>
    

           
                <div class="form-group">
      
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Button" OnClick="Button1_Click"  />
            
              
          </div>








           </fieldset>
            
       


          </div> <%--pannel content--%>
    


    </div>
    
    </div>  <%--form code--%>
        <div class="container">
        <div id="guideofsignup" class="jumbotron">

             <h1>Excellent opportunities for Job Seeker</h1>      
    <p>We are providing a platform for those persons who wanted to get a good job in a well recognize organization of their relative field.So what are you waiting for hurry up<b> Apply Now</b></p>

        </div>
            </div>


    </div> <%--wrapper end--%>
   
 </form>





        
<script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
<script>
    $(document).ready(function () {
        $("#wholepannel").mouseover(function () {
            $("#pannelid").show("slow");
        });
    });

    $(document).ready(function () {
        $("#wholepannel").mouseleave(function () {
            $("#pannelid").hide("slow");
        });
    });



    //2nd function
    $(document).ready(function () {
        $("#wholepannel").mouseover(function () {
            $("#guideofsignup").hide();
        });
    });

    $(document).ready(function () {
        $("#wholepannel").mouseleave(function () {
            $("#guideofsignup").show("slow");
        });
    });


</script>
  </body>
   </html>
