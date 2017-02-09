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

<title>Đánh giá năng lực nhân viên</title>

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

	<div id="wrapper">

		<!-- Navigation -->
		<%@ include file="userNavigation.jsp"%>

		
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Trang chủ</h1>
		 			<p>${message}</p>

			
				</div>
			</div>


		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

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