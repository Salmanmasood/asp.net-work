<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="myproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Bootstrap Login &amp; Register Templates</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css"/>
		<link rel="stylesheet" href="assets/css/form-elements.css"/>
        <link rel="stylesheet" href="assets/css/style.css"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png"/>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png"/>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png"/>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">






</head>
<body>
    <form id="form1" runat="server">
    
         <!-- Top content -->
        <div class="top-content">
        	<div class="container">
                	
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <h1>Rozgaar IT &amp; Job Portal</h1>
                        <div class="description">
                        	<p>
	                         	Easy to find IT Jobs in karachi 
	                         	Download it on <a href="http://azmind.com" target="_blank">AZMIND</a>, 
	                         	customize and use it as you like!
                        	</p>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 show-forms">
                  <h1>  	<span class="show-register-form active">Register</span> 
                    	<span class="show-forms-divider">/</span> 
                    	<span class="show-login-form">Login</span>
                    </h1>
                      </div>
                </div>
                
                <div class="row register-form">
                    <div class="col-sm-4 col-sm-offset-1">
						<form role="form" action="#" method="post" class="r-form">
	                    	<div class="form-group">
	                    		<label class="sr-only form-control" for="r-form-first-name">First name</label>
	                        
                               	<asp:TextBox ID="txtUSEREMAIL" runat="server" class="form-control" PLACEHOLDER="User Email"></asp:TextBox>
                                
	                        </div>
	                        <div class="form-group">
	                        	<label class="sr-only" for="r-form-last-name">Last name</label>

	                        	<asp:TextBox ID="txtpassword" runat="server" class="form-control " PLACEHOLDER="Password" ></asp:TextBox>
	                        
                            </div>


                            <div class="form-group">
	                        	<label class="sr-only" for="r-form-last-name">Last name</label>

	                        	<asp:TextBox ID="txtcnfrmpassword" runat="server" class="form-control " PLACEHOLDER="Confirm Password" ></asp:TextBox>
	                        
                            </div>

	                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn" OnClick="Button1_Click" />
				          
						</form>
                    </div>
                    <div class="col-sm-6 forms-right-icons">
						<div class="row">
							<div class="col-sm-2 icon"><i class="fa fa-pencil"></i></div>
							<div class="col-sm-10">
								<h3>Beautiful Forms</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-2 icon"><i class="fa fa-commenting"></i></div>
							<div class="col-sm-10">
								<h3>Awesome Login</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-2 icon"><i class="fa fa-magic"></i></div>
							<div class="col-sm-10">
								<h3>Great Registration</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
							</div>
						</div>
                    </div>
                </div>
                
                <div class="row login-form">
                    <div class="col-sm-4 col-sm-offset-1">
						<form role="form" action="" method="post" class="l-form">
	                    	<div class="form-group">
	                    		<label class="sr-only" for="l-form-username">Username</label>
	                        	<input type="text" name="l-form-username" placeholder="Username..." class="l-form-username form-control" id="l-form-username">
	                        </div>
	                        <div class="form-group">
	                        	<label class="sr-only" for="l-form-password">Password</label>
	                        	<input type="password" name="l-form-password" placeholder="Password..." class="l-form-password form-control" id="l-form-password">
	                        </div>
				            <button type="submit" class="btn">Sign in!</button>
				    	</form>
				    	<div class="social-login">
                        	<p>Or login with:</p>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1" href="#"><i class="fa fa-facebook"></i></a>
	                        	<a class="btn btn-link-1" href="#"><i class="fa fa-twitter"></i></a>
	                        	<a class="btn btn-link-1" href="#"><i class="fa fa-google-plus"></i></a>
                        	</div>
                        </div>
                    </div>
                    <div class="col-sm-6 forms-right-icons">
						<div class="row">
							<div class="col-sm-2 icon"><i class="fa fa-user"></i></div>
							<div class="col-sm-10">
								<h3>New Features</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-2 icon"><i class="fa fa-eye"></i></div>
							<div class="col-sm-10">
								<h3>Easy To Use</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-2 icon"><i class="fa fa-twitter"></i></div>
							<div class="col-sm-10">
								<h3>Social Integrated</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
							</div>
						</div>
                    </div>
                </div>
                    
        	</div>
        </div>

        <!-- Footer -->
        <footer>
        	<div class="container">
        		<div class="row">
        			
        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
        				<p>Made by <a href="http://azmind.com" target="_blank">AZMIND</a>.</p>
        			</div>
        			
        		</div>
        	</div>
        </footer>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->






    </form>
</body>
</html>
