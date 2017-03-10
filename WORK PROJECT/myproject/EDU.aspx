<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EDU.aspx.cs" Inherits="myproject.EDU" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <script>


        function datasubmit()
        {
            alert("YOur Account is Created Successfully !!!");

        }


    </script>

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
          height:AUTO;
          margin:0 auto;
           

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
        
       
        


        </style>


</head>
<body>
 
 <form id="form1" runat="server">
      <div id="wrapper" class="col-lg-10">
    
        






        <div id="wholepannel" class="panel panel-primary col-lg-12" >
      <div class="panel-heading" style="text-align:center;font-size:125%"> Registration Form</div>
      <div class="panel-body col-lg-12" id="pannelid" >

          <div > <%--form code--%>

              
              <div class="col-lg-12" >

   
                              <div class="container form-group">
   <div class="col-lg-2"> SSC: </div> 
                      <div class="col-lg-6"><asp:TextBox ID="txtssc" runat="server" Class="form-control" required="required"></asp:TextBox></div>
                      <div class="col-lg-2"><asp:DropDownList ID="ddlgrades_ssc" runat="server"></asp:DropDownList></div>
                      <div class="col-lg-2"><asp:DropDownList ID="ddlper_ssc" runat="server"></asp:DropDownList></div>
                      
</div>



                         <div class="container form-group">
   <div class="col-lg-2"> SSC: </div> 
                      <div class="col-lg-6"><asp:TextBox ID="TextBox1" runat="server" Class="form-control" required="required"></asp:TextBox></div>
                      <div class="col-lg-2"><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
                      <div class="col-lg-2"><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></div>
                      
</div>

                         <div class="container form-group">
   <div class="col-lg-2"> SSC: </div> 
                      <div class="col-lg-6"><asp:TextBox ID="TextBox2" runat="server" Class="form-control" required="required"></asp:TextBox></div>
                      <div class="col-lg-2"><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></div>
                      <div class="col-lg-2"><asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList></div>
                      
</div>

                         <div class="container form-group">
   <div class="col-lg-2"> SSC: </div> 
                      <div class="col-lg-6"><asp:TextBox ID="TextBox3" runat="server" Class="form-control" required="required"></asp:TextBox></div>
                      <div class="col-lg-2"><asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList></div>
                      <div class="col-lg-2"><asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList></div>
                      
</div>










              </div>
           
                <div class="form-group">
      
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Button" OnClientClick="datasubmit()" OnClick="Button1_Click"  />
            
              
          </div>


             
           <div class="form-group">
      <label for="usr">Skills</label>
                     <asp:TextBox ID="skilltxt" runat="server" Class="form-control"></asp:TextBox>
  
                       </div>
    
           

             
           <div class="form-group">
   
                     <asp:TextBox Id="demo" runat="server" Class="form-control"></asp:TextBox>
  
         
                       </div>
    


             <div class="form-group">
   
              <input  type="button" VALUE="ADD"  onclick="ceritification()"/>
                       </div>
      <div class="form-group">
      <label for="pwd">Upload Most Recent Resume:</label>
              <asp:FileUpload ID="FileUpload1" runat="server" />

          </div>





           </fieldset>
                          
       


          </div>
          <%--pannel content--%>
    


    </div>
    
    </div>  <%--form code--%>



    </div> <%--wrapper end--%>
   
 </form>





        
<script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
<script>
    //$(document).ready(function () {
    //    $("#wholepannel").click(function () {
    //        $("#pannelid").slideToggle("slow");
    //        $("#guideofsignup").toggle();



    //    });
    //});



</script>





    
<script>
    var fruits = [];
    var s;

    function ceritification() {
        s = document.getElementById("skilltxt").value;
        if (s !== "") {
            fruits.push(s);
            document.getElementById("demo").value = fruits;
            document.getElementById("skilltxt").value = "";

        }
    }
</script>



  </body>
   </html>
