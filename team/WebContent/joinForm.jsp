<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function fn_submit() {
	var f=document.join;
	
	if(f.chk.value=="0"){
		alert("아이디 중복체크를 해주세요");
		return false;
	}
	if(f.member_pw.value!=f.member_pw2.value){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	} 
}

function fn_idcheck() {
	var member_id=document.join.member_id.value;
	
	if(member_id==""){
		alert("아이디를 입력해주세요");
		document.join.member_id.focus;
		return false;
	}
	if(member_id.length<4||member_id.length>12){
		alert("아이디는 4자 ~ 12자 사이로 해주세요");
		return false;
	}
	var url="memberidcheck.do?member_id="+member_id
	
			window.open(url,"중복아이디체크","width=100, height=20");
}

</script>
</head>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%--<%@include file="header.jsp"%> --%>
			<%--<%@include file="sidebar.jsp"%> --%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>회원가입</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
							
							<form name="join" action="memberJoinController.do" method="post">
							<input type="hidden" name="chk" value="0">
								<table class="table table-striped">
									<tr>
										<th>아이디</th>
										<td><input type="text" name="member_id"
											required="required" placeholder="4~12자 사이"/><button type="button" onclick="fn_idcheck()">중복체크</button></td>
									    
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" name="member_pw"
										required="required" 	/></td>
									</tr>
									<tr>
										<th>비밀번호 확인</th>
										<td><input type="password" name="member_pw2"
										required="required" 	/></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><input type="text" name="member_name"
											required="required"  /></td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td><input type="text" name="member_birth"
											required="required" placeholder="yyyymmdd" /></td>
									</tr>
									<tr>
										<th>성별</th>
										<td><input type="radio" name="member_gender" value="남"
											checked="checked" />남자 <input type="radio"
											name="member_gender" value="여" />여자</td>
									</tr>
									<tr>
										<th>이메일 주소</th>
										<td><input type="text" name="member_email" maxlength="30" /></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="submit"
											value="회원가입"  onclick="fn_submit()"/> <input type="reset" value="다시 작성" /> <input
											type="button" value="로그인"
											onclick="location.href='loginForm.jsp'" /></td>
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