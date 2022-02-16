<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

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
						<h1>회원 수정 페이지</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="container">
						<div class="input-form-backgroud row">
							<div class="input-form col-md-12 mx-auto">
								<h4 class="mb-3">회원수정</h4>
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
											<div class="invalid-feedback">별명을 입력해주세요.</div>
										</div>
									</div>
									<div class="mb-3">
										<label for="email">비밀번호</label> <input type="password"
											class="form-control" id="email" placeholder="you@example.com"
											required>
										<div class="invalid-feedback">이메일을 입력해주세요.</div>
									</div>
									<div class="mb-3">
										<label for="address">주소</label> <input type="text"
											class="form-control" id="address" placeholder="서울특별시 강남구"
											required>
										<div class="invalid-feedback">주소를 입력해주세요.</div>
									</div>
									<div class="mb-3">
										<label for="address2">상세주소<span class="text-muted">&nbsp;(필수
												아님)</span></label> <input type="text" class="form-control" id="address2"
											placeholder="상세주소를 입력해주세요.">
									</div>
									<div class="row">
										<div class="col-md-8 mb-3">
											<label for="root">가입 경로</label> <select
												class="custom-select d-block w-100" id="root">
												<option value=""></option>
												<option>검색</option>
												<option>카페</option>
											</select>
											<div class="invalid-feedback">가입 경로를 선택해주세요.</div>
										</div>
										<div class="col-md-4 mb-3">
											<label for="code">추천인 코드</label> <input type="text"
												class="form-control" id="code" placeholder="" required>
											<div class="invalid-feedback">추천인 코드를 입력해주세요.</div>
										</div>
									</div>
									<hr class="mb-4">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="aggrement" required> <label
											class="custom-control-label" for="aggrement">개인정보 수집
											및 이용에 동의합니다.</label>
									</div>
									<div class="mb-4"></div>
									<button class="btn btn-primary btn-lg btn-block" type="submit">가입
										완료</button>
								</form>
							</div>
						</div>
						<%@include file="footer.jsp"%>

					</div>

				</section>
			</div>
		</div>
	</div>

</body>
</html>