<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lastpage.aspx.cs" Inherits="myproject.lastpage" %>

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





<style>


     body
        {
           margin:0 auto;
           padding:0px;
          background-image:url('../photos/building3.jpg')     ;
          background-repeat:no-repeat;           
          background-size: 1960px 1960px;

               }
        #wrapper
        {
            
       
          height:1200px;
          
           

        }
    .form {

        margin:0 auto;
        width:60%;
        height:auto;
        background-color:#98bef3;
       margin-top:100px;
      opacity:0.8;
      
       font-size:15px;
       
    }

#imgbanner {

width:100%;
height:80px;
background-color:#2092e8;
background-image:url('img/registration_banner_img.png');
background-size: 100% 80px;

    }
    .form-group {
    padding:25px;
    }

</style>


</head>

<body>
    <form id="form1" runat="server">
    <div id="wrapper">
    

        <div class="form">
            <div id="imgbanner"> </div>
            <div style="margin:0 auto;width:80%;margin-top:40px" >


            <div class="form-group" >

      <label><h3 style="color:#2092e8"> SSC</h3></label>

                <div class="col-lg-12">

                    <div class="col-lg-6"><asp:TextBox ID="txtinsti_ssc" runat="server" Class="form-control" required="required" placeholder="Institue Name"></asp:TextBox></div>
                    <div class="col-lg-6"><asp:TextBox ID="txtdeg_ssc" runat="server" Class="form-control" required="required" placeholder="Degree Name"></asp:TextBox></div>
                    
                   

                    


                </div>


                <div class="form-group">
        <label>Percentage</label>
                <div class="col-lg-12">
                     <div class="col-lg-5"> <asp:DropDownList ID="ddlper_ssc" runat="server" Height="35px" Width="80%" ></asp:DropDownList></div>

                    </div>


</div>

            <div class="form-group">

                <label>Duration</label>
                <div class="col-lg-12">

                     <div class="col-lg-4"> <asp:DropDownList ID="DropDownList0" runat="server" Height="35px"   width="100%"></asp:DropDownList></div> 
                    <div class="col-lg-2"> <b> To</b></div> 
                     <div class="col-lg-4"> <asp:DropDownList ID="DropDownList7" runat="server" Height="35px" width="100%" ></asp:DropDownList></div> 
                </div>

            </div>

</div>






                <div class="form-group">
      <label><h3 style="color:#2092e8"> HSC</h3></label>

                <div class="col-lg-12">

                    <div class="col-lg-6"><asp:TextBox ID="txtinsti_hsc" runat="server" Class="form-control" required="required" placeholder="Institue Name"></asp:TextBox></div>
                    <div class="col-lg-6"><asp:TextBox ID="txtdeg_hsc" runat="server" Class="form-control" required="required" placeholder="Degree Name"></asp:TextBox></div>
                    
                 
                     
                   



                </div>

                  <div class="form-group">
                   <label>Percentage</label>
                    <div class="col-lg-12">
                    
                         <div class="col-lg-5"> <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="80%" ></asp:DropDownList></div>
                    </div>
                     </div>


                       <div class="form-group">

                <label>Duration</label>
                <div class="col-lg-12">
                    <div class="col-lg-4"> <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" width="100%"></asp:DropDownList></div>
                     
                    <div class="col-lg-1"> <b> To</b></div> 
                    <div class="col-lg-4"> <asp:DropDownList ID="DropDownList8" runat="server" Height="35px"   width="100%"></asp:DropDownList></div> 
                </div>

            </div>



            </div>























<div class="form-group">
        <label><h3 style="color:#2092e8"> GRADUATION</h3></label>

                <div class="col-lg-12">

                    <div class="col-lg-5"><asp:TextBox ID="txt_insti_grad" runat="server" Class="form-control" required="required" placeholder="Institue Name"></asp:TextBox></div>
                    <div class="col-lg-5"><asp:TextBox ID="txt_deg_grad" runat="server" Class="form-control" required="required" placeholder="Degree Name"></asp:TextBox></div>
                    
                 


                </div>


      <div class="form-group">
                   <label>Percentage</label>
                    <div class="col-lg-12">
                    
                             <div class="col-lg-5"> <asp:DropDownList ID="DropDownList4" runat="server" Height="35px" Width="80%"></asp:DropDownList></div>

                    </div>
                     </div>


                       <div class="form-group">

                <label>Duration</label>
                <div class="col-lg-12">
                       <div class="col-lg-4"> <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="100%"></asp:DropDownList></div>
                
                    <div class="col-lg-1"> <b> To</b></div> 

                    <div class="col-lg-4"> <asp:DropDownList ID="DropDownList10" runat="server" Height="35px" width="100%"></asp:DropDownList></div>

                </div>

            </div>




















            </div>

<div class="form-group">
            <label><h3 style="color:#2092e8">MASTERS</h3></label>

                <div class="col-lg-12">

                    <div class="col-lg-5"><asp:TextBox ID="txt_insti_master" runat="server" Class="form-control" required="required" placeholder="Institue Name"></asp:TextBox></div>
                    <div class="col-lg-5"><asp:TextBox ID="txt_deg_master" runat="server" Class="form-control" required="required" placeholder="Degree Name"></asp:TextBox></div>
                    
                  
                </div>




    
      <div class="form-group">
                   <label>Percentage</label>
                    <div class="col-lg-12">
                    
                                 <div class="col-lg-5"> <asp:DropDownList ID="DropDownList6" runat="server" Height="35px" Width="80%" ></asp:DropDownList></div>
                    </div>
                     </div>


                       <div class="form-group">

                <label>Duration</label>
                <div class="col-lg-12">

                      <div class="col-lg-4"> <asp:DropDownList ID="DropDownList5" runat="server" Height="35px" Width="100%"></asp:DropDownList></div>
              

                
                    <div class="col-lg-1"> <b> To</b></div> 

              <div class="col-lg-4"> <asp:DropDownList ID="DropDownList11" runat="server" Height="35px" Width="100%"></asp:DropDownList></div>


                </div>

            </div>











            </div>


















                
<div class="form-group">
   <label><h3 style="color:#2092e8"> SKILLS</h3></label>

                <div class="col-lg-12">

                    <div class="col-lg-4"> <asp:TextBox ID="skilltxt" runat="server" Class="form-control col-lg-4"></asp:TextBox></div>
                    <div class="col-lg-2"><input  type="button" value="ADD"  Class="form-control btn btn-info"  onclick="ceritification()"/> </div>
                    <div class="col-lg-4"><asp:TextBox Id="demo" runat="server"  Class="form-control btn btn-info"></asp:TextBox></div>
                    
                    
                     <div class="col-lg-2"></div>



                </div>



            </div>


<div class="form-group">
      <label for="pwd">Upload Most Recent Resume:</label>
              <asp:FileUpload ID="FileUpload1" runat="server" />

          </div>


                  <div class="form-group">
      
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Button" OnClientClick="datasubmit()" OnClick="Button1_Click"  />
            
              
          </div>






















        </div>
            </div>



    </div>

    </form>








    <script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
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




    function datasubmit() {
        alert("YOur Account is Created Successfully !!!");

    }

</script>




</body>
</html>
