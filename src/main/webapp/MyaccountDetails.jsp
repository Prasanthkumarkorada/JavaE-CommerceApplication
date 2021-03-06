<%@ page import="com.tadigital.entity.Customer" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0.5">

		<title>My Account Details</title>
		
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
				<h3 class="row3h3">My Account Details</h3>
			</div>
			<!-- COLUMN 1 END -->
			<!-- COLUMN 2 START -->
			<div class="col-md-8">
				<ol class="breadcrumb text-right row3ol">
	  				<li><a href="home">Home</a></li>
	  				<li class="active">My Account Details</li>
				</ol>
			</div>
			<!-- COLUMN 2 END -->
		</div>
		<!-- ROW 3 END -->
		<br/><br/><br/>
				
		<!-- ROW 4 START -->
		<div class="container">
			<div class="row">
				<!-- COLUMN 1 START -->
				<div class="col-md-6">
				<div class="container">
					<div class="well">
						<form class="form-horizontal">
							<h3 class="text-center">Account Details</h3>
							<hr />
							<div class="form-group">
								<label for="name" class="control-label col-sm-3">Name:</label>
								<div class="form-control-static col-sm-3">
									<label><%= customer.getName() %></label>
								</div>
								<label for="email" class="control-label col-sm-1">Email:</label>
								<div class="form-control-static col-sm-3">
									<label><%= customer.getEmail() %> </label>
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="control-label col-sm-3">Gender:</label>
								<div class="form-control-static col-sm-3">
									<label><%= customer.getGender()%></label>
								</div>
								<label for="mobilenumber" class="control-label col-sm-1">Number:</label>
								<div class="form-control-static col-sm-3">
									<label><%= customer.getMobilenumber() %></label>
								</div>
							</div>
						</form>
					</div>
				</div>
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