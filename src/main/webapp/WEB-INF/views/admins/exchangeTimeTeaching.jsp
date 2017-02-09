
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Đánh giá năng lực giảng viên</title>


</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<%@ include file="adminNavigation.jsp"%>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="page-header">Quy đổi số lượng gờ chuẩn, giờ làm
						việc theo nhiệm vụ giảng dạy</h2>

					<div class="row">
						<div class="col-sm-4">
							<a
								href="<c:url value='${contextPath}/SynthesisTeaching/create' />"
								class="btn btn-success">Thêm dữ liệu</a>
						</div>

					</div>
					<hr />


					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Năm</th>
								<th>Sĩ số</th>
								<th width="150">Giảng dạy </th>
								<th>Hệ</th>
								<th>Ngôn ngữ</th>
								<th>Chương trình</th>
								<th>Giờ chuẩn</th>

								<th width="70"></th>
								<th width="80"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${exchangeTimeTeaching}" var="exchangeTime">
								<tr>
									<td>${exchangeTime.id}</td>
									<td>${exchangeTime.year}</td>
									<td>${exchangeTime.numberPupilsMin} - ${exchangeTime.numberPupilsMax}</td>
									<td>${exchangeTime.type}</td>
									<td>${exchangeTime.levelEducation}</td>									
									<td>${exchangeTime.language}</td>
									<td>${exchangeTime.program}</td>
									<td>${exchangeTime.timeStandard}</td>
									
									<td><a href="<c:url value='/admin/ExchangeTimeTeaching/edit-${exchangeTime.id}'/>"> <span
											class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;
											Edit

									</a></td>
									<td><a href="<c:url value= '/admin/ExchangeTimeTeaching/delete-${exchangeTime.id}'/>"> <span
											class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;
											Delete
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>



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