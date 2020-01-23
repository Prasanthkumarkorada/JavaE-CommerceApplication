<%@ page import="com.tadigital.entity.Customer" %>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid lrpadding">
		<div class="navbar-header">
			<p class="navbar-text">Contact Us on +91 40 66217777</p>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<% 
					String loggedin = "SUCCESS";
					String loginStatusInNavBar1 = (String)session.getAttribute("LOGINSTATUS");
				
					Customer customer = (Customer)session.getAttribute("CUSTOMERDATA");
				
					if(loginStatusInNavBar1!=null&&(loginStatusInNavBar1.equals(loggedin)&& customer != null)) {
						
				%>
				<li class="dropdown">
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome <%= customer.getName() %> <span class="caret"></span></a>
          				<ul class="dropdown-menu">
            				<li><a href="myaccount">My Account</a></li>
            				<li><a href="forgotpassword">Change Password</a></li>
           					<li><a href="signout">Sign Out</a></li>
            			</ul>
        		</li>
				<% 
					} else {
				%>
				<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Sign In</a></li>
				<li><a href="register"><span class="glyphicon glyphicon-user"></span>&nbsp;Sign Up</a></li>
				<% 
					}
	       		%>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fab fa-facebook-f"></span></a></li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fab fa-google-plus-g"></span></a></li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fab fa-twitter"></span></a></li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fas fa-envelope"></span></a></li>
			</ul>
		</div>
	</div>
</nav>