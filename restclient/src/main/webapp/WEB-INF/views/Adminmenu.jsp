<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>The Wind Rises</title>

<!-- Bootstrap core CSS -->

<link href="resources/rgt/css/bootstrap.min.css" rel="stylesheet">

<link href="resources/rgt/fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/rgt/css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="resources/rgt/css/custom.css" rel="stylesheet">
<link href="resources/rgt/css/icheck/flat/green.css" rel="stylesheet">


<script src="resources/rgt/js/jquery.min.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body class="nav-md">
<div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
            <a href="${pageContext.request.contextPath }/Index" class="site_title"><i class="fa fa-paw"></i> <span>The Wind Rises</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
          <div class="profile">
            <div class="profile_pic">
              <img src="resources/rgt/images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Xin chào,</span>
              <h2>${customer.firstName}</h2>
            </div>
          </div>
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
              <h3>General</h3>
              <ul class="nav side-menu">
                <li><a href="${pageContext.request.contextPath }/Index"><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                  
                </li>
                <c:if test="${customer.customerID==1 }">
                <li><a href="${pageContext.request.contextPath}/AdminTicket_detail"><i class="fa fa-edit"></i>Hóa đơn Khách hàng<span class="fa fa-chevron-down"></span></a>
                 
                </li>
                <li><a href="${pageContext.request.contextPath}/AdminListUser"><i class="fa fa-desktop"></i>Khách hàng<span class="fa fa-chevron-down"></span></a>
                  
                </li>
                
                
                </c:if>
                <li><a href="${pageContext.request.contextPath}/UserManagement"><i class="fa fa-table"></i>Tài Khoản<span class="fa fa-chevron-down"></span></a>
                  
                </li>
                <li><a href="${pageContext.request.contextPath}/UserTicket_detail?customerID=${customer.customerID}"><i class="fa fa-desktop"></i>Hóa đơn<span class="fa fa-chevron-down"></span></a>
                  
                </li>
                
              </ul>
            </div>
            

          </div>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
              <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
              <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>
      <script src="js/bootstrap.min.js"></script>

	<!-- bootstrap progress js -->
	<script src="resources/rgt/js/progressbar/bootstrap-progressbar.min.js"></script>
	<script src="resources/rgt/js/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- icheck -->
	<script src="resources/rgt/js/icheck/icheck.min.js"></script>

	<script src="resources/rgt/js/custom.js"></script>

	<!-- pace -->
	<script src="resources/rgt/js/pace/pace.min.js"></script>
      
</body>
</html>