<%@page import="com.ts.model.QaBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
QaBoardDTO dto = (QaBoardDTO) request.getAttribute("dto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board modify JSP</title>
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
				<h1>글 내용 수정하기</h1>
			</div>
			
		<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
		<div class="section-body">
				<div class="card">
					<div class="card-header">
					</div>
					<div class="card-body">
						<form action="boardModifyController.do" method="post">
	<input type="hidden" name="qa_num" value="<%=dto.getQa_num()%>"/>
		<table class="table table-striped">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="qa_subject" value="<%=dto.getQa_subject() %>" required="required"/>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="15" cols="50" name="qa_content" required="required"><%=dto.getQa_content() %></textarea>
					<!-- textarea 태그 사이에서 들여쓰기를 하면 들여쓰기 만큼의 공백이 내용에 나와버린다. -->
				</td>
			</tr>
			<tr>
				<th>파일 첨부</th>
				<td><input type="file" name="qa file" value="<%=dto.getQa_file() %>" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정하기" />
					<input type="button" value="뒤로가기" onclick="history.back()"/>
					<!-- back은 바로 이전, go(-1)은 안의 인수만큼 이동 -->
					<input type= "button" value="목록보기" onclick="location.href='boardList.do'" />
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