<%@page import="com.ts.model.BoardMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
BoardMemberDTO dto = (BoardMemberDTO) request.getAttribute("dto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member info JSP</title>
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
						<h1>회원관리</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							
							<div class="card-body">
								<table class="table table-striped">
									<tr>
										<th>아이디</th>
										<td><%=dto.getMember_id()%></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<%
											int pwLength = dto.getMember_pw().length();
										String mark = dto.getMember_pw().substring(0, 2);
										for (int i = 0; i < pwLength - 2; i++) {
											mark += "*";
										}
										out.println("<td>" + mark + "</td>");
										%>
									</tr>
									<tr>
										<th>이름</th>
										<td><%=dto.getMember_name()%></td>
									</tr>
									<tr>
										<th>나이</th>
										<td><%=dto.getMember_birth()%></td>
									</tr>
									<tr>
										<th>성별</th>
										<td><%=dto.getMember_gender()%></td>
									</tr>
									<tr>
										<th>이메일</th>
										<%
											if (dto.getMember_email() == null) {
										%>
										<td>이메일이 등록되지 않았습니다.</td>
										<%
											} else {
										%>
										<td><%=dto.getMember_email()%></td>
										<%
											}
										%>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="button"
											value="회원 목록 보기"
											onclick="location.href='memberList.do'" /> <input
											type="button" value="게시판 보기"
											onclick="location.href='boardList.do'" /> <input
											type="button" value="로그아웃"
											onclick="location.href='memberLogout.do'" /></td>
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