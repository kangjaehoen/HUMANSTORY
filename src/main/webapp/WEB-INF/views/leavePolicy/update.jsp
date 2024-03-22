<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="update" method="Post">
			제목 : <input type="text" name="title" value="${get.title }"><br>
			내용 : <input type="text" name="detail" value="${get.detail }"><br>
			<input type="hidden" name="lpNum" value="${get.lpNum }">
			<input type="submit" value="수정완료">
		</form>
	</div>
</body>
</html>