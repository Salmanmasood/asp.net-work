<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpannelofposteraspx.aspx.cs" Inherits="myproject.job_poster.adminpannelofposteraspx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Pannel</title>

    <style>

 body{
     margin:0 auto;
     padding:0px;
     background-color:#808080;
     background-image:url('../photos/White-Light-plain-Background-Design-Download.jpg');

     background-size:100% 100% ;

 }
 #wrapper{
        
     margin:0 auto;
     padding:0px;
    
     width:80%;
     height:auto;
 background-image:url('../img/registration_banner_img.png');
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
       background-image:url('../photos/White-Light-plain-Background-Design-Download.jpg');
  background-size:100% 1000px ;
  }
  #GridView1 {
      
width:100%;

height:auto;   }




        
   </style>
      <link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
    <form id="form1" runat="server">
    <div id="wrapper">
    
        <header></header>
        <div id="contentofbody">

            <div class="col-lg-3" style="height:100%;border:1px solid black">

                 <div class="container" style="width:100%;" id="changepro">
  <h3>Admin Pannel</h3>
  <p>Select Tab To cahnge your Profile Information</p>
  <ul class="nav nav-pills nav-stacked" >
    <li ><asp:Button ID="Button1" runat="server" Text="Log Out!" CssClass="btn btn-info btn-group-lg" OnClick="Button1_Click" Width="157px" /></li>
      
    <li><asp:Button ID="Button2" runat="server" Text="View Resumes" CssClass="btn btn-info btn-group-lg"  Width="157px" OnClick="Button2_Click" /> </li>
    <li><asp:Button ID="Button3" runat="server" Text="Admin Pannel" CssClass="btn btn-info btn-group-lg" Width="157px" OnClick="Button3_Click" /> </li>
    <li><asp:Button ID="Button5" runat="server" Text="Close a job" CssClass="btn btn-info btn-group-lg"  Width="157px" OnClick="Button5_Click" /> </li>
  </ul>
</div>


<img src="../img/123.jpg" style="width:100%;height:600px;margin-top:50px;" />

                </div>




              <div class="col-lg-9" style="height:100%;border:1px solid black">


            
                <img src="../img/postJobsBanner.jpg" style="width:100%;height:200px;margin-top:10px;" />


                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" BorderStyle="None">
                      <Columns>
                          <asp:BoundField DataField="resume_username" HeaderText="resume_username" SortExpression="resume_username" />
                          <asp:BoundField DataField="resume_education" HeaderText="resume_education" SortExpression="resume_education" />
                          <asp:BoundField DataField="resume_functionalarea" HeaderText="resume_functionalarea" SortExpression="resume_functionalarea" />
                          <asp:BoundField DataField="resume_applydate" HeaderText="resume_applydate" SortExpression="resume_applydate" />
                          <asp:BoundField DataField="resume_experience" HeaderText="resume_experience"  SortExpression="resume_experience" />
                          <asp:BoundField DataField="seeker_id" HeaderText="seeker_id"  SortExpression="seeker_id" />
                      
                      
                    

                      </Columns>


                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                  </asp:GridView>







                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT [resume_username], [resume_education], [resume_functionalarea], [resume_applydate], [resume_experience], [seeker_id] FROM [resumeofapplicants] ORDER BY [resume_applydate] DESC, [resume_education] DESC"></asp:SqlDataSource>







                  </div>




































       



        
       


   
    </form>


</body>
</html>

