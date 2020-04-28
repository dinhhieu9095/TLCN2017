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
				<div class="page-name">Thông tin hành khách</div>
				<div class="breadcrumb clearfix">
					<a href="${pageContext.request.contextPath}/Index">Home</a> <span class="current-page">Information</span>
				</div>
			</div>
		</div>
		<!-- end slider_wrapper -->

		<div id="content_wrapper">
			<div class="container">
				<div class="row clearfix pv-50">

					<div class="col-xs-12 col-sm-8 col-md-8 xs-mb">
						<div class="white-bg payment-wrapper">
							<h3 class="section-title">
								1. Thông tin hành khách <span class="step active">1</span>
							</h3>
							<div class="bb2 mb-20"></div>
							<s:form commandName="ticketData"
								action="${pageContext.request.contextPath }/addticket"
								method="post">

								<%
									for (int i = 1; i <= (Integer) session.getAttribute("seat"); i++) {
								%>


								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="first-name">Hành khách <%=i%>(Người lớn) <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" name="tickets[<%=i - 1%>].name"
											placeholder="Họ tên"> <input type="text"
											name="tickets[<%=i-1%>].ticket_detailID"
											value="${ticket_detail.ticket_detailID}" hidden="hide" /> <input
											type="text" name="tickets[<%=i-1%>].typeID" value="${1}"
											hidden="hide" />
									</div>

								</div>


								<%
									}
								%>
								<%
									for (int j = (Integer) session.getAttribute("seat")+1; j <= ((Integer) session.getAttribute("seat")
												+ (Integer) session.getAttribute("seat1")); j++) {
								%>

								<div class="col-xs-12 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="first-name">Hành khách <%=j%>(Trẻ em) <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" name="tickets[<%=j%>].name"
											placeholder="Họ tên"> <input type="text"
											name="tickets[<%=j%>].ticket_detailID"
											value="${ticket_detail.ticket_detailID}" hidden="hide" /> <input
											type="text" name="tickets[<%=j%>].typeID" value="${2}"
											hidden="hide" />
									</div>

								</div>


								<%
									}
								%>
								<button type="submit" value="Conform" class="btn btn-primary">Xác nhận</button>
							</s:form>
							
							<div class="clear"></div>
						</div>
					</div>
					<!-- end content_wrapper -->
					<jsp:include page="Orderpage.jsp" flush="true" />
					<!-- end content_wrapper -->
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
	<script type="text/javascript">
		submitForms = function() {
			setTimeout(function() {
				document.getElementById("form3").submit();
			}, 20000);
			setTimeout(function() {
				document.getElementById("form2").submit();
			}, 30000);
			setTimeout(function() {
				document.getElementById("form1").submit();
			}, 40000);
		}
	</script>
</body>
</html>