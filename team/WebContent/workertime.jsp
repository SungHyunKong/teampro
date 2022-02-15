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
				<h1>근태관리</h1>
			</div>
			
		<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
		<div class="section-body">
					 <div class="card">
                  <div class="card-header">
                  <div>
                  <!--날짜 보여주는 달력 추가 -->
                  <input type = "date" id="dae-picker"> 
                  </div>
                  </div>
                  <div class="card-body">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col">사원코드</th>
                          <th scope="col">출근시간</th>
                          <th scope="col">퇴근시간</th>
                          <th scope="col">날짜</th>
                          <th scope="col">직급</th>
                        </tr>
                      </thead>
                   <tbody>

								<c:forEach var="vo" items="${list}">
									<tr>
										<td>${vo.worker_code}</td>
										<td>${vo.worker_stime}</td>
										<td>${vo.worker_etime}</td>
										<td>${vo.worker_date}</td>
										<td>${vo.worker_rank}</td>
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