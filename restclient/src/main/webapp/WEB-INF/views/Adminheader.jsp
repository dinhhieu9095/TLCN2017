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

	<div class="top_nav">

		<div class="nav_menu">
			<nav class="" role="navigation">
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="javascript:;"
						class="user-profile dropdown-toggle" data-toggle="dropdown"
						aria-expanded="false"> <img src="resources/rgt/images/img.jpg" alt="">${customer.firstName}<span class=" fa fa-angle-down"></span>
					</a>
						<ul
							class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
							<li><a href="javascript:;"> Profile</a></li>
							<li><a href="javascript:;"> <span
									class="badge bg-red pull-right">50%</span> <span>Settings</span>
							</a></li>
							<li><a href="javascript:;">Help</a></li>
							<li><a href="login.html"><i
									class="fa fa-sign-out pull-right"></i> Log Out</a></li>
						</ul></li>

				</ul>
			</nav>
		</div>

	</div>
	<!-- /top navigation -->

	<script src="resources/rgt/js/bootstrap.min.js"></script>

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
