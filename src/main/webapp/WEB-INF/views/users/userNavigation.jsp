<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Đánh giá năng lực giảng viên</title>

<!-- Font Awesome -->
<link href="<c:url value='/resources/css/font-awesome.css' />"
	rel="stylesheet"></link>

<!-- Bootstrap Core CSS -->
<link href="<c:url value='/resources/css/bootstrap.css' />"
	rel="stylesheet"></link>
<!-- Custom CSS -->
<link href="<c:url value='/resources/css/sb-admin-2.css' />"
	rel="stylesheet"></link>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target=".navbar-collapse">
		<span class="sr-only">Toggle navigation</span> <span
		class="icon-bar"></span> <span class="icon-bar"></span> <span
		class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="<c:url value="/user"/>">Đánh giá
	năng lực giảng viên</a>

</div>
<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-right">
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="<c:url value="/login"/>"> <i
		class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
	</a>
	<ul class="dropdown-menu dropdown-messages">
		<li><a href="#">
			<div>
				<strong>John Smith</strong> <span class="pull-right text-muted">
				<em>Yesterday</em>
			</span>
		</div>
		<div>Lorem ipsum dolor sit amet, consectetur adipiscing
			elit. Pellentesque eleifend...</div>
		</a></li>

		<li class="divider"></li>
		<li><a class="text-center" href="#"> <strong>Read
			All Messages</strong> <i class="fa fa-angle-right"></i>
		</a></li>
	</ul> <!-- /.dropdown-messages --></li>


	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
		<i class="fa fa-caret-down"></i>
	</a>
	<ul class="dropdown-menu dropdown-alerts">
		<li><a href="#">
			<div>
				<i class="fa fa-comment fa-fw"></i> New Comment <span
				class="pull-right text-muted small">4 minutes ago</span>
			</div>
		</a></li>
		<li class="divider"></li>
		<li><a class="text-center" href="#"> <strong>See
			All Alerts</strong> <i class="fa fa-angle-right"></i>
		</a></li>
	</ul> <!-- /.dropdown-alerts --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
		<i class="fa fa-caret-down"></i>
	</a>
	<ul class="dropdown-menu dropdown-user">
		<li><a href="<c:url value="user/info"/>"><i class="fa fa-user fa-fw"></i> User
			Profile</a></li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
			</li>
			<li class="divider"></li>
			<li><a href="<c:url value="/logout"/>"><i
				class="fa fa-sign-out fa-fw"></i> Logout</a></li>
			</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->




		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="<c:url value="/user"/>"><i
						class="glyphicon glyphicon-bell
						"></i>&nbsp;Thông báo</a></li>
						<li><a href="#" /><i class="glyphicon glyphicon-check"></i>&nbsp;Kết
							quả đánh giá</a></li>

							<li><a href="#"><i class="glyphicon glyphicon-envelope"></i>&nbsp;
								Mail </a>
							</ul>
						</div>
						<!-- /.sidebar-collapse -->
					</div>
					<!-- /.navbar-static-side -->
				</nav>



				<!-- jQuery -->
				<script src="<c:url value="/resources/js/jquery.min.js" />"></script>

				<!-- Bootstrap Core JavaScript -->
				<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

				<!-- Metis Menu Plugin JavaScript -->
				<script src="<c:url value="/resources/js/metisMenu.min.js" />"></script>

				<!-- Custom Theme JavaScript -->
				<script src="<c:url value="/resources/js/sb-admin-2.js" />"></script>

			</body>

			</html>