<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<div class="col-lg-12">
					<h2 class="page-header">Chỉnh sửa dữ liệu quy đổi thời gian</h2>

					<!-- form edit user -->

					<form:form method="POST" modelAttribute="exchangeTime"
						class="form-horizontal">

						<!-- hang 1  -->
						<div class="row">
							<div class="col-sm-4">
								<div class="col-sm-6">
									<div class="form-group  ">
										<label class="control-lable" for="year">Năm</label>
										<form:input type="text" path="year" id="year"
											class="form-control " />
										<div class="has-error">
											<form:errors path="year" class="help-inline" />
										</div>
									</div>
								</div>
							</div>


							<div class="col-sm-4">
								<div class="col-sm-8 col-sm-offset-1">
									<div class="form-group ">
										<label class=" control-lable" for="numberPupilsMin">Sĩ
											số </label>

										<div class="row">
											<div class="col-sm-4">
												<form:input type="text" path="numberPupilsMin"
													id="numberPupilsMin" class="form-control " />
												<div class="has-error">
													<form:errors path="numberPupilsMin" class="help-inline" />
												</div>
											</div>
											<div class="col-sm-1 ">&oline;</div>
											<div class="col-sm-4">

												<form:input type="text" path="numberPupilsMax"
													id="numberPupilsMax" class="form-control " />
												<div class="has-error">
													<form:errors path="numberPupilsMax" class="help-inline" />
												</div>

											</div>
										</div>
									</div>
								</div>

							</div>



							<div class="col-sm-4">

								<div class="col-sm-6 col-sm-offset-1">
									<div class="form-group  ">
										<label class=" control-lable" for="levelEducation">Bậc</label>
										<form:select type="levelEducation" path="levelEducation"
											id="levelEducation" class="form-control ">
											<form:options items="${levelEducation}" />
										</form:select>
										<div class="has-error">
											<form:errors path="levelEducation" class="help-inline" />
										</div>





									</div>
								</div>
							</div>


						</div>

						
						
						<br>
						<hr />

						<div class="row">
							<div class="col-md-offset-1">
								<Button class="btn btn-primary" type="submit">Lưu</Button>
								&nbsp;&nbsp; <a
									href="<c:url value='/admin/ScientificResearchKnowledgeTransfer' />"
									class="btn btn-warning ">Hủy</a>
							</div>
						</div>

					</form:form>


					<hr />
					<br> <br>

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

	<script src="<c:url value="/resources/js/bootstrap-datepicker.js" />"></script>


</body>

</html>