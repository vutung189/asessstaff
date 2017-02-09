<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Đăng nhập</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">

</head>

<body class="hold-transition login-page">

	<div class="login-box ">

		<div class="login-logo">
			<b>Đại học Công nghệ</b>
		</div>

		<div class="login-box-body">
			<p class="login-box-msg">Hệ thống đánh giá giảng viên</p>

			<form method="POST" action="${contextPath}/login">

				<div class="form-group has-feedback }">
					<input name="username" type="text" class="form-control"
						placeholder="Tên Truy cập" autofocus="true" /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>

				</div>

				<div class="form-group has-feedback">
					<input name="password" type="password" class="form-control"
						placeholder="Mật khẩu" /> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<span class="text-error">${error}</span>

				<div class="row">
					<div class="col-xs-8"></div>
					<div class="col-xs-4">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button class="btn btn-primary btn-block btn-flat" type="submit">Đăng
							nhập</button>
					</div>
				</div>
				<a href="#">Quên mật khẩu?</a><br>
		</div>
		</form>

		<!-- /container -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
