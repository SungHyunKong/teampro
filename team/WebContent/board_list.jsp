<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ts.model.BoardMemberDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ts.model.QaBoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ts.model.MemberDAO"%>
<%
	String id = (String) session.getAttribute("id");
BoardMemberDAO dao = new BoardMemberDAO();
String member_pw = dao.getMember_pw(id);
Integer nowPage = (Integer) request.getAttribute("page");
Integer maxPage = (Integer) request.getAttribute("maxPage");
Integer startPage = (Integer) request.getAttribute("startPage");
Integer endPage = (Integer) request.getAttribute("endPage");
Integer listCount = (Integer) request.getAttribute("listCount");
ArrayList<QaBoardDTO> list = new ArrayList<>();
list = (ArrayList<QaBoardDTO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fnModify(id, member_pw) {
		//alert("id : " + id);
		var pw = prompt("비밀번호를 입력하세요", "");
		//alert("member_pw : " + member_pw + "\npw : " + pw);
		//member_pw : dto에 저장되어있던 비밀번호
		//pw : 방금 사용자로부터 입력받은 비밀번호
		if (member_pw == pw) { //맞는 비밀번호를 입력하면 URL이 바뀐다
			//alert("비밀번호 일치합니다.")
			location.href = "memberDetailAction.me?member_id=" + id;
		} else {
			alert("비밀번호가 일치하지 않습니다.");
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
						<h1>질문 게시판</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
								<table class="table table-striped">
									<tr align="center">
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회수</th>
									</tr>
									<%
										for (int i = 0; i < list.size(); i++) {
										QaBoardDTO dto = list.get(i);
									%>
									<tr align="center">
										<td><%=dto.getQa_num()%></td>
										<td><a
											href="boardDetail.do?qa_num=<%=dto.getQa_num()%>"><%=dto.getQa_subject()%></a></td>
										<td><%=dto.getQa_id()%></td>
										<td><%=dto.getQa_date().substring(0, 10)%></td>
										<td><%=dto.getQa_readcount()%></td>

									</tr>
									<%
										}
									%>

									<tr align="center">
										<td colspan="5">
											<%
												if (nowPage <= 1) {
											%> [이전]&nbsp; <%
 	                                        } else {
                                            %> <a href="boardList.do?page=<%=nowPage - 1%>">[이전]</a>&nbsp; <%
 	                                        }
                                            %> <%
 	                                        for (int i = startPage; i <= endPage; i++) {
                                            %> <%
 	                                        if (i == nowPage) {
                                             %> [<%=i%>]&nbsp; <%
 											} else {
 											%> <a href="boardList.do?page=<%=i%>">[<%=i%>]
											</a>&nbsp; <%
 											}
 											%> <%
 											}
											 %> <%
 											if (nowPage >= maxPage) {
											 %> [다음]&nbsp; <%
 											} else {
											 %> <a href="boardList.do?page=<%=nowPage + 1%>">[다음]</a>&nbsp; <%
 											}
 											%>
										</td>
									</tr>

									<tr align="center">
										<td colspan="5">
											<%
												if (id != null && id.equals("admin")) {
											%> <input type="button" value="회원 관리"
											onclick="location.href='memberList.do'" /> <%
 											}
 											%> <input
											type="button" value="글쓰기"
											onclick="location.href='board_write.jsp'" />
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