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
				<div class="page-name">Danh sách chuyến bay</div>
				<div class="breadcrumb clearfix">
					<a href="${pageContext.request.contextPath}/Index">Home</a> <span
						class="current-page">Danh sách chuyến bay</span>
				</div>
			</div>
		</div>
		<!-- end slider_wrapper -->

		<div id="content_wrapper">
			<div class="container">
				<div class="row clearfix pv-30 mt-20">

					<div class="col-xs-12 col-sm-8 col-md-8 xs-mb">
						<div class="row items-container list-style">

							<c:forEach var="flights" items="${flights}">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="list-item">

										<!-- end list-item -->
										<div class="list-item-label" style="height: 200px;">
											<div class="left">
												<h4 class="list-item-title">
													<a class="inverse">Chuyến Đi</a>
												</h4>
												<h4 class="list-item-title">
													<a class="inverse">Từ:
														${flights.origin} --> đến: ${flights.destination}</a>
												</h4>
												<span class="list-item-location">Thời gian:
													${flights.departTime}</span>
												<div class="list-item-details">
													<div class="clear mt-10"></div>
													<table>

														<tbody>
															<tr>
																<td>Hành khách</td>
																<td>số vé</td>
																<td>Giá mỗi vé</td>
																<td>Thuế</td>
																<td>Tông thuế</td>
															</tr>

															<tr>

															</tr>

															<c:set var="Totaltax" value="${0}" />
															<c:forEach var="type" items="${type}">
																<c:set var="tax" value="${type.tax*flights.price/100}" />
																<c:if test="${type.typeID==1}">

																	<c:set var="tax1" value="${tax*seat}" />
																	<c:set var="Totaltax" value="${Totaltax+tax1}" />
																	<tr>
																		<td>${type.type}</td>
																		<td>${seat}</td>
																		<td>${flights.price}</td>
																		<td>${tax}</td>
																		<td>${tax1}</td>
																	</tr>
																</c:if>
																<c:if test="${type.typeID==2 }">

																	<c:set var="tax1" value="${tax*seat1}" />
																	<c:set var="Totaltax" value="${Totaltax+tax1}" />
																	<tr>
																		<td>${type.type}</td>
																		<td>${seat1}</td>
																		<td>${flights.price}</td>
																		<td>${tax}</td>
																		<td>${tax1}</td>
																	</tr>
																</c:if>
															</c:forEach>
															<c:set var="Totalprice" scope="session"
																value="${(seat+seat1)*flights.price}" />
															<tr>
																<td width="100px">Total</td>
																<td><input type="text" name="totalclient"
																	value="${seat+seat1}" disabled="disabled"
																	style="border: none; width: 100px; background-color: #ffffff" /></td>
																<td><input type="text" name="totalprice"
																	value="${Totalprice}" disabled="disabled"
																	style="border: none; width: 100px; background-color: #ffffff" /></td>
																<td width="100px"></td>

																<c:set var="Totax" scope="session" value="${Totaltax}" />
																<td><input type="text" name="totaltax"
																	value="${Totaltax}" disabled="disabled"
																	style="border: none; width: 100px; background-color: #ffffff" /></td>
															</tr>
															<c:set var="Totalfee" scope="session"
																value="${Totaltax+Totalprice}" />

														</tbody>

													</table>

												</div>
											</div>
											<div class="right">
												<div class="list-item-meta">
													<span class="rating-static rating-30"></span> <span
														class="list-item-review">Tổng cộng</span>
												</div>
												<div class="list-item-price">${Totalfee}</div>
												<a
													href="${pageContext.request.contextPath}/Orderpage?flightID=${flights.flightID}&&custonmerID=${customer.customerID}"
													class="btn">Đặt</a>
											</div>
										</div>
									</div>
								</div>

							</c:forEach>
							<c:forEach var="flights1" items="${flights1}">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="list-item">

										<!-- end list-item -->
										<div class="list-item-label" style="height: 200px;">
											<div class="left">

													<h4 class="list-item-title">
														<a class="inverse">Chuyến Về</a>
													</h4>
											
													<h4 class="list-item-title">
														<span class="inverse">Từ:
															${flights1.origin} --> đến: ${flights1.destination}</span>
													</h4>
												
													<span class="list-item-location">Thới gian:
														${flights1.departTime}</span>
											
												<div class="list-item-details">
													<div class="clear mt-10"></div>
													<table>

														<tbody>
															<tr>
																<td>Hành khách</td>
																<td>Số vé</td>
																<td>Giá mỗi vé</td>
																<td>Thuế</td>
																<td>Tổng thuế</td>
															</tr>

															<tr>

															</tr>

															<c:set var="Totaltax" value="${0}" />
															<c:forEach var="type" items="${type}">
																<c:set var="tax" value="${type.tax*flights1.price/100}" />
																<c:if test="${type.typeID==1}">

																	<c:set var="tax1" value="${tax*seat}" />
																	<c:set var="Totaltax" value="${Totaltax+tax1}" />
																	<tr>
																		<td>${type.type}</td>
																		<td>${seat}</td>
																		<td>${flights1.price}</td>
																		<td>${tax}</td>
																		<td>${tax1}</td>
																	</tr>
																</c:if>
																<c:if test="${type.typeID==2 }">

																	<c:set var="tax1" value="${tax*seat1}" />
																	<c:set var="Totaltax" value="${Totaltax+tax1}" />
																	<tr>
																		<td>${type.type}</td>
																		<td>${seat1}</td>
																		<td>${flights1.price}</td>
																		<td>${tax}</td>
																		<td>${tax1}</td>
																	</tr>
																</c:if>
															</c:forEach>
															<c:set var="Totalprice" scope="session"
																value="${(seat+seat1)*flights1.price}" />
															<tr>
																<td width="100px">Total</td>
																<td><input type="text" name="totalclient"
																	value="${seat+seat1}" disabled="disabled"
																	style="border: none; width: 100px; background-color: #ffffff" /></td>
																<td><input type="text" name="totalprice"
																	value="${Totalprice}" disabled="disabled"
																	style="border: none; width: 100px; background-color: #ffffff" /></td>
																<td width="100px"></td>

																<c:set var="Totax" scope="session" value="${Totaltax}" />
																<td><input type="text" name="totaltax"
																	value="${Totaltax}" disabled="disabled"
																	style="border: none; width: 100px; background-color: #ffffff" /></td>
															</tr>
															<c:set var="Totalfee" scope="session"
																value="${Totaltax+Totalprice}" />

														</tbody>

													</table>

												</div>
											</div>
											<div class="right">
												<div class="list-item-meta">
													<span class="rating-static rating-30"></span> <span
														class="list-item-review">Tổng cộng</span>
												</div>
												<div class="list-item-price">${Totalfee}</div>
												<a
													href="${pageContext.request.contextPath}/Orderpage?flightID=${flights1.flightID}&&custonmerID=${customer.customerID}"
													class="btn">Đặt</a>
											</div>
										</div>
									</div>
								</div>

							</c:forEach>
						</div>


					</div>
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