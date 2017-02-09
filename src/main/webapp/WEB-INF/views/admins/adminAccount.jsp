<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				<div class="col-lg-12">
					<h1 class="page-header">Quản lý tài khoản</h1>


					<div>
						<a href="<c:url value='${contextPath}/account/create' />"
							class="btn btn-success">Thêm tài khoản</a><br />
						<hr />
					</div>


					<c:url var="firstUrl" value="/admin/account/1" />
					<c:url var="lastUrl" value="/admin/account/${userPage.totalPages}" />
					<c:url var="prevUrl" value="/admin/account/${currentIndex - 1}" />
					<c:url var="nextUrl" value="/admin/account/${currentIndex + 1}" />

					<ul class="pagination">
						<c:choose>
							<c:when test="${currentIndex == 1}">
								<li class="disabled"><a href="#">&lt;&lt;</a></li>
								<li class="disabled"><a href="#">&lt;</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${firstUrl}">&lt;&lt;</a></li>
								<li><a href="${prevUrl}">&lt;</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
							<c:url var="pageUrl" value="/admin/account/${i}" />
							<c:choose>
								<c:when test="${i == currentIndex}">
									<li class="active"><a href="${pageUrl}"><c:out
												value="${i}" /></a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${currentIndex == userPage.totalPages}">
								<li class="disabled"><a href="#">&gt;</a></li>
								<li class="disabled"><a href="#">&gt;&gt;</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${nextUrl}">&gt;</a></li>
								<li><a href="${lastUrl}">&gt;&gt;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>


					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Tên đăng nhập</th>
								<th>Họ và tên</th>
								<th>Ngày sinh</th>
								<th>Email</th>

								<th width="70"></th>
								<th width="80"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userPage.getContent()}" var="user">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.fullName}</td>
									<td><fmt:formatDate value="${user.birthDate }"
											pattern="yyyy-MM-dd" /></td>
									<td>${user.email}</td>
									<td><a
										href="<c:url value='${contextPath}/account/edit-user-${user.id}' />">

											<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;
											Edit

									</a></td>
									<td><c:if
											test="${user.roles.iterator().next().name !='ROLE_ADMIN'}">
											<a
												href="<c:url value='${contextPath}/account/delete-user-${user.id}' />">

												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;
												Delete
											</a>
										</c:if></td>
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