<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
if (id == null) {
	response.sendRedirect("memberLogin.me");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board write jsp</title>
<script type="text/javascript">
	function fnSubmit() {
		if (confirm("작성하신 글을 등록하시겠습니까?")) {
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
				<h1>글쓰기</h1>
			</div>
			
		<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
		<div class="section-body">
				<div class="card">
					<div class="card-header">
					</div>
					<div class="card-body">
						<form action="boardAddAction.bo" method="post"
			enctype="multipart/form-data" onsubmit="return fnSubmit()">
			<!-- enctype : 파일 첨부할때 필요한 속성 -->
			<input type="hidden" name="board_id" value="<%=id%>" />
			<table class="table table-striped">
				<tr>
					<th>작성자</th>
					<td><%=id%></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="board_subject" maxlength="50"
						required="required" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="15" cols="70" name="board_content"></textarea></td>
				</tr>
				<tr>
					<th>파일 첨부</th>
					<td><input type="file" name="board_file" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="글 등록" /> <input type="reset" value="다시 작성" /> <input
						type="button" value="목록 보기" onclick="location.href='boardList.bo'" />
					</td>
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