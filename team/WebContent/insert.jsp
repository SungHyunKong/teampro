<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${ctp}/memberInsert.do">
		<label>사원코드</label> <input type="text" name="worker_code"> 
		<label>아이디</label>	<input type="text" name="worker_id"> 
		<label>사원이름</label> <input	type="text" name="worker_name"> 
		<label>사원생년월일</label> <input type="date" name="worker_birth">
		<label>사원성별</label> <input type="text" name="worker_sung">
		<label>사원직급</label> <input type="text" name="worker_rank">
		<label>부서명</label> <input	type="text" name="worker_dpname"> 
		
		
		<input	type="submit" value="등록">
		<!-- <button id="submit">등록</button> -->
	</form>
</body>
</html>