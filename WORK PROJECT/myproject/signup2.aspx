<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup2.aspx.cs" Inherits="myproject.signup2" %>

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
           <legend>Porfessional Information</legend>
       
           <div class="form-group">
      <label for="usr">Functional Area</label>
               <asp:DropDownList ID="ddlfunctionalarea" runat="server" Class="form-control">
                   <asp:ListItem>Software</asp:ListItem>
                   <asp:ListItem>Hardware</asp:ListItem>
                   <asp:ListItem>Networking</asp:ListItem>
               </asp:DropDownList>
   
                       </div>
    <div class="form-group">
      <label for="pwd">Current Salary:</label>
               <asp:DropDownList ID="ddlcurrentsalary" runat="server" Class="form-control">
                   <asp:ListItem>10000</asp:ListItem>
                   <asp:ListItem>20000</asp:ListItem>
                   <asp:ListItem>30000</asp:ListItem>
                   <asp:ListItem>40000</asp:ListItem>
        </asp:DropDownList>
   
         </div>
          
         


           <div class="form-group">
      <label for="pwd">Work Experience:</label>
               <asp:DropDownList ID="ddlworkexperince" runat="server" Class="form-control">
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
               </asp:DropDownList>
              
          </div>

             <div class="form-group">
      <label for="pwd">Desired Salary:</label>
               <asp:DropDownList ID="dlldesiredsalary" runat="server" Class="form-control">
                   <asp:ListItem>10000</asp:ListItem>
                   <asp:ListItem>20000</asp:ListItem>
                   <asp:ListItem>30000</asp:ListItem>
                   <asp:ListItem>40000</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


             <div class="form-group">
      <label for="pwd">Career Level:</label>
               <asp:DropDownList ID="ddlcareerlevel" runat="server" Class="form-control">
                   <asp:ListItem>Beginner</asp:ListItem>
                   <asp:ListItem>Medium</asp:ListItem>
                   <asp:ListItem>Advanced</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


             <div class="form-group">
      <label for="pwd">What Sort of Job U want :</label>
               <asp:DropDownList ID="ddljobsort" runat="server" Class="form-control">
                   <asp:ListItem>Programming</asp:ListItem>
                   <asp:ListItem>non Programming</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


             <div class="form-group">
      <label for="pwd">Which Area You want to work In :</label>
               <asp:DropDownList ID="ddlcitywork" runat="server" Class="form-control">
                   <asp:ListItem>NoRTH kARACHI</asp:ListItem>
                   <asp:ListItem>Shah rA E FAISAL</asp:ListItem>
                   <asp:ListItem>Nazimabad</asp:ListItem>
                 </asp:DropDownList>
              
          </div>

           
                <div class="form-group">
      
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Button" OnClick="Button1_Click"  />
            
              
          </div>








           </fieldset>
            
       


          </div> <%--pannel content--%>
    


    </div>
    
    </div>  <%--form code--%>

        

    </div> <%--wrapper end--%>
    </form>


    
<script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
<script>
    //$(document).ready(function ()
    //{
    //    $("#wholepannel").click(function ()
    //    {
    //        $("#pannelid").slideToggle("slow");
    //        $("#guideofsignup").toggle();

    //    });
    //});



</script>


</body>
</html>
