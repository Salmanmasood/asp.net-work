<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="myproject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
body,#warpper{
margin:0 auto;
padding:0px;
}

</style>


</head>
<body >
    <form id="form1" runat="server">


    <div id="warpper" style="width:80%;height:1000px;background-color:#ffd800">

     
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
           <h1> LOGIN ID: <asp:Label ID="Label1" runat="server" Text=' <%#Eval("login_id") %>'></asp:Label> </h1> <br />
        
           <h1> EMAIL:  <asp:Label ID="Label2" runat="server" Text=' <%#Eval("login_email") %>'></asp:Label> </h1><br />

            <h1> Password:  <asp:Label ID="Label3" runat="server" Text=' <%#Eval("login_password") %>'></asp:Label></h1> <br />
        
        
        
        </ItemTemplate>
       
    </asp:Repeater>

       




    </div>
       
      
    </form>
</body>
</html>
