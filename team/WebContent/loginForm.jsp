<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%-- <%@include file="header.jsp"%>--%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>로그인</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
								<form action="memberLogin.do" method="post">
									<table class="table table-striped">
										<tr>
											<th>아이디</th>
											<td><input type="text" name="member_id" /></td>
										</tr>
										<tr>
											<th>비밀번호</th>
											<td><input type="password" name="member_pw" /></td>
										</tr>
										<tr>
											<td colspan="2" align="center"><input type="submit"
												value="로그인" /> <input type="button" value="회원가입"
												onclick="location.href='joinForm.jsp'" /></td>
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