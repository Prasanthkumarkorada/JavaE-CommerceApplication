<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0.5">

		<title>SignUpForm</title>
		
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="fontawesome-free-5.5.0-web/css/all.css" rel="stylesheet">
		<link href="css/custom.css" rel="stylesheet">
	</head>
	<body>
		<!-- ROW 1 START -->
		<%@ include file="NavigationBar1.jsp" %>
		<!-- ROW 1 END -->
	
		<!-- ROW 2 START -->
		<%@ include file="NavigationBar2.html" %>
		<!-- ROW 2 END -->
		
		<!-- ROW 3 START -->
		<div class="row row3 lrpadding">
			<!-- COLUMN 1 START -->
			<div class="col-md-4">
				<h3 class="row3h3">Sign Up</h3>
			</div>
			<!-- COLUMN 1 END -->
			<!-- COLUMN 2 START -->
			<div class="col-md-8">
				<ol class="breadcrumb text-right row3ol">
	  				<li><a href="home">Home</a></li>
	  				<li class="active">Sign Up</li>
				</ol>
			</div>
			<!-- COLUMN 2 END -->
		</div>
		<!-- ROW 3 END -->
		
		<!-- ROW 4 START -->
		<div class="container">
			<div class="row">
				<!-- COLUMN 1 START -->
				<div class="col-md-6">
					<hr/>
					<% 
						String regStatus = (String)session.getAttribute("REGISTRATIONSTATUS");
						if(regStatus != null) {
							if(regStatus.equals("SUCCESS")) {
					%>
								<div class="alert alert-success">Sign Up Successful.</div>
					<% 
							} else {
					%>
							 	<div class="alert alert-danger">Sign Up Unsuccessful.</div>
					<% 
							}
						
							session.removeAttribute("REGISTRATIONSTATUS");
						}
					%>
					<h3>Sign Up</h3>
					<h4>Not Our Registered Customer Yet?</h4>
					<br/><p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
					<br/><p class="text-muted">If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.</p>
					<form action="register" method="post">
				  		<div class="form-group">
				    		<label>Name</label>
				    		<input type="text" class="form-control" name="f1"/>
				  		</div>
				  		<div class="form-group">
				    		<label>Email</label>
				    		<input type="email" class="form-control" name="f2"/>
				  		</div>
				 		<div class="form-group">
				    		<label>Password</label>
				    		<input type="password" class="form-control" name="f3"/>
				  		</div>
				  		<div class="form-group">
				    		<label>Gender</label>
				    		<input type="text" class="form-control" name="f4"/>
				  		</div>
				  		<div class="form-group">
				    		<label>Mobile Number</label>
				    		<input type="number" class="form-control" name="f5"/>
				  		</div>
				  		<div class="text-center">
				  			<button type="submit" class="btn btn-default btnn"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Register</button>
				  		</div>
					</form>
					<hr/>
					
				</div>
				<!-- COLUMN 1 END -->
				
			</div>
		</div>
		<!-- ROW 4 END -->
		
		<!-- ROW 5 START -->
		<%@ include file="Footer1.html" %>
		<!-- ROW 5 END -->
		
		<!-- ROW 6 START -->
		<%@ include file="Footer2.html" %>
		<!-- ROW 6 END -->

		<script src="js/jquery-3.3.1.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>