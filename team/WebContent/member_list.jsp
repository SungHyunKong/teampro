<%@page import="com.ts.model.BoardMemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	ArrayList<BoardMemberDTO> list = (ArrayList<BoardMemberDTO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_list JSP</title>
<script type="text/javascript">
	function fnDelete(member_id) {
		if (confirm("정말 삭제하시겠습니까?")) {
			location.href = 'memberDelete.do?member_id=' + member_id;
		}
	}
</script>
</head>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>전체 회원 목록</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							
							<div class="card-body">
								<table class="table table-striped">
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>삭제</th>
									</tr>

									<core:forEach var="i" items="${list }">
										<tr>
											<td><a
												href="memberView.do?member_id=${i.member_id }">${i.member_id }</a></td>
											<td>${i.member_name }</td>
											<td align="left"><core:if
													test="${i.member_id eq 'admin' }">삭제 금지</core:if> <core:if
													test="${i.member_id ne 'admin' }">
													<input type="button" value="삭제"
														onclick="fnDelete('${i.member_id }')" />
												</core:if></td>
										</tr>
									</core:forEach>

									<tr>
										<td colspan="3"><input type="button" value="로그아웃"
											onclick="location.href='memberLogout.do'" /> <input
											type="button" value="게시판으로 이동"
											onclick="location.href='boardList.do'" /></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</section>
			</div>
			<%@include file="footer.jsp"%>
		</div>
	</div>

</body>
</html>