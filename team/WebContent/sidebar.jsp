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
<link rel="stylesheet"
	href="${ctp}/dist/assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->

<!-- Template CSS -->
<link rel="stylesheet" href="${ctp}/dist/assets/css/style.css">
<link rel="stylesheet" href="${ctp}/dist/assets/css/components.css">
<!-- Start GA -->
<script src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<!-- /END GA -->
</head>

<body>
	<div class="main-sidebar sidebar-style-2">
				<aside id="sidebar-wrapper">
					<div class="sidebar-brand">
						<a href="${ctp}/main.jsp">남성호르몬</a>
					</div>
					<div class="sidebar-brand sidebar-brand-sm">
						<a href="${ctp}/main.jsp">TS</a>
					</div>
					<ul class="sidebar-menu">
						<li class=active><a class="nav-link" href="${ctp}/worker.do"><i
								class="far fa-square"></i> <span>사원관리</span></a></li>
					</ul>
					<ul class="sidebar-menu">
						<li class=active><a class="nav-link" href="${ctp}/workertime.do"><i
								class="far fa-square"></i> <span>근태관리</span></a></li>
					</ul>
					<ul class="sidebar-menu">
						<li class=active><a class="nav-link" href="${ctp}/pay.jsp"><i
								class="far fa-square"></i> <span>전자결제</span></a></li>
					</ul>
					<ul class="sidebar-menu">
						<li class=active><a class="nav-link" href="${ctp}/boardList.do"><i
								class="far fa-square"></i> <span>질문게시판</span></a></li>
					</ul>
					<ul class="sidebar-menu">
						<li class=active><a class="nav-link" href="${ctp}/schedule.jsp"><i
								class="far fa-square"></i> <span>일정관리</span></a></li>
					</ul>

				</aside>
			</div>
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