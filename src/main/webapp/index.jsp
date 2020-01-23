<%@ page import="com.tadigital.entity.Customer" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0.5">

		<title>index</title>
		
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="fontawesome-free-5.5.0-web/css/all.css" rel="stylesheet">
		<link href="css/custom.css" rel="stylesheet">
	</head>
	<body>
		<% 
			String loginStatusInIndex = (String)session.getAttribute("LOGINSTATUS");
		
			if(loginStatusInIndex == null) {
				Cookie[] allCookies = request.getCookies();
				if(allCookies != null) {
					for(Cookie cookie : allCookies) {
						String cName = cookie.getName();
						if(cName.equals("TRAININGPROJECT_ARVIND")) {
							String cValue = cookie.getValue();
							
							session.setAttribute("COOKIEVALUE", cValue);
								
							response.sendRedirect("staysignedinlogin");
									
							break;
						}
					}
				}
			}
		%>
	
		<!-- ROW 1 START -->
		<%@ include file="NavigationBar1.jsp" %>
		<!-- ROW 1 END -->
	
		<!-- ROW 2 START -->
		<%@ include file="NavigationBar2.html" %>
		<!-- ROW 2 END -->
		
		<!-- ROW 3 START -->
		<div class="row">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					<li data-target="#carousel-example-generic" data-slide-to="4"></li>
				</ol>

				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="images/6ba3efd52627f2af.jpg" alt="..."/>
					</div>
					<div class="item">
						<img src="images/08d3e861b53705df.jpg" alt="...">
					</div>
					<div class="item">
						<img src="images/023d2d4a9cf86f42.jpg" alt="...">
					</div>
					<div class="item">
						<img src="images/54e55ddb877be152.jpg" alt="...">
					</div>
					<div class="item">
						<img src="images/e3705b572d0955d5.jpg" alt="...">
					</div>
				</div>

				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
			</div>
		</div>
		<!-- ROW 3 END -->
		
		<!-- ROW 4 START -->
		<div class="container-fluid">
			<br/>
			<div class="row lrpadding" style="background-color: black; color:white;">
				<div class="col-md-6">
					<h4 class="navbar-text">Deals of the Day</h4>
				</div>
				<div class="col-md-6">
					<button type="button" class="btn btn-primary navbar-btn navbar-right">View All</button>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/helkin-3-m-ss18-9-adidas-mysink-cblack-reagol-original-imaf2yznwyqzdzmd.jpeg"style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Men's Footwear</strong></h5>
							<p>Upto 60 + Extra 10% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/rsc0274-10-red-tape-blue-original-imaextu5n84xxhsc.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Adidas, Reebok & Puma</strong></h5>
							<p>Upto 50 + Extra 5% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/hp-entry-level-backpack-nec-hp-s-8-laptop-backpack-hp-original-imaet3zhgzfnd7tz.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Laptop Bags</strong></h5>
							<p>From &#x20b9;249</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/samsung-mb-mc32ga-in-original-imaet6za3yhhdq4z.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Memory Cards...</strong></h5>
							<p>Extra 5% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/tw00zr250-timex-original-imaf8wsejechwcfd.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Timex, Maxima...</strong></h5>
							<p>Under &#x20b9;999 + Extra 7% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/amt-scamp-daypck01-blu-yellow-fi4-0-01-001-backpack-american-original-imaf7e42eyyzx4hb.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Skybags, American...</strong></h5>
							<p>Under &#x20b9;999 + Extra 5% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ROW 4 END -->
		
		<!-- ROW 5 START -->
		<div class="container-fluid">
			<div class="row lrpadding" style="background-color: black; color:white;">
				<div class="col-md-6">
					<h4 class="navbar-text">Featured Brands</h4>
				</div>
				<div class="col-md-6">
					<button type="button" class="btn btn-primary navbar-btn navbar-right">View All</button>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-md-3">
					<img src="images/61b583.jpg" class="img-responsive" style="" alt="Responsive image">
				</div>
				<div class="col-md-3">
					<img src="images/7194c7.jpg" class="img-responsive" style="" alt="Responsive image">
				</div>
				<div class="col-md-3">
					<img src="images/1ee6febf917059b2.jpg" class="img-responsive" style="" alt="Responsive image">
				</div>
				<div class="col-md-3">
					<img src="images/5b570b8a9bd0b179.jpg" class="img-responsive" style="" alt="Responsive image">
				</div>
			</div>
			<br/>
		</div>		
		<!-- ROW 5 END -->
		
		<!-- ROW 6 START -->
		<div class="container-fluid">
			<div class="row lrpadding" style="background-color: black; color:white;">
				<div class="col-md-6">
					<h4 class="navbar-text">Mobile New Launches</h4>
				</div>
				<div class="col-md-6">
					<button type="button" class="btn btn-primary navbar-btn navbar-right">View All</button>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/mi-redmi-e7t-na-original-imafazxdh2bd6hep.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Redmi Note 6 Pro</strong></h5>
							<p>12MP+5MP | 20MP+2MP</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/realme-2-rmx805-original-imaf9sn9szzvzsyu.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Realme 2</strong></h5>
							<p>13MP+2MP | 8MP Camera</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/realme-c1-rmx1811-original-imaf9e7csexsdstd.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Realme C1</strong></h5>
							<p>13MP+2MP | 5MP Camera</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/nokia-6-1-na-original-imaf892exbgttdpe.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Nokia 6.1 Plus</strong></h5>
							<p>16MP+5MP Camera</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/lenovo-a5-padj0040cn-original-imafaycjjekkx5fg.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Lenovo A5</strong></h5>
							<p>16MP | 8MP Camera</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/redmi-note-5-pro-na-original-imaf2ashnnbxxks5.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Redmi Note 5 Pro</strong></h5>
							<p>12MP+5MP Camera</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<!-- ROW 6 END -->
		
		<!-- ROW 7 START -->
		<div class="container-fluid">
			<div class="row lrpadding" style="background-color: black; color:white;">
				<div class="col-md-6">
					<h4 class="navbar-text">Home Decor Range</h4>
				</div>
				<div class="col-md-6">
					<button type="button" class="btn btn-primary navbar-btn navbar-right">View All</button>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/789546p-awesome-vstu-original-imaf7vtwezwbhuun.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Decorative Bottles</strong></h5>
							<p>From &#x20b9;199</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/handpainted-peacock-design-wwc5090-analog-craft-junction-original-imaeztzpekug2zq4.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Wall Clocks</strong></h5>
							<p>Minimum 50% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/kvm-cf-lb04-kraft-village-original-imaeg546agyjtzjx.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>FengShui Showpieces</strong></h5>
							<p>Under &#x20b9;999</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/sscdr-89-decorhand-original-imaeft3kefhg3zcb.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Wall Shelves</strong></h5>
							<p>Upto 80% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/123-lipax-original-imaf9e885guuzysg.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Laser Lights</strong></h5>
							<p>Upto 60% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/mahi-blue-a-basement-bazaar-original-imaegbhc5cddn8ke.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Hookahs & Bongs</strong></h5>
							<p>Under &#x20b9;599</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<!-- ROW 7 END -->
		
		<!-- ROW 8 START -->
		<div class="container-fluid">
			<div class="row lrpadding" style="background-color: black; color:white;">
				<div class="col-md-6">
					<h4 class="navbar-text">Fashion Accessories</h4>
				</div>
				<div class="col-md-6">
					<button type="button" class="btn btn-primary navbar-btn navbar-right">View All</button>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/onesize-m155gr1-fastrack-original-imaexwzhgpaw5zqu.jpeg"style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Ray-Ban, Fastrack...</strong></h5>
							<p>20-60% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/38-inches-leather-belt-bt-1059041-belt-woodland-original-imaf5jgt3y4tg5jm.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Cross, Woodland...</strong></h5>
							<p>Top Rated</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/ad214-casio-original-imaer2c4hmdxkwqx.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Casio, Maxima...</strong></h5>
							<p>Upto 50% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/ex099-casio-original-imaeymepcz4eu5zz.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Casio, Fastrack...</strong></h5>
							<p>10-50% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/ng3039sp01c-fastrack-original-imaev2thd4f837wk.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Titan, Fastrack...</strong></h5>
							<p>20-80% off</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="thumbnail">
						<img src="images/ng38022pp06cj-fastrack-original-imaetxgteqwhggpc.jpeg" style="height: 150px;" alt="...">
						<div class="caption text-center">
							<h5><strong>Fastrack</strong></h5>
							<p>Under &#x20b9;999</p>
							<p>
								<a href="#" class="btn btn-primary btn-block" role="button">View</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<!-- ROW 8 END -->
		
		<!-- ROW 9 START -->
		<%@ include file="Footer1.html" %>
		<!-- ROW 9 END -->
		
		<!-- ROW 10 START -->
		<%@ include file="Footer2.html" %>
		<!-- ROW 10 END -->

		<script src="js/jquery-3.3.1.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>