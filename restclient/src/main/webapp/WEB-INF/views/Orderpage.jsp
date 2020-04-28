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
	<div class="col-xs-12 col-sm-4 col-md-4">
		<div class="sidebar hotel-sidebar">
			<div class="white-bg payment-wrapper">
				<div class="sidebar-item mb-20">
					<div class="summary-payment">
						<div class="summary-header mb-30">
							<img src="resources/images/list-items/small-item-01.jpg"
								alt="Alternative Hotel" />
							<h3 class="no-mb">Tóm tắt đơn đặt vé</h3>
							<span>Go</span> <span class="rating-static rating-45"></span>
						</div>
						<div>
								<p style="color: red;">${fail}</p>
							</div>
						<div class="bb2 mb-30"></div>
							<table class="table table-bordered table-striped mb-30">
								<tr>
									<td colspan=2><span class="text-bold">Từ</span>:
										${flight.origin}</td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Đến</span>:
										${flight.destination}</td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Thời gian</span>:
										${flight.departTime}</td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Giá vé</span>:
										${flight.price}</td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Số hành khách</span>: ${seat+seat1}
											<input type="text" name="totalclient"
										value="${seat+seat1}" hidden="hide"
										 /></td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Người đặt vé</span>: ${customer.firstName}
									<input
										type="text" name="customerID" value="${customer.customerID}" hidden="hide"
										 /><input
										type="text" name="flightID" value="${flight.flightID}" hidden="hide"
										/></td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Tổng giá vé</span>: ${sessionScope.Totalprice}
										<input type="text" name="totalprice" 
										value="${sessionScope.Totalprice}" hidden="hide" /></td>
								</tr>
								<tr>
									<td colspan=2><span class="text-bold">Tổng thuế</span>: ${sessionScope.Totax}
									<input
										type="text" name="totaltax" value="${sessionScope.Totax}" hidden="hide"
										/></td>
								</tr>
							</table>

							<div class="bb2 mb-20"></div>

							<span class="left">Tổng cộng:</span>
							<span class="right text-success text-bold font24">${sessionScope.Totalfee}</span>

							<div class="clear mb-10"></div>
							
						
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- end content_wrapper -->

	<!-- end content_wrapper -->

	<!-- end body_wrapper -->


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