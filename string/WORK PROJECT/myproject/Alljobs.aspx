<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alljobs.aspx.cs" Inherits="myproject.Alljobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <title>Search Job</title>
    <style>

body
{
margin:0 auto;
padding:0px;
}
#wrapper
{
margin:0 auto;
padding:0px;

width:80%;
height:1000px;
}
b
{
color:#5ebf2a;

}
#GridView1
{
width:100%;


}


    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
    <img src="img/registration_banner_img.png" style="width:100%;height:80px;"/>
         <div class="form-group" >
         <div class="col-lg-4"></div>
         <div class="col-lg-4">
         
             <h1 style="color:#5ebf2a"> <label style="text-align:center">Search Jobs</label></h1>

             </div>
           
                <div class="col-lg-4"></div>
                <div class="col-lg-12">

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="col-lg-12" placeholder="Search Jobs"></asp:TextBox>
                    </div>

             

          <div class="col-lg-4">  
              <B>CITY: </B>
             <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>Karachi</asp:ListItem>
                 <asp:ListItem>Lahore</asp:ListItem>
                 <asp:ListItem>Islamabad</asp:ListItem>
             </asp:DropDownList>

                 </div>
         <div class="col-lg-4">
             <B>functional Area: </B>
             <asp:DropDownList ID="DropDownList2" runat="server">
                 <asp:ListItem>Software</asp:ListItem>
                 <asp:ListItem>Hardware</asp:ListItem>
                 <asp:ListItem>Netwroking</asp:ListItem>
             </asp:DropDownList> </div>
         
         <div class="col-lg-4">
             <B>Working Area: </B> 
             <asp:DropDownList ID="DropDownList3" runat="server">
                 <asp:ListItem>North Karachi</asp:ListItem>
                 <asp:ListItem>SharhrAe Faisal</asp:ListItem>
                 <asp:ListItem>Defence</asp:ListItem>
             </asp:DropDownList></div>
         

                </div>




        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
             <asp:TemplateField HeaderText="Apply now">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("job_id","viewjobsbyallusers.aspx?view={0}") %>'>View Job</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>


    </div>
    </form>
</body>
</html>
