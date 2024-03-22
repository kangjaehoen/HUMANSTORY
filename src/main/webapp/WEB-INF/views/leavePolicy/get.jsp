<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<b>제목 : ${get.title }</b>
	</div>
	<div>
		<b>등록일 : ${get.registerDate }</b>
	</div>
	<br>
	<div>
		<b>내용: ${get.detail }</b>
	</div>

	<div>
		<a href="update?lpNum=${get.lpNum }">수정하기</a>
	</div>
	<form action="delete" method="post">
		<input type="hidden" name="lpNum" value="${get.lpNum }">
		<input type="submit" value="삭제">
	</form>
</body>
</html>