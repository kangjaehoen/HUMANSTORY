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
		<a href="delete?lpNum=${get.lpNum }">삭제하기</a>
		
	</div>
</body>
</html>