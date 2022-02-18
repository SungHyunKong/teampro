<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원수정 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>
.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
	
}
select option[value=""][disabled] {
	display: none;
}
.mb-7{
	width: fit-content;
	margin: auto;
}

</style>
<script>

</script>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>회원 수정 페이지</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="container">
						<div class="input-form-backgroud row">
							<div class="input-form col-md-12 mx-auto">
								<h4 class="mb-3">회원수정</h4>
								<form class="validation-form" action="workerUpdate.do" novalidate>
									<div class="row">
										<div class="col-md-6 mb-3">
											<label for="name">아이디</label>
											<input type="text"class="form-control" id="worker_input_id" name="worker_id" placeholder="${param.worker_id}" disabled>
										</div>
										<div class="col-md-6 mb-3">
											<label for="nickname">이름</label> <input type="text"
												class="form-control" id="worker_input_name" name="worker_name" value="${param.worker_name}" required>
										</div>
									</div>
										<div class="mb-3">
										<label for="address">생년월일</label> 
										<input type="text" class="form-control" id="worker_input_birth" name="worker_birth" value="${param.worker_birth}" required>
										<div class="invalid-feedback">이메일을 입력하세요.</div>
									</div>
									<div class="row">
										<div class="col-md-2 mb-3">
											<label for="root">성별</label> <select
												class="custom-select d-block w-100" id="worker_input_sung" name="worker_sung">
												<option value="">
												${param.worker_sung}
												</option>
												<option>남자</option>
												<option>여자</option>
											</select>
										</div>
										<div class="col-md-2 mb-3">
											<label for="root">직급</label> <select
												class="custom-select d-block w-100" id="worker_input_rank" name="worker_rank">
												<option value="">	${param.worker_rank}</option>
												<option>부사장</option>
												<option>전무</option>
												<option>상무</option>
												<option>이사</option>
												<option>본부장</option>
												<option>실장</option>
												<option>팀장</option>
												<option>부장</option>
												<option>차장</option>
												<option>과장</option>
												<option>대리</option>
												<option>주임</option>
												<option>사원</option>
												<option>인턴</option>
											</select>
										</div>
									</div>
									<div class="mb-3">
										<label for="address2">부서명<span class="text-muted">
										</span>
										</label> 
										<input type="text" class="form-control" id="worker_input_dpname" name="worker_dpname" value="${param.worker_dpname}">
									</div>
									<div class="col-md-2 mb-3">
											<label for="root">권한</label> <select
												class="custom-select d-block w-100" id="worker_input_yn" name="worker_yn">
												<option value="${param.worker_yn}"></option>
												<option>y</option>
												<option>n</option>
											</select>
										</div>
									<hr class="mb-4">
									<div class="mb-7">
									<input type="submit"  value="변경" onclick="" class="btn btn-success"/>
									</div>
								</form>
							</div>
						</div>
					</div>
					<%@include file="footer.jsp"%>
			</div>
		</div>
	</div>

</body>
</html>