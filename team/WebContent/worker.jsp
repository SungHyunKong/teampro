<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	$(function(){
		if(${param.fail  == 1}){
			alert("등록 실패");
		}
	});
	$(function(){
		$('.worker_class').click(function(){
			if($('.worker_class').is(':checked')){
				alert("체크");
				console.log("체크");
				clickEvent(event);
		}else{
			alert("체크해제");
			console.log("체크헤제");
		}
	})
	}); 
	function clickEvent(event) {
		var id="";
		console.log('target :: ',$(event.target));
		var row=$(event.target).closest('tr');
		var columns=row.find('td');
		console.log('row::',row);
		console.log('columns::',columns);
		var values="";
		$.each(columns,function(idx,item){
			values=values+'td'+(idx+1)+':'+item.innerHTML+'<br/>';
		});
		console.log("id="+$('#worker_id').val());
		console.log("id ----" + id);
		console.log('최종::',values);
		$("#worker_delete").click(function(){
			alert("111");
			location.href = "workerDelete.do?worker_id="+$('#worker_id').val();
		});
		$("#workerUpdate").click(function(){
			alert("111");
			location.href = "workerUpdate.jsp?worker_id="+$('#worker_id').val()+"&worker_name="+$('#worker_name').val()+"&worker_birth="+$('#worker_birth').val()
					+"&worker_sung="+$('#worker_sung').val()+"&worker_rank="+$('#worker_rank').val()+"&worker_dpname="+$('#worker_dpname').val()+"&worker_yn="+$('#worker_yn').val();
		});
	
		


	
	}
	</script>
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
								<a id="workerUpdate" class="btn btn-icon icon-left btn-primary">
								<i class="far fa-edit"></i> 수정</a> 
								<a class="btn btn-icon icon-left btn-danger" id="worker_delete">
									<i class="fas fa-times"></i> 삭제
								</a> 
								<a href="workerInsert.jsp" class="btn btn-icon icon-left btn-success"> <i class="fas fa-check"></i> 등록
								</a>
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
												<td id="worker_td_id">
												<input type="hidden"value="${vo.worker_id}" id="worker_id">${vo.worker_id}
												</td>
												<td id="worker_td_name">
												<input type="hidden"value="${vo.worker_name}" id="worker_name">${vo.worker_name}
												</td>
												<td id="worker_td_birth">
												<input type="hidden"value="${vo.worker_birth}" id="worker_birth">${vo.worker_birth}
												</td>
												<td id="worker_td_sung">
												<input type="hidden"value="${vo.worker_sung}" id="worker_sung">${vo.worker_sung}
												</td>
												<td id="worker_td_rank">
												<input type="hidden"value="${vo.worker_rank}" id="worker_rank">${vo.worker_rank}
												</td>
												<td id="worker_td_dpname">
												<input type="hidden"value="${vo.worker_dpname}" id="worker_dpname">${vo.worker_dpname}
												</td>
												<td id="worker_td_yn">
												<input type="hidden"value="${vo.worker_yn}" id="worker_yn">${vo.worker_yn}
												</td>

												<td><input type="checkbox" name="worker_checkbox"
													class="worker_class" class="checkBox"></td>

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