<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원등록 페이지</title>

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
</style>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>회원 등록 페이지</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="container">
						<div class="input-form-backgroud row">
							<div class="input-form col-md-12 mx-auto">
								<h4 class="mb-3">회원등록</h4>
								<form class="validation-form" novalidate>
									<div class="row">
										<div class="col-md-6 mb-3">
											<label for="name">이름</label> <input type="text"
												class="form-control" id="name" placeholder="Name" value=""
												required>
											<div class="invalid-feedback">이름을 입력해주세요.</div>
										</div>
										<div class="col-md-6 mb-3">
											<label for="nickname">아이디</label> <input type="text"
												class="form-control" id="nickname" placeholder="ID" value=""
												required>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-3">
											<label for="email">비밀번호</label> <input type="password"
												class="form-control" id="password" placeholder="" required>
										</div>
										<div class="col-md-6 mb-3">
											<label for="email">비밀번호 확인</label> <input type="password"
												class="form-control" id="passwordCheck" placeholder=""
												required>
										</div>
									</div>
									<div class="mb-3">
										<label for="address">e-mail</label> <input type="email"
											class="form-control" id="email" placeholder="e-mail" required>
										<div class="invalid-feedback">이메일을 입력하세요.</div>
									</div>
									<div class="row">
										<div class="col-md-2 mb-3">
											<label for="root">성별</label> <select
												class="custom-select d-block w-100" id="gender">
												<option value=""></option>
												<option>남자</option>
												<option>여자</option>
											</select>
										</div>
										<div class="col-md-2 mb-3">
											<label for="root">직급</label> <select
												class="custom-select d-block w-100" id="rank">
												<option value=""></option>
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
										</span></label> <input type="text" class="form-control" id="dpname"
											placeholder="">
									</div>
									<hr class="mb-4">
									<div class="mb-4"></div>
									<button class="btn btn-primary btn-lg btn-block" type="button" onclick="location.href='insert.do'">등록
										완료</button>
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