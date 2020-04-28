<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Wind Rises</title>
<meta name="keywords"
	content="Hotel, Travel, Tour, Trip, Booking , CSS3, HTML5, Repsonsive" />
<meta name="description"
	content="Responsive Template for Travel Agency and Complete Booking System">
<meta name="author" content="hoomey">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- ============================================
		Fav and touch icons
	============================================= -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="resources/images/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="resources/images/ico/favicon.png">

<!-- Styles -->
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="resources/css/external-styled.css" media="screen" />
<link rel="stylesheet" type="text/css" href="resources/style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="resources/css/icons.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="resources/css/animate.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="resources/css/jquery-ui.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="resources/css/smoothness/jquery-ui-1.8.16.custom.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="resources/css/responsive.css" media="screen" />
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300italic,300,100,500,400italic,500italic,700'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

<script src="http://maps.google.com/maps/api/js?sensor=false"></script>

</head>
<body>
<footer id="footer">
			<div class="primary-footer">
				<div class="container">
					<div class="row pt-50 pb-30">
						<div class="col-xs-12 col-sm-3 col-md-3 rs-mb">
							<h4 class="widget-title mb-30">Giới thiệu</h4>
							<div class="logo-footer mt-20 mb-10">
								<img src="resources/images/logo-footer.png" alt="logo" />
							</div>
							<p>
								Left till here away at to whom past. Feelings laughing at no...
								<a href="#" style="font-weight: 300; font-style: italic">view
									more</a>
							</p>
							<div class="social with_color">
								<a href="#" class="bottomtip" title="Twitter"><i
									class="fa-twitter"></i></a> <a href="#" class="bottomtip"
									title="Facebook"><i class="fa-facebook"></i></a> <a href="#"
									class="bottomtip" title="Dribbble"><i class="fa-dribbble"></i></a>
								<a href="#" class="bottomtip" title="Youtube"><i
									class="fa-youtube"></i></a> <a href="#" class="bottomtip"
									title="RSS"><i class="fa-rss"></i></a>
							</div>
							<!-- end social -->
							<div class="clear"></div>
						</div>
						<div class="col-xs-12 col-sm-3 col-md-3 xs-mb">
							<h4 class="widget-title mb-20">Travel Specialists</h4>
							<ul class="link-list">
								<li><a href="#" title="Travel Specialists">Honeymoon</a></li>
								<li><a href="#" title="Travel Specialists">Winter Sun
										Holidays</a></li>
								<li><a href="#" title="Travel Specialists">Safari
										Season</a></li>
								<li><a href="#" title="Travel Specialists">Luxury
										Cities</a></li>
								<li><a href="#" title="Travel Specialists">Family
										Holidays</a></li>
								<li><a href="#" title="Travel Specialists">Culture
										Trips</a></li>
								<li><a href="#" title="Travel Specialists">Tropical
										Adventure</a></li>
							</ul>
						</div>
						<div class="col-xs-12 col-sm-3 col-md-3 xs-mb">
							<h4 class="widget-title mb-20">Quick Links</h4>
							<ul class="link-list">
								<li><a href="#" title="Quick Links">Make reservation</a></li>
								<li><a href="#" title="Quick Links">FAQ</a></li>
								<li><a href="#" title="Quick Links">Payment Options</a></li>
								<li><a href="#" title="Quick Links">Booking Tips</a></li>
								<li><a href="#" title="Quick Links">Information</a></li>
								<li><a href="#" title="Quick Links">Hotel Awards</a></li>
								<li><a href="#" title="Quick Links">Press Room</a></li>
							</ul>
						</div>
						<div class="col-xs-12 col-sm-3 col-md-3">
							<h4 class="widget-title mb-20">Newsletter</h4>
							<div class="newsletter mt-20">
								<form name="email-validation" id="email-validation"
									class="fixed-position" action="#" novalidate>
									<input type="email" name="form-control" id="input-email"
										class="form-control" placeholder="Enter Your Email" value="">
									<button type="submit" class="btn btn-primary submit-button">
										<i class="arrow_carrot-right_alt2"></i>
									</button>
								</form>
							</div>
							<!-- End newsletter -->
							<div class="clear mb-30"></div>
							<h4 class="widget-title">Customer Support</h4>
							<p class="phone-number text-info">
								<i class="icon icon-phone-support mr-10"></i>+1900 12 213 21
							</p>
							<a href="mailto:dowenstation@gmail.com" class="font16 font300">office@tongtiew.com</a>
						</div>
					</div>

				</div>
			</div>
			<div class="bottom-footer">
				<div class="container pv-15 bt">
					<p class="copy-right text-center">
						&copy; 2014 <a href="index-2.html">TongTiew</a>. All Right
						Reserved
					</p>
					<div id="toTop" class="toptip" title="Back to Top">
						<i class="icon icon-up-open-big"></i>
					</div>
					<!-- Back to top -->
				</div>
			</div>
		</footer>
		<!-- Scripts -->
	<script type="text/javascript" src="resources/js/jquery.v2.0.3.js"></script>
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="resources/js/plugins.js"></script>
	<script type="text/javascript" src="resources/js/sliders.js"></script>
	<script type="text/javascript" src="resources/js/custom.js"></script>
		
</body>
</html>