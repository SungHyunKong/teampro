<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ts.model.MemberDAO"%>
<%@ page import="com.ts.model.MemberVO"%>
<%@ page import="java.util.List"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<%String id=(String)session.getAttribute("id"); %>
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
<link rel="stylesheet"
	href="${ctp}/dist/assets/modules/fontawesome/css/all.min.css">

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
				  <c:choose>
				   <c:when test="${empty id }">
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="nav-link dropdown-toggle nav-link-lg nav-link-user"> 
						<img alt="image" src="${ctp}/dist/assets/img/avatar/avatar-1.png"
							class="rounded-circle mr-1">
						<div class="d-sm-none d-lg-inline-block">로그인</div></a>
						
						<div class="dropdown-menu dropdown-menu-right">
							<div class="dropdown-title">로그인하세요</div>
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
								class="fas fa-sign-out-alt"></i> Login
							</a>
						</div></li>
					</c:when>
					<c:otherwise>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="nav-link dropdown-toggle nav-link-lg nav-link-user"> 
						<img alt="image" src="${ctp}/dist/assets/img/avatar/avatar-1.png"
							class="rounded-circle mr-1">
						<div class="d-sm-none d-lg-inline-block">hi<%=id %></div></a>
						
						<div class="dropdown-menu dropdown-menu-right">
							<div class="dropdown-title">로그인하세요</div>
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
					</c:otherwise>
				 </c:choose>
				</ul>
			</nav>
				<!-- General JS Scripts -->
	<script src="${ctp}/dist/assets/modules/jquery.min.js"></script>
	<script src="${ctp}/dist/assets/modules/popper.js"></script>
	<script src="${ctp}/dist/assets/modules/tooltip.js"></script>
	<script src="${ctp}/dist/assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${ctp}/dist/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="${ctp}/dist/assets/modules/moment.min.js"></script>
	<script src="${ctp}/dist/assets/js/stisla.js"></script>

	<!-- JS Libraies -->

	<!-- Page Specific JS File -->

	<!-- Template JS File -->
	<script src="${ctp}/dist/assets/js/scripts.js"></script>
	<script src="${ctp}/dist/assets/js/custom.js"></script>
</body>
</html>