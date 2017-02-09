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
			<a class="navbar-brand" href="<c:url value="/admin"/>">Đánh giá
				năng lực giảng viên</a>

		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="<c:url value="/login"/>"> <i
					class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#"> <strong>John Smith</strong> <span
							class="pull-right text-muted"> <em>Yesterday</em>
						</span> Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Pellentesque eleifend...
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
					<li><a href="#"> <i class="fa fa-comment fa-fw"></i> New
							Comment <span class="pull-right text-muted small">4
								minutes ago</span>
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
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User
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
					<li><a href="<c:url value="/admin"/>"><i
							class="glyphicon glyphicon-home"></i>&nbsp; Trang chủ</a></li>
					<li><a href="<c:url value="/admin/account/1"/>"><i
							class="fa fa-users fa-fw "></i>&nbsp; Tài khoản </a></li>

					<li><a href="#"><i class="fa fa-files-o fa-fw"></i>&nbsp;
							Quy Chuẩn Đánh giá<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">Định mức công việc</a></li>
							<li><a href="<c:url value="/admin/ExchangeTimeTeaching"/>">Thời gian giảng dạy</a></li>
							<li><a href="<c:url value="/admin/ScientificResearchKnowledgeTransfer" />">Thời gian nghiên cứu</a></li>
							<li><a href="#">Thời gian làm nhiệm vụ khác</a></li>



						</ul> <!-- /.nav-second-level --></li>

					<li><a href="#"><i class="fa fa-files-o fa-fw"></i>&nbsp;
							Dữ liệu đánh giá<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="<c:url value="/admin/SynthesisTeaching/1"/>">Thống
									kê thời gian giảng dạy</a></li>
							<li><a href="#">Thống kê nhiệm vụ nghiên cứu</a></li>
							<li><a href="#">Thống kê nhiệm vụ khác</a></li>

						</ul> <!-- /.nav-second-level --></li>


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
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	
	<!-- Metis Menu Plugin JavaScript -->
	<script src="<c:url value="/resources/js/metisMenu.min.js" />"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<c:url value="/resources/js/sb-admin-2.js" />"></script>

</body>

</html>