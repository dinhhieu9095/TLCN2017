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
	 <div class="container body">


    <div class="main_container">
    <!-- menu-->
    <jsp:include page="Adminmenu.jsp" flush="true" />
    <!-- menu-->
    <!-- header-->
    <jsp:include page="Adminheader.jsp" flush="true" />
    <!-- header-->
  <!-- page content -->
      <div class="right_col" role="main">

        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>Danh sách đơn đặt vé <small></small></h3>
            </div>

            <div class="title_right">
              <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search for...">
                  <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                </div>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>

          <div class="row">
            <div class="col-md-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Projects</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <p>Danh sách đơn đăt vé</p>

                  <!-- start project list -->
                  <table class="table table-striped projects">
                    <thead>
                      <tr>
                        <th>Mã HD</th>
                        <th>Mã KH</th>
                        <th>Mã chuyến bay</th>
                         <th>Số hành khách</th>
                        <th>Giá</th>
                        <th>Tình trạng</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="ticket_details" items="${ticket_details1}">
                      <tr>
                        <td>${ticket_details.ticket_detailID}</td>
                        <td>
                          <a>${ticket_details.customerID}</a>
                         
                        </td>
                        <td>
                          <a>${ticket_details.flightID}</a>
                        </td>
                        <td>
                          <a>${ticket_details.totalclient}</a>
                        </td>
                        <td>
                          <a>${ticket_details.totalprice}</a>
                          
                        </td>
                        <td>
                          <a>${ticket_details.confirm}</a>
                        </td>
                        <td>
                        </td>
                        <td>
                          <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                          <a href="${pageContext.request.contextPath}/DeleteTicket_detail1?ticket_detailID=${ticket_details.ticket_detailID}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                        </td>
                      </tr>
                     </c:forEach>
                    </tbody>
                  </table>
                  <!-- end project list -->

                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- footer content -->
        <footer>
          <div class="copyright-info">
            <p class="pull-right">Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </p>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->

    </div>
    <!-- /page content -->
</div>
</div>
<div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>
  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>

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
