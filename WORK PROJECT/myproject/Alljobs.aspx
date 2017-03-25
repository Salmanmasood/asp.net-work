<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alljobs.aspx.cs" Inherits="myproject.Alljobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="../../../js/J-QUERY.JS"></script>
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
background-color:#5ebf2a;


}
.dropdowns
{
display:none;
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
                <div class="col-lg-12 textfield" style="margin-bottom:50px;">

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control textfield" placeholder="Search Jobs"></asp:TextBox>
                 
                       </div>
             

                <div class="col-lg-12" style="margin-bottom:50px;">

                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Search By Fields" />
                 
                       </div>

        <div class="col-lg-12 dropdowns" style="margin-bottom:50px;">
            
            <div class="col-lg-2"> <label>City: </label> <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control dropdowns" DataSourceID="SqlDataSource5" DataTextField="location_country" DataValueField="location_country"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT DISTINCT location_country FROM company_location_tbl"></asp:SqlDataSource>
            </div>
            
            <div class="col-lg-2"><label>Area: </label> <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control dropdowns" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="location_area" DataValueField="location_area"></asp:DropDownList> 
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT DISTINCT location_area FROM company_location_tbl"></asp:SqlDataSource>
            </div>
             <div class="col-lg-2"><label>Country: </label> <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control dropdowns" DataSourceID="SqlDataSource4" DataTextField="location_country" DataValueField="location_country"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT DISTINCT location_country FROM company_location_tbl"></asp:SqlDataSource>
            </div>

             <div class="col-lg-2"><label>Functional Area: </label> <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control dropdowns" DataSourceID="SqlDataSource3" DataTextField="job_functional_area" DataValueField="job_functional_area"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT distinct [job_functional_area] FROM [job_title_tbl]"></asp:SqlDataSource>
            </div>

             <div class="col-lg-2"><label>Job Sort: </label> <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control dropdowns" DataSourceID="SqlDataSource2" DataTextField="job_sort" DataValueField="job_sort"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT DISTINCT job_sort FROM job_title_tbl"></asp:SqlDataSource>
            </div>

             <div class="col-lg-2"><label>Company Name: </label> <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control dropdowns" DataSourceID="SqlDataSource1" DataTextField="company_name" DataValueField="company_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT DISTINCT company_name FROM company_name_tbl"></asp:SqlDataSource>
            </div>

                       </div>


        <div style="margin-bottom:50px;" class="col-lg-12">
            <asp:Button ID="Button1" runat="server" Text="Search!"  CssClass="btn btn-success btn-block" OnClick="Button1_Click"/>
                    

                    </div>




        <asp:GridView ID="GridView1" runat="server" CellPadding="4"  GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
           <AlternatingRowStyle />
            <Columns>
             <asp:TemplateField HeaderText="Apply now">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("job_id","viewjobsbyallusers.aspx?view={0}") %>'>View Job</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
          
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
    </form>




    <script>


        $(document).ready(function () {

            $("#CheckBox1").click(function () {
                $(".dropdowns").toggle();
                $(".textfield").toggle();

            });
        });


    </script>
</body>
</html>
