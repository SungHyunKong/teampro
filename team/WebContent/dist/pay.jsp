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
				<h1>전자결제</h1>
			</div>
			
		<div class="section-body">
					 <div class="card">
                  <div class="card-body">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col">결제제목</th>
                          <th scope="col">작성자</th>
                          <th scope="col">작성시간</th>
                        </tr>
                      </thead>
                   <tbody>

								<c:forEach var="vo" items="${list}">
									<tr>
										<th scope="row">1</th>
										<td>${vo.worker_code}</td>

									</tr>
								</c:forEach>

							</tbody>
                    </table>
                  </div>
                </div>
					</div>
					<div class="section-body">
					
					</div>
					
			</section>
	</div>
			<%@include file="footer.jsp"%>
		</div>
	</div>

</body>
</html>