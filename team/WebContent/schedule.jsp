<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
	<!-- 날짜 포맷 cdn  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js"></script>
	<!-- jquery cdn -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- fullcalendar cdn -->
	<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
	<!-- fullcalendar 언어cdn -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
</head>
<style>
		html, body {
			overflow: hidden;
			font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
			font-size: 14px;
		}
		/* 캘린더 위의 헤더  */
			.fc-header-toolbar {
			padding-top: 1em;
			padding-left: 1em;
			padding-right: 1em;
		}
		
		
	</style>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>일정 관리</h1>
					</div>

				<div id="calendar"></div>

				</section>
			</div>
			<%@include file="footer.jsp"%>
		</div>
	</div>
<script>
	
	(function(){
		$(function(){
		//권한이 관리자일때만 수정 변경가능
		var setting = true;
	
		//calendar element생성
		var calendarE = $('#calendar')[0];
		//full-calendar 생성
		var calendar = new FullCalendar.Calendar(calendarE,{
			height: '700px', // calendar 높이 설정
			expandRows: true, //화면에 맞게 높이설정
			slotMinTime : '08:00', //day 캘린더 시작시간
			slotMaxTime : '20:00', //day 캘린더 종료시간
			//헤더에 표시할 툴바
			headerToolbar:{
				left: 'prev,next today',
				center: 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay,listweek'
			},
			initialView:'dayGridMonth', //초기로드될때 보이는 캘린더 화면 기본:달
			//initialDate:  지정하지않으면 오늘날짜 지정 날짜를 선택하면 Day캘린더나 Week캘린더로 링크
			navLinks: true, //날짜를 선택하면 day 캘린더나 Week 캘린더로 링크
			editalbe: true, // 수정기능
			selectable : true, //달력 드래그 일정추가
			nowIndicator : true, // 현재시간 마크
			dayMaxEvents: true, //이벤트가 많아지면 제한 (+몇개로 표시)
			locale : 'ko', //한국어로 설정
			eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
				console.log(obj);
				},
				eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
				console.log(obj);
				},
				eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
				console.log(obj);
				},
				select:function(arg){
					var title = prompt('입력할 일정:');
					var start = moment(arg.start).format("YYYY-MM-DD");
					var end = moment(arg.end).format("YYYY-MM-DD");
					if(title){
						calendar.addEvent({ 
							title: title,
							start: start,
							end: end
						}),
						$.ajax({
							type:"post",
							url:"./ScheduleInsert.do",
							data:{
								title:title,
								start:start,
								end:end
							},
							dataType:'json',
							success: function(response){
								alert("성공");
							}
						});
					}
					calendar.unselect()
				},
						
						
						
						
			//db select 해오는부부
			eventSources: [{
				events: function(info, successCallback, failureCallback) {
					$.ajax({
						url: './Schedule.do',
						type: 'get',
						dataType: 'json',
						success: function(data) {
							successCallback(data);
						}
					});
				}
			}]	
			
			
			
					
		});
		// 캘린더 랜더링
		calendar.render();
		});
		})();
	${param.name}
	</script>
</body>
</html>