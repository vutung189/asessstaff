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
					<h1 class="page-header">Quản lý tài khoản</h1>


					<!-- form edit user -->


					<form:form method="POST" modelAttribute="user"
						class="form-horizontal">

						<form:input type="hidden" path="id" id="id" />

						<div class="row">
							<div class="form-group col-md-6 ">

								<div class="col-md-8 col-md-offset-2">

									<label class=" control-lable" for="username">Tên đăng
										nhập</label> 
										
									<label class=" form-control" for="username">${user.username}</label>
										
									<form:input type="hidden"  path="username"
										id="username"/>

									<div class="has-error">
										<form:errors path="username" class="help-inline" />
									</div>

								</div>
							</div>

							<div class="form-group col-md-6">

								<div class="col-md-8">
									<label class=" control-lable" for="password">Mật khẩu</label>
									<form:input type="password" path="password" id="password"
										class="form-control " />
									<div class="has-error">
										<form:errors path="password" class="help-inline" />
									</div>
								</div>
							</div>

						</div>

						<div class="row">

							<div class="form-group col-md-6">

								<div class="col-md-8 col-md-offset-2">

									<label class=" control-lable" for="fullName"
										accept-charset="UTF-8">Họ và tên</label>
									<form:input type="text" path="fullName" id="fullName"
										class="form-control " />

								</div>
							</div>

							<div class="form-group col-md-6">
								<div class="col-md-8 ">
									<label class=" control-lable" for="birthDate">Ngày sinh</label>

									<div class=" date">
										<div class="input-group input-append date">
											<form:input type="text" path="birthDate" name="birthDate"
												id="birthDate" class="form-control datepicker "
												placeholder="YYYY-MM-DD" />

											<span class="input-group-addon add-on "><span
												class="glyphicon glyphicon-calendar "></span></span>
										</div>
									</div>

								</div>
							</div>

						</div>


						<div class="row">

							<div class="form-group col-md-6">
								<div class="col-md-8 col-md-offset-2">

									<label class=" control-lable" for="gender">Giới tính</label>

									<spring:bind path="gender">
										<div class=" ${status.error ? 'has-error' : ''}">
											<form:select path="gender" class="form-control" id="gender">
												<form:options items="${genders}" />
											</form:select>
										</div>
									</spring:bind>
								</div>

							</div>

							<div class="form-group col-md-6">

								<div class="col-md-8">
									<label class=" control-lable" for="address">Quê Quán</label>
									<form:input type="text" path="address" id="address"
										class="form-control " />
									<div class="has-error">
										<form:errors path="address" class="help-inline" />
									</div>
								</div>
							</div>

						</div>



						<div class="row">

							<div class="form-group col-md-6 ">
								<div class="col-md-8 col-md-offset-2">

									<label class=" control-lable" for="email">Email</label>
									<form:input type="email" path="email" id="email"
										class="form-control" />
									<div class="has-error">
										<form:errors path="email" class="help-inline" />
									</div>
								</div>
							</div>

							<div class="form-group col-md-6 ">
								<div class="col-md-8 ">

									<label class=" control-lable" for="phone">Số điện thoại</label>
									<form:input type="text" path="phone" id="phone"
										class="form-control" />
									<div class="has-error">
										<form:errors path="phone" class="help-inline" />
									</div>
								</div>
							</div>

						</div>


						<div class="row">
							<div class="form-group col-md-6 ">

								<div class="col-md-8 col-md-offset-2">

									<label class=" control-lable" for="academic">Học hàm</label>

									<form:input type="text" path="academic" id="academic"
										class="form-control " />
									<div class="has-error">
										<form:errors path="academic" class="help-inline" />
									</div>

								</div>
							</div>

							<div class="form-group col-md-6">

								<div class="col-md-8">
									<label class=" control-lable" for="degree">Học vị</label>
									<form:input type="text" path="degree" id="degree"
										class="form-control " />
									<div class="has-error">
										<form:errors path="degree" class="help-inline" />
									</div>
								</div>
							</div>

						</div>


						<div class="row">
							<div class="form-group col-md-6 ">

								<div class="col-md-8 col-md-offset-2">

									<label class=" control-lable" for="jobTitle">Chức danh</label>

									<form:input type="text" path="jobTitle" id="jobTitle"
										class="form-control " />
									<div class="has-error">
										<form:errors path="jobTitle" class="help-inline" />
									</div>

								</div>
							</div>

							<div class="form-group col-md-6">

								<div class="col-md-8">
									<label class=" control-lable" for="office">Chức vụ</label>
									<form:input type="text" path="office" id="office"
										class="form-control " />
									<div class="has-error">
										<form:errors path="office" class="help-inline" />
									</div>
								</div>
							</div>

						</div>


						<div class="row">
							<div class="form-group col-md-8 ">

								<div class=" col-md-offset-2">
									<label class=" control-lable" for="faculty">Khoa</label>
									<form:input type="text" path="faculty" id="faculty"
										class="form-control " />
									<div class="has-error">
										<form:errors path="faculty" class="help-inline" />
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-8 ">

								<div class=" col-md-offset-2">
									<label class=" control-lable" for="department">Bộ môn,
										phòng thí nghiệm</label>
									<form:input type="text" path="department" id="department"
										class="form-control " />
									<div class="has-error">
										<form:errors path="department" class="help-inline" />
									</div>
								</div>
							</div>
						</div>

						<div class="row ">
							<div class="form-group col-md-8 ">

								<div class=" col-md-offset-2">
									<label class=" control-lable" for="note">Ghi chú</label>
									<form:textarea type="text" path="note" id="note"
										class="form-control " />
									<div class="has-error">
										<form:errors path="note" class="help-inline" />
									</div>
								</div>
							</div>
						</div>


						<hr />

						<div class="row">
							<div class="col-md-offset-1">
								<Button class="btn btn-primary" type="submit">Lưu</Button>
								&nbsp;&nbsp; <a href="<c:url value='${contextPath}/user' />"
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

	<script>
		$.fn.datepicker.defaults.format = 'yyyy-mm-dd';
		$(function() {
			$("#birthDate").datepicker({
				dateFormat : 'yyyy-mm-dd'
			}); // give your date field an id or a date css class
		});
	</script>


</body>

</html>