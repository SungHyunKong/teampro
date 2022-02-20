<%@page import="com.ts.model.QaBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	QaBoardDTO dto=(QaBoardDTO)request.getAttribute("dto");
String seid = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board reply JSP</title>
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
				<h1>답글 쓰기</h1>
			</div>
			
		<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
		<div class="section-body">
					 <div class="card">
                  <div class="card-header">
                  </div>
                  <div class="card-body">
                  <form action="boardReply.do" method="post">
			<input type="hidden" name="qa_id" value="<%=seid%>" /> <input
				type="hidden" name="qa_num" value="<%=dto.getQa_num()%>" />
			<input type="hidden" name="qa_re_ref"
				value="<%=dto.getQa_re_ref()%>" /> <input type="hidden"
				name="qa_re_lev" value="<%=dto.getQa_re_lev()%>" /> <input
				type="hidden" name="qa_re_seq"
				value="<%=dto.getQa_re_seq()%>" />
			<table class="table table-striped">
				<tr>
					<th>작성자</th>
					<td><%=seid%></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="qa_subject"
						required="required" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="15" cols="50" name="qa_content"
							required="required"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="답글등록" /> <input type="button" value="취소하기"
						onclick="history.go(-1)" /> <input type="button" value="목록보기"
						onclick="location.href='boardList.do'" /></td>
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