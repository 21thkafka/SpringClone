<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>detail</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	
	$("#btnModify").on("click", function(){
		
		location.href="/board/modify?id=" + ${resultData.id};
		
	});
	
	$("#btnDelete").on("click", function(){
		
		$("#formDelete").submit();
		
	});
	
});
//빨간, 파란 버튼 테스트
function fn_excelDownload(){
	var frm = document.goDepInfoFrm;
	frm.action = "<c:url value='/board/selectButton.do'/>";
	frm.submit();
	
}

</script>
</head>
<body>
<h1>게시판 상세</h1>
<table class="table table-striped">
	<tr>
		<td>id</td>
		<td>제목</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>${resultData.id }</td>
		<td>${resultData.title }</td>
		<td>${resultData.contents}</td>
	</tr>
</table>
<button id="btnModify">수정</button>
<button id="btnDelete">삭제</button>
<a href="javascript:fn_excelDownload();" name="red_btn">빨간 버튼</a>
<form id="formDelete" method="post" action="/board/delete">
	<input type="hidden" name="id" value="${resultData.id }" />
</form>
</body>
</html>