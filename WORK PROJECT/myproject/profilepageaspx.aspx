<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profilepageaspx.aspx.cs" Inherits="myproject.profilepageaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />

    <title>Profile Page</title>
</head>
<body>
     <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
    <form id="form1" runat="server">
    <div id="wrapper">

    <div id="nav" > 
<nav class="navbar navbar-inverse" style="background-color:#0094ff" >
  
    <div class="container-fluid">
        <div class="navbar-header">
            <p class="navbar-brand">Rozgar.com </p>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Jobs</a></li>

        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>


  


</div><!--End of navigation bar -->

   <div class="container"  id="body"> 
    
    <div class="div1">
      
   <div class="media">
       <div class="media-left media-top"  id="photo">
           <asp:Image ID="Image1" runat="server"   class="media-object" style="width:200px;height:200px;"  ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>'/>
           <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
     </div>
      
      <div class="media-body" id="text">
       
            <h1 class="media-heading"  id="h1"><asp:Label runat="server" Text="lblname"></asp:Label></h1>

             <h5 class="heading"><asp:Label runat="server" Text="lblintro"></asp:Label> </h5>
      <h4 class="heading"><small>Education</small> <span id="ku"> Karachi University</span></h4>
     <div class="dropdown">
        <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="btn-info btn-sm"/>
         <br />
         <asp:Button ID="imgupload" runat="server" Text="Upload" CssClass="btn-success" OnClick="imgupload_Click" />
      
  </div>
    </div>
  </div>
      <div id="div1Inside">
<h4><small>www.linkedin.com<span class="glyphicon glyphicon-level-up" id="con">Contact</span></small></h4>
      </div>
     
     </div> 
     
     <div class="div2" ><!--side bar-->
      <h1>Salman Place your Contant here</h1>
      
      
      
       
   
  </div><!--side bar-->
</div>

  </div>-->
    
    <div class="container"  id="body"> 
    
    <div class="div3">
      
   <div class="media">
       
      
      <div class="media-body" id="text">
       
            <h1 class="media-heading"  id="summary" ><small><b> Summary </small></b></h1>
             <h6 class="heading"><asp:Label ID="lblsummry" runat="server" Text="Label"></asp:Label></h6><!--TYPE YOUR CONTENT OF SUMMARY-->
          <div class="container">
    <button type="button" class="btn btn-info btn-sm" data-toggle="collapse" data-target="#demo">Simple collapsible</button>
    <div id="demo" class="collapse col-lg-6">
       Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
     </div>
      </div>
          
          
         
    </div>
  </div>
   
     
     </div> 
     
     <div class="div2" ><!--side bar-->
      <h1>Salman Place your Contant here</h1>
      
      
      
       
   
  </div><!--side bar-->
</div>


<div class="container"  id="body"> 
    
    <div class="div3">
      
   <div class="media">
       
      
      <div class="media-body" id="text">
       
            <h2 class="media-heading"  id="summary" ><small><b>Experience</small></b></h2>
            
                <h5 id="newDiv1">DBA</h5>
             <h6 id="newDiv2">Army Public School (COD)</h6>
             
            <br>
             <!--TYPE YOUR CONTENT OF SUMMARY-->
     
          <div id="bottom-link">
              <span><b>Add Media:</b></span>
              <span class="s1"><a href="#documents" id="l1"><span class="glyphicon glyphicon-file"> </span>Document</a></span>
              <span class="s1"><a href="#Photo" id="l2" ><span class="glyphicon glyphicon-camera"> </span>Photo</a></span>
              <span class="s1"><a href="#Link"id="l3"><span class="glyphicon glyphicon-link"> </span>Link</a></span>
              <span class="s1"><a href="#Video" id="l4"><span class="glyphicon glyphicon-expand"> </span>Video</a></span>
              <span class="s1"><a href="#presentation" id="l5"><span class="glyphicon glyphicon-blackboard"> </span>Presentation</a></span>
              
              
              
          </div>
          
         
    </div>
  </div>
   
     
     </div> 
     
     <div class="div2" ><!--side bar-->
      <h1>Salman Place your Contant here</h1>
      
      
      
       
   
  </div><!--side bar-->
</div>



<div class="container"  id="body"> 
    
    <div class="div3">
      
   <div class="media">
       
      
      <div class="media-body" id="text">
       
            <h2 class="media-heading"  id="summary" ><small><b>Education</small></b></h2>
            
                <h5 id="newDiv1">Karachi University</h5>
             <h6 id="newDiv2">Masters in Computer Science(MCS)</h6>
             <h6 class="newDiv2">Masters in Computer Science(MCS)</h6>
             <h6 class="newDiv2">2015-2016</h6>
             <h6 class="newDiv2">All time busy in Job and teaching</h6>
             
             
             
            <br>
             <!--TYPE YOUR CONTENT OF SUMMARY-->
     
          <div id="bottom-link">
              <span><b>Add Media:</b></span>
              <span class="s1"><a href="#documents" id="l1"><span class="glyphicon glyphicon-file"> </span>Document</a></span>
              <span class="s1"><a href="#Photo" id="l2" ><span class="glyphicon glyphicon-camera"> </span>Photo</a></span>
              <span class="s1"><a href="#Link"id="l3"><span class="glyphicon glyphicon-link"> </span>Link</a></span>
              <span class="s1"><a href="#Video" id="l4"><span class="glyphicon glyphicon-expand"> </span>Video</a></span>
              <span class="s1"><a href="#presentation" id="l5"><span class="glyphicon glyphicon-blackboard"> </span>Presentation</a></span>
              
              
              
          </div>
          
         
    </div>
  </div>
   
     
     </div> 
     
     
</div>



<div class="container"  id="body"> 
    
    <div class="div3">
      
   <div class="media">
       
      
      <div class="media-body" id="text">
       
            <h2 class="media-heading"  id="summary" ><small><b>Skills And Endorsements</small></b></h2>
            
              
             
            <br>
             <!--TYPE YOUR CONTENT OF SUMMARY-->
            <div id="todo">   <div class="form-group">
                      <div class="input-group">
                   
                         <input type="text" id="myInput"  class="form-control" placeholder="Title...">
                      </div>
     
                     </div>
                     <button onclick="newElement()" class="btn btn-primary">Add</button>                     
                     <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal">Save</button>
                     <div class="modal fade" id="myModal" role="dialog">
                     

                <div class="modal-dialog">
    
      <!-- Modal content-->
                 <div class="modal-content">
             <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Do You Want to Save</h4>
              </div>
              <div class="modal-body">
              <p>Press OK</p>
             </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
        </div>
      </div>
      
    </div>
  </div>
          </div>
             <!-- <input type="text" id="myInput" class="newDiv2" class="form-control" placeholder="Title...">
     
               <button onclick="newElement()" class="addBtn">Add</button><br>-->
               
               
              <div id="list" onmouseover="this.style.backgroundColor='skyblue'" onmouseout="this.style.backgroundColor='white'" >
                    <ul id="myUL">

  
                   </ul>

            </div>
          
          
         
    </div>
  </div>
   
     
     </div> 
     
     
</div>




    </div>
    </form>






    <style>/*CSS For Javascript Code for Adding Skils Option*/
 
    #list{
  margin-top: 20px;

width: 90%;
margin-left: auto;
margin-right: auto;


}
#todo{
    
    padding-left: 5%;
    padding-right: auto;
}
td{
 
margin-top: 5px;
display: inline-block;
  margin:5px;
  background-color: #E9E9E9;
font-size: 18px;
border: 1px solid #E9E9E9;;
border-radius: 2px;
padding: 5px;
}
ul {
  margin: 0;
  padding: 0;
}
</style>
<script>

// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("td");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  
  myNodelist.className="s1";
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}


function newElement() {
  var li = document.createElement("td");
  var inputValue = document.getElementById("myInput").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  }
  document.getElementById("myInput").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}
</script>

</body>
</html>
