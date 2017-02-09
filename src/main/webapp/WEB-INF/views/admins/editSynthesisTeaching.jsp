
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

		<body>
			<div id="wrapper">
				<!-- Navigation -->
				<%@ include file="adminNavigation.jsp"%>

				<div id="page-wrapper">
					<div class="row">
						<div class="col-sm-12">
							<h1 class="page-header">Chi tiết giờ giảng dạy</h1>

							<!-- form edit  -->

							<form:form method="POST" modelAttribute="synthesisTeaching"
								class="form-horizontal">

								<div class="row ">

									<div class=" col-sm-1  ">

										<label class=" control-lable" for="year">Năm</label>

										<form:input type="text" path="year" id="year"
											class="form-control " />

									</div>
									<div class="col-sm-1 ">

										<label class=" control-lable" for="term">Học kỳ</label>

										<form:input type="text" path="term" id="term"
											class="form-control " />

									</div>

									<div class=" col-sm-2 ">

										<label class=" control-lable" for="classCredit">Lớp học
											phần</label>

										<form:input type="text" path="classCredit" id="classCredit"
											class="form-control " />

									</div>
									<div class=" col-sm-1 ">

										<label class=" control-lable" for="numberCredits">Tín
											chỉ</label>

										<form:input type="text" path="numberCredits" id="numberCredits"
											class="form-control " />

									</div>
									<div class=" col-sm-1 ">

										<label class=" control-lable" for="numberPupils">Sĩ số</label>

										<form:input type="text" path="numberPupils" id="numberPupils"
											class="form-control " />

									</div>
									<div class=" col-sm-4 ">

										<label class=" control-lable" for="nameCredit">Tên học
											phần</label>

										<form:input type="text" path="nameCredit" id="nameCredit"
											class="form-control " />

									</div>

								</div>
								<hr>
								<div class="row">
									<div class=" col-sm-6 ">

										<label class=" control-lable" for="lecturer">Giảng viên</label>

										<form:input type="text" path="lecturer" id="lecturer"
											class="form-control " />

									</div>
									<div class="col-sm-3  ">

										<label class=" control-lable" for="note">Đơn vị</label><br>

										<form:input type="text" path="unit"
											id="unit" class="form-control " />

									</div>
								</div>

								<hr >
								<b>Giờ lý thuyết</b>
								<br>
								<br>
								<div class="row ">

									<div class="  col-sm-3  ">

										<label class=" control-lable" for="theoryNumberGroup">Số
											nhóm</label>

										<form:input type="text" path="theoryNumberGroup"
											id="theoryNumberGroup" class="form-control " />

									</div>
									<div class=" col-sm-3 col-sm-offset-1">

										<label class=" control-lable" for="theoryNumberPupilts">Sĩ
											số</label>

										<form:input type="text" path="theoryNumberPupilts"
											id="theoryNumberPupilts" class="form-control " />

									</div>

									<div class=" col-sm-3 col-sm-offset-1 ">

										<label class=" control-lable" for="theoryTimeGroup">Số
											giờ/nhóm</label>

										<form:input type="text" path="theoryTimeGroup"
											id="theoryTimeGroup" class="form-control " />

									</div>

								</div>
								<br>
								<div class="row ">
									<div class="  col-sm-3  ">

										<label class=" control-lable" for="theoryTimeIn">Số giờ
											trong giờ hành chính</label>

										<form:input type="text" path="theoryTimeIn" id="theoryTimeIn"
											class="form-control " />

									</div>
									<div class=" col-sm-3 col-sm-offset-1">

										<label class=" control-lable" for="theoryTimeOut">Số giờ
											ngoài giờ hành chính</label>

										<form:input type="text" path="theoryTimeOut" id="theoryTimeOut"
											class="form-control " />

									</div>

									<div class=" col-sm-3 col-sm-offset-1 ">

										<label class=" control-lable" for="theoryTime7">Số giờ
											thứ 7</label>

										<form:input type="text" path="theoryTime7" id="theoryTime7"
											class="form-control " />

									</div>

								</div>

								<hr>
								<b>Giờ thực hành</b>
								<br>
								<br>
								<div class="row ">

									<div class="  col-sm-3  ">

										<label class=" control-lable" for="practiceNumberGroup">Số
											nhóm</label>

										<form:input type="text" path="practiceNumberGroup"
											id="practiceNumberGroup" class="form-control " />

									</div>
									<div class=" col-sm-3 ">

										<label class=" control-lable" for="practiceNumberLecturer">Số
											cán bộ/nhóm</label>

										<form:input type="text" path="practiceNumberLecturer"
											id="practiceNumberLecturer" class="form-control " />

									</div>

									<div class=" col-sm-3  ">

										<label class=" control-lable" for="practiceNumberPupilts">Sĩ
											số/nhóm</label>

										<form:input type="text" path="practiceNumberPupilts"
											id="practiceNumberPupilts" class="form-control " />

									</div>
									<div class="  col-sm-3  ">

										<label class=" control-lable" for="practiceTimeGroup">Số
											giờ/nhóm</label>

										<form:input type="text" path="practiceTimeGroup"
											id="practiceTimeGroup" class="form-control " />

									</div>

								</div>
								<br>
								<div class="row ">


									<div class="  col-sm-3  ">

										<label class=" control-lable" for="practiceTimeIn">Số
											giờ trong giờ hành chính</label>

										<form:input type="text" path="practiceTimeIn"
											id="practiceTimeIn" class="form-control " />

									</div>
									<div class=" col-sm-3 ">

										<label class=" control-lable" for="practiceTimeOut">Số
											giờ ngoài giờ hành chính</label>

										<form:input type="text" path="practiceTimeOut"
											id="practiceTimeOut" class="form-control " />

									</div>

									<div class=" col-sm-3  ">

										<label class=" control-lable" for="practiceTime7">Số giờ
											thứ 7</label>

										<form:input type="text" path="practiceTime7" id="practiceTime7"
											class="form-control " />

									</div>

								</div>

								<hr>
								<div class="row ">

									<div class="col-sm-3  ">

										<label class=" control-lable" for="selftStudy">Số giờ tự học</label><br>

										<form:input type="text" path="selftStudy"
											id="selftStudy" class="form-control " />

									</div>
								</div>
								
								<hr>
								<div class="row ">

									<div class="col-sm-3  ">

										<label class=" control-lable" for="timeStandard">Tổng giờ quy chuẩn</label><br>

										<form:input type="text" path="timeStandard"
											id="timeStandard" class="form-control " />

									</div>

									<div class="col-sm-3  ">

										<label class=" control-lable" for="note">Ghi chú</label><br>

										<form:input type="text" path="note"
											id="note" class="form-control " />

									</div>
								</div>

								<hr>
								<br>

								<div class="row">
									<div class="col-sm-offset-1">
										<Button class="btn btn-primary " type="submit">Lưu</Button>
										&nbsp;&nbsp; <a
											href="<c:url value='${contextPath}/admin/SynthesisTeaching/1' />"
											class="btn btn-warning ">Hủy</a>
									</div>
								</div>

							</form:form>


							<hr>
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
		</body>

		</html>