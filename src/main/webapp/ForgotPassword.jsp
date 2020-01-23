<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0.5">

		<title>Forgot/Change Password</title>
		
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
				<h3 class="row3h3">Forgot/Change Password</h3>
			</div>
			<!-- COLUMN 1 END -->
			<!-- COLUMN 2 START -->
			<div class="col-md-8">
				<ol class="breadcrumb text-right row3ol">
	  				<li><a href="home">Home</a></li>
	  				<li class="active">Password </li>
				</ol>
			</div>
			<!-- COLUMN 2 END -->
		</div>
		<!-- ROW 3 END -->
		
		<!-- ROW 4 START -->
		<div class="container">
			<div class="row">
				
				<!-- COLUMN 2 START -->
				<div class="col-md-6">
					<hr/>
					<h3>Forgot/Change Password</h3>
					<form action="forgotpassword" method="post">
				  		<div class="form-group">
				    		<label>Email</label>
				    		<input type="email" class="form-control" name="email"/>
				  		</div>
				 		<div class="form-group">
				    		<label>New Password</label>
				    		<input type="password" class="form-control" name="newpassword"/>
				  		</div>
				  		<div class="text-center">
				  			<button type="submit" class="btn btn-primary btnn">&nbsp;&nbsp;Change Password</button>
				  			<!-- <a href="forgotpassword" class="btn btn-primary btnn" role="button">Change Password?</a> -->
				  		</div>
					</form>
					<hr/>
					
				</div>
				<!-- COLUMN 2 END -->
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