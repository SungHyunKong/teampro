<%@page import="com.ts.model.QaBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String) (session.getAttribute("id"));
QaBoardDTO dto = (QaBoardDTO) request.getAttribute("dto");
String board_content = dto.getQa_content();
String replaceContent = board_content.replaceAll("\r\n", "<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board view jsp</title>
<script type="text/javascript">
function fnReply(num) {
	if(confirm("답글을 작성하시겠습니까?")) {
		location.href = "boardReplyView.do?qa_num=" + num;
	}
	return false;
}

function fnUpdate(num) {
	if(confirm("수정하시겠습니까?")) {
		location.href = "boardModifyView.do?qa_num=" + num;
	}
	return false;
}
function fnDelete(num) {
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href = "boardDeleteController.do?qa_num=" + num;
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
				<h1>상세 글 보기</h1>
			</div>
			
		<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
		<div class="section-body">
				<div class="card">
					<div class="card-header">
					</div>
					<div class="card-body">
						<table class="table table-striped">
		<tr>
			<th>제목</th>
			<td><%=dto.getQa_subject() %></td>		
		</tr>
		<tr>
			<th>조회수</th>
			<td><%=dto.getQa_readcount() %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3" width="500"><%=board_content %></td>
		</tr>
		<tr>
			<th>첨부 파일</th>
			<td colspan="3" >
				<%if(dto.getQa_file() == null) { %>
					첨부된 파일이 없습니다.
				<%} else { %>
					<a href="boardUpload/<%=dto.getQa_file()%>"><%=dto.getQa_file() %></a>
				<%} %>
			</td>
		</tr>
		<tr align="center">
			<td colspan="4">
			    <input type="button" value="답글쓰기" onclick="fnReply('<%=dto.getQa_num() %>')"/>
                <input type="button" value="수정하기" onclick="fnUpdate('<%=dto.getQa_num() %>')" />
				<input type="button" value="삭제하기" onclick="fnDelete('<%=dto.getQa_num() %>')" />
				<input type="button" value="목록보기" onclick="location.href='boardList.do'"/>
			</td>
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