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

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>

	<div id="body_wrapper" class="full">
		<!-- header -->
	<jsp:include page="header.jsp" flush="true" />

		<div id="slider_wrapper">
			<div class="owl-slider-wrapper center-capture">
				<div id="owl-slider" class="owl-carousel owl-theme">

					<div class="item">
						<img class="lazyOwl"
							data-src="resources/images/sliders/owlSlider-01.jpg" alt="Image">
						<div class="owl-capture">
							<p class="owl-price">Starting From $190 only</p>
							<h2>
								<a href="#" class="right-capture">Exotic Paradise Relax</a>
							</h2>
							<p>Phuket, Thailand</p>
						</div>
					</div>
					<div class="item">
						<img class="lazyOwl"
							data-src="resources/images/sliders/owlSlider-03.jpg" alt="Image">
						<div class="owl-capture">
							<p class="owl-price">Starting From $370 only</p>
							<h2>
								<a href="#" class="right-capture">Enjoy Your Modern Life</a>
							</h2>
							<p>Paris, France</p>
						</div>
					</div>
					<div class="item">
						<img class="lazyOwl"
							data-src="resources/images/sliders/owlSlider-04.jpg" alt="Image">
						<div class="owl-capture">
							<p class="owl-price">Starting From $400 only</p>
							<h2>
								<a href="#" class="right-capture">Your Honeymoon Day</a>
							</h2>
							<p>Santorini, Greece</p>
						</div>
					</div>
				</div>
				<div class="owlSliderNavigation">
					<a class="owlSlider-prev"><i class="arrow_carrot-left_alt2"></i></a>
					<a class="owlSlider-next"><i class="arrow_carrot-right_alt2"></i></a>
				</div>
			</div>
		</div>
		<!-- end slider_wrapper -->
		<div id="content_wrapper">
			<div class="container">

				<div class="travel-search">
					<div class="travel-search-inner">
						<ul class="tabs searchTab">
							<li><a href="#hotelsSearch" class="active"><span
									class="hotel mi"></span>Một chiều</a></li>
							<li><a href="#flightsSearch"><span class="flight mi"></span>Khứ hồi</a></li>
							
						</ul>
						<!-- tabs -->

						<ul class="tabs-content">
							<li id="hotelsSearch" class="active">
								<s:form commandName="flightData" 
								action="${pageContext.request.contextPath }/search">
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group">
											<label >Nơi đi</label> <select
												class="form-control mySelectBoxClass" name="origin">
												<option selected>HaNoi</option>
												<option>HoChiMinh</option>
												<option>KienGiang</option>
												<option>PhuQuoc</option>
												<option>NhaTrang</option>
												<option>DaNang</option>
												<option>Hue</option>
											</select>
											<s:errors path="origin" cssStyle="color:red;" />
										</div>
									</div>
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group">
											<label for="flightTo">Nơi đến</label> 
											<select
												class="form-control mySelectBoxClass" name="destination">
												<option selected>HoChiMinh</option>
												<option >HaNoi</option>
												<option>KienGiang</option>
												<option>PhuQuoc</option>
												<option>NhaTrang</option>
												<option>DaNang</option>
												<option>Hue</option>
											</select>
											<s:errors path="destination" cssStyle="color:red;" />
										</div>
									</div>
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group">
											<label>Thời gian đi</label> 
											<input
												type="date" id="departTime"  name="departTime">
											<s:errors path="departTime" cssStyle="color:red;" />
										</div>
									</div>
									<div class="col-xs-12 col-sm-3 col-md-1">
										<div class="form-group">
											<label >Người lớn</label> <select
												class="form-control mySelectBoxClass" name="seat">
												<option selected>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
											<s:errors path="seat" cssStyle="color:red;" />
										</div>
									</div>
								<div class="col-xs-12 col-sm-3 col-md-1">
										<div class="form-group">
											<label >Trẻ em</label> <select
												class="form-control mySelectBoxClass" name="seat1">
												<option selected>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
											<s:errors path="seat1" cssStyle="color:red;" />
										</div>
									</div>
									<div class="col-xs-12 col-sm-2 col-md-2">
										<div class="clear"></div>
										<button type="submit" value="Search" class="btn btn-primary btn-block">Tìm</button>
									</div>
								</s:form>
								<div>
								<p style="color: red;">${failed}</p>
							</div>

							</li>
							<li id="flightsSearch">
							<s:form commandName="flightData" 
								action="${pageContext.request.contextPath }/search1">
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group">
											<label for="flightFrom">Nơi đi</label> 
											<select
												class="form-control mySelectBoxClass" name="origin">
												<option selected>HaNoi</option>
												<option >HoChiMinh</option>
												<option>KienGiang</option>
												<option>PhuQuoc</option>
												<option>NhaTrang</option>
												<option>DaNang</option>
												<option>Hue</option>
											</select>
										</div>
									</div>
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group">
											<label for="flightTo">Nơi đến</label> 
											<select
												class="form-control mySelectBoxClass" name="destination">
												<option selected>HoChiMinh</option>
												<option >HaNoi</option>
												<option>KienGiang</option>
												<option>PhuQuoc</option>
												<option>NhaTrang</option>
												<option>DaNang</option>
												<option>Hue</option>
											</select>
										</div>
									</div>
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group datepicker-wrapper">
											<label for="flightCheckIn">Ngày đi</label> <input
												type="date" name="departTime"
												placeholder="dd/dm/yy">
										</div>
									</div>
									<div class="col-xs-12 col-sm-4 col-md-2">
										<div class="form-group datepicker-wrapper">
											<label for="flightCheckOut">Ngày về</label> <input
												type="date"  name="arrivalTime"
												placeholder="dd/dm/yy"> 
										</div>
									</div>
									<div class="col-xs-12 col-sm-3 col-md-1">
										<div class="form-group">
											<label for="flightAdult">Người lớn</label> <select
												class="form-control mySelectBoxClass" name="seat">
												<option selected>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
									</div>
									<div class="col-xs-12 col-sm-3 col-md-1">
										<div class="form-group">
											<label for="flightChild">Trẻ em</label> <select
												class="form-control mySelectBoxClass" name="seat1">
												<option>0</option>
												<option selected>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
											
										</div>
									</div>
									<div class="col-xs-12 col-sm-2 col-md-2">
										<div class="clear"></div>
										<button type="submit" value="Search" class="btn btn-primary btn-block">Tìm</button>
									</div>
								</s:form>
							</li>
							
									
						
							
						</ul>
					</div>
				</div>

				<div class="clear"></div>



			</div>
		</div>
		<!-- end content_wrapper -->

		<!-- footer -->
		<jsp:include page="footer.jsp" flush="true" />

	</div>
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