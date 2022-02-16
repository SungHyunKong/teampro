<%@page import="com.ts.model.BoardMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
BoardMemberDTO dto = (BoardMemberDTO) request.getAttribute("dto");
String ssid=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member detailForm JSP</title>
<script type="text/javascript">
	function fnSubmit() {
		if (confirm("정말 수정하시겠습니까?")) {
			return true;
		}
		return false;
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
						<h1>회원정보수정</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
							<form action="memberUpdateAction.me" method="post" onsubmit="fnSubmit()">
	                            <input type="hidden" name="member_id" value="<%=ssid%>" />
								<table class="table table-striped">
									<tr>
										<th>아이디</th>
										<td><%=dto.getMember_id()%></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" name="member_pw"
											value="<%=dto.getMember_pw()%>" /></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><input type="text" name="member_name"
											value="<%=dto.getMember_name()%>" /></td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td><input type="text" name="member_birth"
											value="<%=dto.getMember_birth()%>" /></td>
									</tr>
									<tr>
										<th>성별</th>
										<td>
											<%
												if (dto.getMember_gender().equals("남")) {
											%> <input
											type="radio" name="member_gender" value="남" checked="checked" />남자
											<input type="radio" name="member_gender" value="여" />여자 <%
 	} else {
 %>
											<input type="radio" name="member_gender" value="남" />남자 <input
											type="radio" name="member_gender" value="여" checked="checked" />여자
											<%
												}
											%>
										</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>
											<%
												if (dto.getMember_email() == null) {
											%> <input type="text"
											name="member_email" value="" /> <%
 	} else {
 %> <input type="text"
											name="member_email" value="<%=dto.getMember_email()%>" /> <%
 	}
 %>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="submit" value="수정하기" /> <input
											type="reset" value="초기화하기" /> <input type="button"
											value="게시판 보기" onclick="location.href='boardList.bo'" /></td>
									</tr>
								</table>
								</form>
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