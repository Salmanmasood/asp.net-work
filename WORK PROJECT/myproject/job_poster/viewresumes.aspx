<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewresumes.aspx.cs" Inherits="myproject.job_poster.viewresumes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Pannel</title>

    <style>

 body{
     margin:0 auto;
     padding:0px;
     background-color:#808080;
    /*background-image:url('../photos/White-Light-plain-Background-Design-Download.jpg');*/

     background-size:100% 100% ;

 }
 #wrapper{
        
     margin:0 auto;
     padding:0px;
    
     width:80%;
     height:auto;
 /*background-image:url('../img/registration_banner_img.png');*/
 }      
  header
  {
     background-color:#ffd800;
     width:100%;
     height:100px;
     background-image:url('../img/registration_banner_img.png');
     background-size:100% 100px ;
 
      }
  #contentofbody {
  
   
     width:100%;
     height:1000px;
       /*background-image:url('../photos/White-Light-plain-Background-Design-Download.jpg');*/
  background-size:100% 1000px ;
  }
 
  #GridView1
  {
      width:100%;

  }
  .mybtn
  {
      display:inline-block;
  }
        
   </style>
      <link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
    <p>
&nbsp;</p>
    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
    <form id="form1" runat="server" >
    <div id="wrapper">
    
        <header></header>
        <div id="contentofbody">

                 <div class="container" style="width:100%;" id="changepro">
  <h3>Admin Pannel</h3>
  <p>Select Tab To cahnge your Profile Information</p>
                      <span>
  <ul class="nav nav-pills nav-stacked" >
     
    <li ><asp:Button ID="Button1" runat="server" Text="Log Out!" CssClass="btn btn-info btn-group-lg mybtn"  OnClick="Button1_Click" Width="157px" /></li>
      
    <li><asp:Button ID="Button2" runat="server" Text="View Resumes" CssClass="btn btn-info btn-group-lg mybtn"   Width="157px" OnClick="Button2_Click" /> </li>
    <li><asp:Button ID="Button3" runat="server" Text="Admin Pannel" CssClass="btn btn-info btn-group-lg mybtn"  Width="157px" OnClick="Button3_Click" /> </li>
    <li><asp:Button ID="Button5" runat="server" Text="Close a job" CssClass="btn btn-info btn-group-lg mybtn"   Width="157px" OnClick="Button5_Click" /> </li>
          
  </ul>
                          </span>

                
               <div class="col-lg-12" style="width:100%;height:auto">
                  <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                      <FooterStyle BackColor="White" ForeColor="#333333" />
                      <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="White" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#487575" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#275353" />
                  </asp:GridView>

                      </div>
        </div>
          </div>
            </div>

    </form>


</body>
</html>

