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
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
		<section class="section">
			<div class="section-header">
				<h1>사원관리</h1>
			</div>
			
		<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
		<div class="section-body">
				<div class="card">
					<div class="card-header">
					 <a href="workerUpdate.jsp" class="btn btn-icon icon-left btn-primary"><i class="far fa-edit"></i> 수정</a>
					 <a href="workerDelete.do" class="btn btn-icon icon-left btn-danger"><i class="fas fa-times"></i> 삭제</a>
					 <a href="workerInsert.jsp" class="btn btn-icon icon-left btn-success"><i class="fas fa-check"></i> 등록</a>
					</div>
					<div class="card-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">아이디</th>
									<th scope="col">이름</th>
									<th scope="col">생년월일</th>
									<th scope="col">성별</th>
									<th scope="col">직급</th>
									<th scope="col">부서명</th>
									<th scope="col">권한</th>
									<th scope="col">선택</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="vo" items="${list}">
									<tr>
										<td>${vo.worker_id}</td>
										<td>${vo.worker_name}</td>
										<td>${vo.worker_birth}</td>
										<td>${vo.worker_sung}</td>
										<td>${vo.worker_rank}</td>
										<td>${vo.worker_dpname}</td>
										<td>${vo.worker_yn}</td>
										<td><input type="checkbox" name="chb" id="check"></td>
									</tr>
								</c:forEach>

							</tbody>
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