<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div id="calendar"></div>
	
	<script>
	$.ajax({
		type: "post",
		url: "./Schedule.do",
		dataType: 'json',
		success: function(data){
			alert("성공");
			console.log(data);
		},
		error : function(request,status,error){
			console.log();
			alert(request.status+"#"+request.message+"#"+error);
		}
	});

		
	</script>
</body>
</html>