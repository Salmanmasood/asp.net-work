<!DOCTYPE html>
<script runat="server">

  
</script>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
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
      color: gray;
   text-decoration: none;
    font-size: 130%;
  }
  li a:hover{
    color: limegreen
  }
ul.list-inline{
 

  color:gray;
  
}
p#trademark{
  text-align: center;
}
#footer{
  background-color: black;;

  margin-top: 2%;
}
.footer-heading{
  color: white;
}
#center-img{
  padding-top: 4%;
}
#navbar {
       background-color:rgb(51, 122, 183);

}
  </style>
</head>
<body>
    


<script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>




   <form id="form1" runat="server">
<!--<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        
    </ol>
   <div class="carousel-inner" role="listbox">
       <div class="item active">
          <img src="" alt="">
       </div>
       <div class="item">

       </div>
   </div>-->




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
<nav class="navbar navbar-inverse" id="navbar" >
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target  =".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
  <div class="container-fluid collapse navbar-collapse">
     <div class="navbar-header">
       <p class="navbar-brand">Rozgar.com </p>
     </div>

     <ul class="nav navbar-nav">
      <li><a href="#Jobs</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a><span class="glyphicon glyphicon-user"> </span> <asp:Label ID="Label1" runat="server" OnLoad="Label1_Load"></asp:Label></a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span><asp:Label ID="Label2" runat="server"></asp:Label>  </a></li>
    </ul>

  </div>
  
</nav>

</div><!--End of navigation bar -->



<div class="container">
  <div class="jumbotron">
    <h1>Excellent opportunities for Job Seekergation bar -->



<div class="container">
  <div class="jumbotron">
    <h1>Excellent opportunities for Job Seeker</h1>      
    <p>We are providing a platform for those persons who wanted to get a good job in a well recognize organization of their relative field.So what are you waiting for hurry up<b> Apply Now</b></p>
  </div>
  
        
</div>

<div class="container" id="content"> <!--Salman jo chhezain database se show krwani hain wh is div me krwana bcz yeh resonsive he-->
  
 <h1> Salman jo chhezain database se show krwani hain wh is div me krwana bcz yeh resonsive he</h1>
  
     </div>

    <%--coding for job div--%>

    <div class="col-lg-12"> 
         <h1 id="jobhead" style="text-align:center">Find a <strong style="color:rgb(35,186,133)">Job</strong></h1>

    </div>



    <div class="col-lg-12" >


        <div class="panel panel-success">
      <div class="panel-heading" style="text-align:center;color:gray;font-size:25px">Seach Job By Keywords</div>
      <div class="panel-body">

          <div class="row">

              <div class="col-lg-6"><input type="text" class="form-control" placeholder="Keywords" > </div>

              <div class="col-lg-6"> <input type="text" class="form-control" placeholder="Location"></div>


          </div>

          <div class="col-lg-4"></div>

          <div class="col-lg-4" style="margin-top:30px">  <button type="button" class="btn btn-success btn-block">Search!<img style="padding:5px;width:25px;height:25px" src="img/search-green-neon-icon.png" /></button></div>

          <div class="col-lg-4"></div>

          

          
                  </div>
      </div> <%--pannel div end--%>
    </div>
    <div class="container">
        <table border="1" class="col-lg-12" > 
            
                <tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>

               

               <tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>

                

            

               <tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>

                

               <tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>

                



            </table>
            

    </div>



    <%--coding for job div end--%>
     <div id="center-img">
      <img src="photos/capture.PNG" alt="" class="img-responsive" >
     
    </div>
     <div class="container" id="h4">

       <h1>Motivational Saying </h1>
     </div>
    <div  class="container" id="quotes">
 
      <table>
        <tr>
          <td><img src="photos/q1.jpg" class="img-rounded" alt=""  width="95%"  class="im1"></td>
          <td><img src="photos/q2.jpg" class="img-rounded" alt=""  width="95%"  class="im1" id="img2"></td>
         
        </tr>

      </table>
     
    </div><!-- two images-->
    
    <%--employer coding--%>

    
    <div class="col-lg-12" >


        <div class="panel panel-success">
      <div class="panel-heading" style="text-align:center;color:gray;font-size:25px">Find An Employee</div>
      <div class="panel-body">

          <div class="row">

              <div class="col-lg-6"><input type="text" class="form-control" placeholder="Resume" > </div>

              <div class="col-lg-6"> <input type="text" class="form-control" placeholder="Location"></div>


          </div>

          <div class="col-lg-4"></div>

          <div class="col-lg-4" style="margin-top:30px">  <button type="button" class="btn btn-success btn-block">Search!<img style="padding:5px;width:25px;height:25px" src="img/search-green-neon-icon.png" /></button></div>

          <div class="col-lg-4"></div>

          

          
                  </div>
      </div> <%--pannel div end--%>
    </div>



    <div class="container">
        <table border="1" class="col-lg-12" > 
            
                <tr><td style="padding:10px"><span><img src="img/person-2-thumbnail.jpg" width="100" height="100" class="img-circle"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">View Details!</button>
                 </td> 

                </tr>


                <tr><td style="padding:10px"><span><img src="img/person-2-thumbnail.jpg" width="100" height="100" class="img-circle"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">View Details!</button>
                 </td> 

                </tr>

    <tr><td style="padding:10px"><span><img src="img/person-2-thumbnail.jpg" width="100" height="100" class="img-circle"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">View Details!</button>
                 </td> 

                </tr>

    <tr><td style="padding:10px"><span><img src="img/person-2-thumbnail.jpg" width="100" height="100" class="img-circle"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px;text-align:center"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><span class="glyphicon glyphicon-envelope"></span> <p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">View Details!</button>
                 </td> 

                </tr>


               

            


            </table>
            

    </div>








    <%--employer coding end--%>

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