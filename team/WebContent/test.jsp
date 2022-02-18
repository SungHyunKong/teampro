<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="checkbox" name="brand" value="gucci">구찌
<input type="checkbox" name="brand" value="gana">구찌
<input type="checkbox" name="brand" value="ven">구찌
<input type="button" id="btn_id" value="개비싸">
<script>
	$(document).ready(function(){
		var log ;
		var v ={title:"sa",name:"as"};
		console.log(v);
		$("input:checkbox").on('click', function(){
			var str={brand: $("input[name='brand']:checked").val()};
			log = $.param(str);
			console.log($.param(str));
		});
		
		$('#btn_id').click(function(){
			console.log(log);
		});
	});
	{title}
</script>
</body>
</html>