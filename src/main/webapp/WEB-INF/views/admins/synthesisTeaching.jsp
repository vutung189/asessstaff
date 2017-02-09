
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
					<h1 class="page-header">Tổng hợp giờ giảng dạy</h1>

					<div class="row">
						<div class="col-sm-4">
							<a
								href="<c:url value='${contextPath}/SynthesisTeaching/create' />"
								class="btn btn-success">Thêm dữ liệu</a>
						</div>

						<div class="col-sm-2">
							<a href="downloadfile" class="btn btn-success">Download file
								csv</a>
						</div>

						<div class="col-sm-4 col-sm-offset-2">

							<form:form method="POST"
								action="uploadFile?${_csrf.parameterName}=${_csrf.token}"
								enctype="multipart/form-data">
								<span> <input type="file" name="file"
									title="Chọn tệp csv" accept=".csv"
									style="display: inline-block; width: 75px" onchange="pressed()"
									id="uploadFile" /> <label style="max-width: 120px"
									id="fileLabel" name="fileLabel"> Chọn tệp csv</label>
									<button class="btn btn-success" style="display: inline-block"
										type="submit">Tải tệp csv</button>
								</span>
							</form:form>
						</div>
						<hr />

					</div>

					<br>
					<div class="col-sm-4">
						<form:form method="GET" action="search">

							<div class="input-group">
								<input type="text" name="searchString" id="searchString"
									class="form-control" value='${stringSearch}'
									placeholder="Từ khóa ..."> <span
									class="input-group-btn">				
									<input type="hidden" name="pageNumber" id="pageNumber"
									 value=1>
									
									<button class="btn btn-default" type="submit">Tìm kiếm!</button>

								</span>
							</div>
						</form:form>

					</div>
					<br>


					<c:url var="firstUrl" value="/admin/SynthesisTeaching/1" />
					<c:url var="lastUrl"
						value="/admin/SynthesisTeaching/${page.totalPages}" />
					<c:url var="prevUrl"
						value="/admin/SynthesisTeaching/${currentIndex - 1}" />
					<c:url var="nextUrl"
						value="/admin/SynthesisTeaching/${currentIndex + 1}" />



					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Năm-Học kỳ</th>
								<th>Tên học phần</th>
								<th>Sĩ số</th>
								<th>Tên Giảng viên</th>
								<th>Tổng quy chuẩn</th>
								<th width="70"></th>
								<th width="80"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.getContent()}" var="synthesisTeaching">
								<tr>
									<td>${synthesisTeaching.id}</td>
									<td>${synthesisTeaching.year}-${synthesisTeaching.term}</td>
									<td>${synthesisTeaching.nameCredit}</td>
									<td>${synthesisTeaching.numberPupils}</td>
									<td>${synthesisTeaching.lecturer}</td>
									<td>${synthesisTeaching.timeStandard}</td>
									<td><a
										href="<c:url value='${contextPath}/SynthesisTeaching/edit-${synthesisTeaching.id}' />">
											<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;
											Edit

									</a></td>
									<td><a
										href="<c:url value='${contextPath}/SynthesisTeaching/delete-${synthesisTeaching.id}' />">

											<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;
											Delete
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>


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
							<c:url var="pageUrl" value="/admin/SynthesisTeaching/${i}" />
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
							<c:when test="${currentIndex == page.totalPages}">
								<li class="disabled"><a href="#">&gt;</a></li>
								<li class="disabled"><a href="#">&gt;&gt;</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${nextUrl}">&gt;</a></li>
								<li><a href="${lastUrl}">&gt;&gt;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>



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

	<script>
		$.fn.datepicker.defaults.format = 'yyyy-mm-dd';
		$(function() {
			$("#birthDate").datepicker({
				dateFormat : 'yyyy-mm-dd'
			}); // give your date field an id or a date css class
		});
	</script>

	<script>
		window.pressed = function() {
			var a = document.getElementById('uploadFile');
			if (a.value == "") {
				fileLabel.innerHTML = "Chọn tệp CSV";
			} else {
				var theSplit = a.value.split('\\');
				var txt = theSplit[theSplit.length - 1];

				if (txt.length > 14) {
					fileLabel.innerHTML = txt.slice(0, 14) + "..."
				} else {
					fileLabel.innerHTML = theSplit[theSplit.length - 1];
				}
			}
		};
	</script>


</body>

</html>