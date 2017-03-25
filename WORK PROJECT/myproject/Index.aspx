<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="myproject.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-us">
 
<head runat="server">

 
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet="css/bootstrap.min.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
      
  }
  #nav{
    background-color: black;
  }
  div#content{
    border: 1px solid black;
    
  }
  div#h4{
    text-align: center;
    background-color: #33cc33;
    color: white;
    margin-top: 2%;
    font-family: Georgia, 'Times New Roman', Times, serif;
    
  }
  div#quotes{
    margin-top: 2%;
    margin-bottom:2%; 
    
  }
  #img2{
    margin-left: 4%;
  }
  ul{
    list-style-type: none;
  }
 
  li a{
      color: gray;;
   text-decoration: none;
    font-size: 130%;
  }
  li a:hover{
    color: limegreen
  }
ul.list-inline{
 

  color:gray;;
  
}
p#trademark{
  text-align: center;
}
#footer{
  background-color: black;

  margin-top: 2%;
}
.footer-heading{
  color: white;
}
#center-img{
  padding-top: 4%;
}
#GridView1 {

width:100%;
max-height:200px;
height:auto;
         }


  </style>

</head>
<body>

    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
    <form id="form1" runat="server">
    

            <div class=" container-fluid">


            <div class="col-md-12" style="height:50px;background-color:rgb(34,34,34)">

               <asp:Button ID="Button9" runat="server" Text="Are You Job Seeker" style="height:50px;width:200px"  class="btn btn-primary btn-group-lg " OnClick="Button9_Click" /> 
    <asp:Button ID="Button10" runat="server" Text="Post A job " style="height:50px;width:200px"  class="btn  btn-success btn-group-lg" OnClick="Button10_Click" />     

                  
                  
                  
        </div>
                </div>


        <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="photos/s4.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="photos/s5.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="photos/s_snip1.PNG" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="photos/s_snip2.PNG" alt="Flower" width="460" height="345">
      </div>

      
      
    </div>

  
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      
    </a>
  </div> <!--Image Slider Ends... -->

<div id="nav"> 
<nav class="navbar navbar-inverse" >
  
  <div class="container-fluid">
     <div class="navbar-header">
       <p class="navbar-brand">Rozgar.com </p>
     </div>
      <%--  --%>
     <ul class="nav navbar-nav">
      <li><a class="active" href="#"><asp:Button  ID="Button3" runat="server" Text="Home" CssClass="btn-default btn " /></a></li>
      <li><a href="#"><asp:Button  ID="Button4" runat="server" Text="About us" CssClass="btn-default btn " /></a></li>
      <li><a href="#"><asp:Button  ID="Button5" runat="server" Text="Contact" CssClass="btn-default btn " /></a></li>
      <li><a href="#"><asp:Button  ID="Button6" runat="server" Text="Jobs" CssClass="btn-default btn " OnClick="Button6_Click" /></a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><%--<span class="glyphicon glyphicon-user"></span>--%>
          <asp:Button ID="Button1" runat="server" Text="Button"  CssClass="btn btn-danger " OnClick="Button1_Click"/> </a></li>
      <li><a href="#"><%--<span class="glyphicon glyphicon-log-in"></span>--%> <asp:Button  ID="Button2" runat="server" Text="Button" CssClass="btn  btn-warning" OnClick="Button2_Click" /> </a></li>
   
      <li ><a href="#">
          <asp:Button ID="Button7" runat="server" Text="Button"  CssClass="btn  btn-danger " OnClick="Button7_Click"/> </a></li>
      <li ><a href="#"><asp:Button  ID="Button8" runat="server" Text="Button" CssClass="btn  btn-warning" OnClick="Button8_Click" /> </a></li>
        
         </ul>

  </div>
  
</nav>

</div><!--End of navigation bar -->



<div class="container">
  <div class="jumbotron">
    <h1>Excellent opportunities for Job Seeker</h1>      
    <p>We are providing a platform for those persons who wanted to get a good job in a well recognize organization of their relative field.So what are you waiting for hurry up<b> Apply Now</b></p>
  </div>
  
        
</div>

<div class="container" id="content"> <!--Salman jo chhezain database se show krwani hain wh is div me krwana bcz yeh resonsive he-->
  
 <h1>Have a Good day <asp:Label ID="Label1" runat="server" Text="user"></asp:Label>  “Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.”</h1>
  
     </div>
     <div id="center-img">
      <img src="photos/capture.PNG" alt="" class="img-responsive" >
     
    </div>
     <div class="container" id="h4">

       <h1>Motivational Saying </h1>
     </div>
        <br />
        <div style="width:100%">


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" style="font-size:20px;text-align:center;" DataKeyNames="job_id" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns >
                    <asp:BoundField DataField="job_id" HeaderText="Job Code" SortExpression="job_id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="job_title" HeaderText="Job Title" SortExpression="job_title" />
                    <asp:BoundField DataField="job_functional_area" HeaderText="Functional Area" SortExpression="job_functional_area" />
                    <asp:BoundField DataField="job_desc" HeaderText="Job Description" SortExpression="job_desc" />

                      <asp:BoundField DataField="job_sort" HeaderText="Job Sort" SortExpression="job_sort" />
                    
                    <asp:TemplateField HeaderText="Apply now">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("job_id","viewjobsbyallusers.aspx?view={0}") %>'>View Job</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
   


                <EditRowStyle BackColor="#7C6F57" />
   


                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            




            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportaldb %>" SelectCommand="SELECT [job_id],[job_title], [job_functional_area], [job_desc], [job_sort] FROM [job_title_tbl] WHERE (([job_functional_area] = @job_functional_area) or ([job_sort] = @job_sort))">
                <SelectParameters>
                    <asp:SessionParameter Name="job_functional_area" SessionField="functtionalarea" Type="String" />
                    <asp:SessionParameter Name="job_sort" SessionField="jobsort" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>




        </div>









    <div  class="container" id="quotes">
 
      <table>
        <tr>
          <td><img src="photos/q1.jpg" class="img-rounded" alt=""  width="95%"  class="im1"></td>
          <td><img src="photos/q2.jpg" class="img-rounded" alt=""  width="95%"  class="im1" id="img2"></td>
         
        </tr>

      </table>
     
    </div><!-- two images-->
    

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  
      <div>
        <img src="photos/building6.jpg"  class="img-responsive">
        <div class="carousel-caption">
            <h1>Employment <b>opportunities</b> for professionals</h1>
          
      </div>
      </div>

    </div>
    
      
      
      
    

  
   
  

<div id="footer"> <!--Footer -->

  <div class="container">
    <h2 class="footer-heading">ROZGAR.PK</h2>
  <!--  <table>
      <tr>
        <td><a href="www.facebook.com"><span class="fa fa-facebook">Facebook </span></a></td>
        <td><a href="www.Yahoo.com"><span class="fa fa-yahoo">Yahoo </span></a></td>
        <td> <a href="www.youtube.com"><span class="fa fa-youtube">Youtube </span></a></td>
        <td><a href="www.twitter.com"><span class="fa fa-twitter">Twitter </span></a></td>
        <td><a href="www.gmail.com"><span class="fa fa-google">Gmail </span></a></td>
      </tr>
    </table>-->
   
    
  <ul class="list-inline">
    <li><a href="www.facebook.com"><span class="fa fa-facebook">Facebook </span></a></li>
    <li><a href="www.Yahoo.com"><span class="fa fa-yahoo">Yahoo </span></a></li>
    <li> <a href="www.youtube.com"><span class="fa fa-youtube">Youtube </span></a></li>
    <li><a href="www.twitter.com"><span class="fa fa-twitter">Twitter </span></a></li>
    <li><a href="www.gmail.com"><span class="fa fa-google">Gmail </span></a></li>
  </ul>
    <h2  class="footer-heading">CATEGORIES </h2>
    <ul class="list-inline">
      <li>Healthcare</li>
      <li>Automobile Jobs</li>
      <li>Food Services</li>
      <li>Finance</li>
      <li>Software Engineer</li>
      <li>Anroid Developer</li>
      <li>Web developer</li>
      <li>Construction</li>
      <li>Teaching </li>
      <li>Government Jobs </li>
      <li>And Many More </li>
      
    </ul>
    <p id="trademark">Rozgar.pk &copy;2017.Private Policy </p>
    
  </div>

</div>
   






   
        
   </form>
</body>
</html>
