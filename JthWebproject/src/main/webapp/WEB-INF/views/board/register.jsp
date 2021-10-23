<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	
	$("#btnRegister").on("click", function(){
		
		alert("버튼 클릭");
		$("#formData").submit();
	});
	
});
</script>
</head>
<body>
<form id="formData" method="post" action="/board/register">
게시판 id <input type="text" id="boardId" name="id"/><br/>
게시판 제목 <input type="text" id="boardTitle" name="title"/><br/>
게시판 내용 <input type="text" id="boardContents" name="contents"/><br/>
</form>
<input type="submit" id ="btnRegister" value="등록"/>
</body>
</html>