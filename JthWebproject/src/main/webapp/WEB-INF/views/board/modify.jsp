<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modify</title>
</head>
<body>
<h1>수정 화면</h1>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<form id="" method="post" action="/board/modify">
	<table class="table table-striped">
		<tr>
			<td>id</td>
			<td>제목</td>
			<td>내용</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="id" value="${resultData.id }" redonly/>
			</td>
			<td>
				<input type="text" name="title" value="${resultData.title }"/>
			</td>
			<td>
				<input type="text" name="contents" value="${resultData.contents}"/>
			</td>
		</tr>
	</table>
	<input type="submit" value="수정"/>
</form>
</body>
</html>