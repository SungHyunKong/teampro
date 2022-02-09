<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="com.ts.model.MemberDAO"%>
<%@ page import="com.ts.model.MemberVO"%>
<%@ page import="java.util.List"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>사원관리</title>

<!-- General CSS Files -->
<link rel="stylesheet"
	href="${ctp}/dist/assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctp}/dist/assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->

<!-- Template CSS -->
<link rel="stylesheet" href="${ctp}/dist/assets/css/style.css">
<link rel="stylesheet" href="${ctp}/dist/assets/css/components.css">
<!-- Start GA -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<!-- /END GA -->
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<nav class="navbar navbar-expand-lg main-navbar">
				<form class="form-inline mr-auto">
					<ul class="navbar-nav mr-3">
						<li><a href="#" data-toggle="sidebar"
							class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
					</ul>
					<div class="search-element">
						<div class="search-backdrop"></div>
					</div>
				</form>
				<ul class="navbar-nav navbar-right">
					<li class="dropdown dropdown-list-toggle"><a href="#"
						data-toggle="dropdown"
						class="nav-link nav-link-lg message-toggle beep"><i
							class="far fa-envelope"></i></a>
						<div class="dropdown-menu dropdown-list dropdown-menu-right">
							<div class="dropdown-header">
								Message
								<div class="float-right">
									<a href="#">Mark All As Read</a>
								</div>
							</div>

							<div class="dropdown-list-content dropdown-list-message"></div>
							<div class="dropdown-footer text-center">
								<a href="#">View All <i class="fas fa-chevron-right"></i></a>
							</div>
						</div></li>
					<li class="dropdown dropdown-list-toggle"><a href="#"
						data-toggle="dropdown"
						class="nav-link notification-toggle nav-link-lg beep"><i
							class="far fa-bell"></i></a>
						<div class="dropdown-menu dropdown-list dropdown-menu-right">
							<div class="dropdown-header">
								Notifications
								<div class="float-right">
									<a href="#">Mark All As Read</a>
								</div>
							</div>
							<div class="dropdown-list-content dropdown-list-icons"></div>
							<div class="dropdown-footer text-center">
								<a href="#">View All <i class="fas fa-chevron-right"></i></a>
							</div>
						</div></li>
						
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="nav-link dropdown-toggle nav-link-lg nav-link-user"> 
						<img alt="image" src="${ctp}/dist/assets/img/avatar/avatar-1.png"
							class="rounded-circle mr-1">
						<div class="d-sm-none d-lg-inline-block">Hi, 광진</div></a>
						
						<div class="dropdown-menu dropdown-menu-right">
							<div class="dropdown-title">Logged in 5 min ago</div>
							<a href="${ctp}/dist/features-profile.html" class="dropdown-item has-icon">
								<i class="far fa-user"></i> Profile
							</a> <a href="${ctp}/dist/features-activities.html"
								class="dropdown-item has-icon"> <i class="fas fa-bolt"></i>
								Activities
							</a> <a href="${ctp}/dist/features-settings.html" class="dropdown-item has-icon">
								<i class="fas fa-cog"></i> Settings
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item has-icon text-danger"> <i
								class="fas fa-sign-out-alt"></i> Logout
							</a>
						</div></li>
				</ul>
			</nav>
			<div class="main-sidebar sidebar-style-2">
				<aside id="sidebar-wrapper">
					<div class="sidebar-brand">
						<a href="${ctp}/dist/index.html">남성호르몬</a>
					</div>
					<div class="sidebar-brand sidebar-brand-sm">
						<a href="${ctp}/dist/index.html">TS</a>
					</div>
					<ul class="sidebar-menu">
						<li class=active><a class="nav-link" href="${ctp}/dist/blank.html"><i
								class="far fa-square"></i> <span>사원관리</span></a></li>
					</ul>

				</aside>
			</div>

			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>사원관리</h1>
					</div>

					<div class="section-body">
						<div class="card">
							<div class="card-header">
								<a href="insert.jsp">등록</a>
							</div>
							<div class="card-body">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">사원코드</th>
											<th scope="col">아이디</th>
											<th scope="col">이름</th>
											<th scope="col">생년월일</th>
											<th scope="col">gender</th>
											<th scope="col">직급</th>
											<th scope="col">부서명</th>
											<th scope="col">권한</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="vo" items="${list}">
											<tr>
												<th scope="row">1</th>
												<td>${vo.worker_code}</td>
												<td>${vo.worker_id}</td>
												<td>${vo.worker_name}</td>
												<td>${vo.worker_birth}</td>
												<td>${vo.worker_sung}</td>
												<td>${vo.worker_rank}</td>
												<td>${vo.worker_dpname}</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</section>
			</div>
			<footer class="main-footer">
				<div class="footer-left">2022 &copy; 4조 남성호르몬 테스토스테론</div>
				<div class="footer-right"></div>
			</footer>
		</div>
	</div>

	<!-- General JS Scripts -->
	<script src="${ctp}/dist/assets/modules/jquery.min.js"></script>
	<script src="${ctp}/dist/assets/modules/popper.js"></script>
	<script src="${ctp}/dist/assets/modules/tooltip.js"></script>
	<script src="${ctp}/dist/assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="${ctp}/dist/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="${ctp}/dist/assets/modules/moment.min.js"></script>
	<script src="${ctp}/dist/assets/js/stisla.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tooltip.js/1.3.3/tooltip.min.js.map"></script>

	<!-- JS Libraies -->

	<!-- Page Specific JS File -->

	<!-- Template JS File -->
	<script src="${ctp}/dist/assets/js/scripts.js"></script>
	<script src="${ctp}/dist/assets/js/custom.js"></script>
</body>
</html>