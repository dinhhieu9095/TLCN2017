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
	<header id="header">
		<div class="top-header">
			<div class="clearfix">
				<div class="top-header-inner clearfix">
					<div class="header-currency mr-20">
						<a href="#"><span><i class="fa-dollar"></i>US Dollar</span></a>
						<div class="currency-show">
							<ul>
								<li><a href="#"><span><i class="fa-gbp"></i>UK
											Pound</span></a></li>
								<li><a href="#"><span><i class="fa-euro"></i>EU
											Euro</span></a></li>
							</ul>
						</div>
						<!-- end other -->
					</div>
					<div class="header-phone">
						<i class="icon icon-phone-support"></i>+1900 12 213 21
					</div>
					<%
						if (session.getAttribute("customer") != null) {
					%>
					<div class="header-language ml-10">
						<a href="#" class="english"><span>Quản lý</span></a>
						<div class="other_languages">
							<ul class="clearfix">
							<c:if test="${customer.customerID==1 }">
								
								<li><a href="${pageContext.request.contextPath}/AdminTicket_detail" class="espanol"><span>Hóa đơn khách hàng</span></a></li>
								<li><a href="${pageContext.request.contextPath}/AdminListUser" class="italiano"><span>Khách hàng</span></a></li>
								<li><a href="${pageContext.request.contextPath}/UserManagement" class="deutsch"><span>Tài Khoản</span></a></li>
								<li><a href="${pageContext.request.contextPath}/UserTicket_detail?customerID=${customer.customerID}" class="deutsch"><span>Hóa đơn</span></a></li>
								</c:if>
								<c:if test="${customer.customerID!=1 }">
								
								<li><a href="${pageContext.request.contextPath}/UserManagement" class="deutsch"><span>Tài Khoản</span></a></li>
								<li><a href="${pageContext.request.contextPath}/UserTicket_detail?customerID=${customer.customerID}" class="deutsch"><span>Hóa đơn</span></a></li>
								</c:if>
								
							</ul>
						</div>
						<!-- end other -->
					</div>


					

					<div class="header-register">
						<a href="${pageContext.request.contextPath }/logout" class="br"><i
							class="icon icon icon-user-add mi"></i>Đăng xuất</a>

						<!-- end other -->
					</div>
					<div class="header-login mr-15">
						<a class="br"><i class="fa-sign-in mi"></i>Xin chào:
							${customer.firstName}</a>
						<!-- end other -->
					</div>
					<div class="clear xss-mb-10"></div>
					<%
						} else {
					%>
					<div class="header-register">
						<a href="#" class="br"><i class="icon icon icon-user-add mi"></i>Đăng nhập</a>
						<div class="register_show">
							<s:form commandName="customerData"
								action="${pageContext.request.contextPath }/login">
								<p style="color: red;">${failed}</p>
								<div class="form-group">
									<label for="register-email">Email</label> <input type="text"
										class="form-control" name="mail" placeholder="Email">
									<s:errors path="mail" cssStyle="color:red;" />
								</div>
								<div class="form-group">
									<label for="register-password">Mật Khẩu</label> <input
										type="password" class="form-control" name="password"
										placeholder="Password">
									<s:errors path="password" cssStyle="color:red;" />
								</div>


								<button type="submit" value="Login" class="btn btn-primary">Login</button>
								<div class="clear mb-10"></div>
							</s:form>
							<div>
								<p style="color: red;">${failed }</p>
							</div>
						</div>
						<!-- end other -->
					</div>
					<div class="header-login mr-15">
						<a href="${pageContext.request.contextPath}/createUser" class="br"><i
							class="fa-sign-in mi"></i>Đăng ký</a>
						<!-- end other -->
					</div>
					<div class="clear xss-mb-10"></div>
					<%
						}
					%>
				</div>
				<!-- end top-header-inner -->
			</div>
			<!-- end container -->
		</div>
		<!-- end top-header -->
		<div class="clear"></div>
		<div class="large-header my_sticky">
			<div class="clearfix">
				<div class="logo">
					<a href="${pageContext.request.contextPath }/Index" title="Logo"><img
						src="resources/images/logo.png" alt="Logo"></a>
				</div>
				<!-- end logo -->
				<div class="search-wrapper">
					<button id="#search-collapse" class="search-toggle">
						<i class="icon icon-active-search"></i>
					</button>
					<div id="search-collapse" style="display: none;">
						<form action="#" method="get">
							<input type="text" id="search-collapse-inner"
								name="search-collapse-inner" placeholder="Search ...">
						</form>
					</div>
					<!-- End search-collapsem -->
				</div>
				<!-- End search-wrapper -->
				<nav>
					<ul class="sf-menu">
						<li class="current"><a href="${pageContext.request.contextPath }/Index">Trang chủ</a>
							<ul class="col3 mega">
								<li class="col1">
									<ol>
										<li class="title">Variants</li>
										<li><a href="${pageContext.request.contextPath }/Index">Style 2</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Style 3 - Offer</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Style 4 - Minimal</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Style 5 -
												Present</a></li>
									</ol>
								</li>
								<li class="col1">
									<ol>
										<li class="title">Layouts</li>
										<li><a href="${pageContext.request.contextPath }/Index">Boxed</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Boxed Margin</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Home Style - 6</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Home Style - 7</a></li>
									</ol>
								</li>
								<li class="col1">
									<ol>
										<li class="title">Sliders</li>
										<li><a href="${pageContext.request.contextPath }/Index">FlexSlider</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Owl Slider - 1 </a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Owl Slider
												- 2</a></li>
										<li><a href="${pageContext.request.contextPath }/Index">Owl Slider
												- 3</a></li>
									</ol>
								</li>
							</ul></li>
						<li><a href="#">Hotels</a></li>
						<li><a href="#">Flights</a></li>
						<li><a href="#">Vocations</a></li>
						<li><a href="#">Things To Do</a></li>
						<li><a href="#">Pages</a></li>
							
						<li><a href="#">Blog</a>
	
						<li><a href="#">Contact</a></li>
						<li><a href="#">Purchase</a></li>
					</ul>
					<!-- end menu -->
				</nav>
				<!-- end nav -->
			</div>
			<!-- end container -->
		</div>
		<!-- end large-header -->
	</header>
	<!-- end header -->

</body>
</html>