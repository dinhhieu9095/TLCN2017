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
		<jsp:include page="header.jsp" flush="true" />

		<!-- end slider_wrapper -->
		<div id="page_title">
			<div class="container clearfix">
				<div class="page-name">Điền thông tin khách hàng</div>
				<div class="breadcrumb clearfix">
					<a href="${pageContext.request.contextPath }/Index">Home</a> <span class="current-page">Điền thông tin khách hàng</span>
				</div>
			</div>
		</div>
		<!-- end slider_wrapper -->

		<div id="content_wrapper">
			<div class="container">
				<div class="row clearfix pv-50">
<s:form commandName="customerData" 
								action="${pageContext.request.contextPath }/addUserInfo"
								method="post">
					<div class="col-xs-12 col-sm-8 col-md-8 xs-mb">
						<div class="white-bg payment-wrapper">
							<h3 class="section-title">
								Thông tin <span class="step active">1</span>
							</h3>
							<div class="bb2 mb-20"></div>
							<p style="color: red;">${failed}</p>
							
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="first-name">Tên <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" name="firstName"
											placeholder="First Name">
										<s:errors name="firstName" cssStyle="color:red;" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="last-name">Họ <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" name="lastName" placeholder="Last Name">
										<s:errors name="lastName" cssStyle="color:red;" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label>Mật khẩu<span class="text-danger">*</span></label> <input
											type="password" class="form-control" name="password">
										<s:errors name="password" cssStyle="color:red;" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="last-name">Nơi ở <span class="text-danger">*</span></label>
										<input type="text" class="form-control" name="City"
											placeholder="City">
										<s:errors name="city" cssStyle="color:red;" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="email-name">Địa chỉ email <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" name="mail" placeholder="Email Address">
										<s:errors name="mail" cssStyle="color:red;" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="email-comfirm-name">Tuổi <span
											class="text-danger">*</span>
										</label> <input type="text" class="form-control" name="age"
											placeholder="Age">
										<s:errors name="age" cssStyle="color:red;" />
									</div>
								</div>

								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="phone-number">Số điện thoại: <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" name="phone" placeholder="Phone Number">
										<s:errors name="phone" cssStyle="color:red;" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									
										<label for="inputEmail3">Giới tính: <span
											class="text-danger">*</span>
										</label>
										<div class="form-group">
											<div class="styled-radio inline">
												<label for="visa"> <input type="radio" name="gender"
													value="Name" checked> <img src="" alt="Nam">
												</label>
											</div>

											<div class="styled-radio inline">
												<label for="mastercard"> <input type="radio"
													name="gender" value="Nu"> <img src=""
													alt="Nữ">
												</label>
											</div>
										<s:errors name="gender" cssStyle="color:red;" />
									</div>
								</div>
								<button type="submit" value="Register" class="btn btn-primary">Hoàn tất</button>
							
						</div>

					</div>
					
					</s:form>
					<jsp:include page="Orderpage.jsp" flush="true" />
				</div>
			</div>
		</div>
		
		<!-- end content_wrapper -->

		<!-- end content_wrapper -->
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