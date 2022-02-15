<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<meta charset="UTF-8">
<title>Register</title>
<!-- General CSS Files -->
<link rel="stylesheet"
	href="/assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->
<link rel="stylesheet"
	href="/assets/modules/jquery-selectric/selectric.css">

<!-- Template CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/components.css">
<!-- Start GA -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-94034622-3');
</script>
<!-- /END GA -->
</head>
<body>
	<form action="./MemberInsert.do" method="post">
		<div id="app">
			<section class="section">
				<div class="container mt-5">
					<div class="row">
						<div
							class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
							<div class="login-brand">
								<img src="assets/img/stisla-fill.svg" alt="logo" width="100"
									class="shadow-light rounded-circle">
							</div>

							<div class="card card-primary">
								<div class="card-header">
									<h4>Register</h4>
								</div>

								<div class="card-body">

									<div class="row">
										<div class="form-group col-6">
											<label for="frist_name">아이디</label> <input id="id"
												type="text" class="form-control" name="id" autofocus>
										</div>

									</div>



									<div class="row">
										<div class="form-group col-6">
											<label for="password" class="d-block">비밀번호</label> <input
												id="password" type="password"
												class="form-control pwstrength" data-indicator="pwindicator"
												name="password">
											<div id="pwindicator" class="pwindicator">
												<div class="bar"></div>
												<div class="label"></div>
											</div>
										</div>
										<div class="form-group col-6">
											<label for="password2" class="d-block">비밀번호 확인</label> <input
												id="password2" type="password" class="form-control"
												name="password-confirm">
										</div>
									</div>

									<div class="row">
										<div class="form-group col-6">
											<label>이름</label> <input id="name" type="text"
												class="form-control" name="name">
											<div class="invalid-feedback"></div>
										</div>
									</div>

									<div class="row">
										<div class="form-group col-4">
											<label>생년</label> <input type="text" class="form-control"
												placeholder="yyyy" name="birthyy">
										</div>
										<div class="form-group col-4">
											<label>월 </label> <select class="form-control selectric"
												name="birthmm">
												<option>1월</option>
												<option>2월</option>
												<option>3월</option>
												<option>4월</option>
												<option>5월</option>
												<option>6월</option>
												<option>7월</option>
												<option>8월</option>
												<option>9월</option>
												<option>10월</option>
												<option>11월</option>
												<option>12월</option>
											</select>
										</div>
										<div class="form-group col-4">
											<label>일</label> <input type="text" class="form-control"
												placeholder="dd" name="birthdd">
										</div>


									</div>

									<div class="row">
										<div class="form-group col-6">
											<label>성별</label> <select name="gender"
												class="form-control selectric">
												<option>남</option>
												<option>여</option>
											</select>

										</div>
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="email">Email</label> <input id="email"
												type="email" class="form-control" name="email">
											<div class="invalid-feedback"></div>
										</div>
									</div>

									<div class="row">
										<div class="form-group col-6">
											<label>휴대전화</label> <input id="tel" type="text"
												class="form-control" name="tel">
											<div class="invalid-feedback"></div>
										</div>
									</div>



									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-lg btn-block">
											가입하기</button>
									</div>

								</div>
							</div>
							<div class="simple-footer">Copyright &copy; Stisla 2018</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</form>
	<!-- General JS Scripts -->
	<script src="assets/modules/jquery.min.js"></script>
	<script src="assets/modules/popper.js"></script>
	<script src="assets/modules/tooltip.js"></script>
	<script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="assets/modules/moment.min.js"></script>
	<script src="assets/js/stisla.js"></script>

	<!-- JS Libraies -->
	<script src="assets/modules/jquery-pwstrength/jquery.pwstrength.min.js"></script>
	<script src="assets/modules/jquery-selectric/jquery.selectric.min.js"></script>

	<!-- Page Specific JS File -->
	<script src="assets/js/page/auth-register.js"></script>

	<!-- Template JS File -->
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/custom.js"></script>
	
</body>
</html>