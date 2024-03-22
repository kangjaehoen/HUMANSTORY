<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
 $(function() {
	$("#registerBtn").click(function() {
		window.location.href="register"
	});
	
	$("#listTbody tr").hover(function() {
		$(this).css("background-color", "rgb(220, 220, 220)");
	  }, function(){
          $(this).css("background-color", ""); 
	});
	
});

</script>
</head>
<body>
	<div>
		<table>
			<thead>
				<tr>
					<th>#번호</th>
					<th>문서번호(뺄예정)</th>
					<th>작성자번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody id="listTbody">
				<c:forEach items="${list}" var="leavePolicy">
					<tr id="listTr">
						<td>${leavePolicy.lpNum }</td>
						<td>${leavePolicy.docNum }</td>
						<td>${leavePolicy.empNum }</td>
						<td>${leavePolicy.title }</td>
						<td>${leavePolicy.detail }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${leavePolicy.registerDate}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div>
		<input id="registerBtn" type="button" value="휴가 정책 등록">
	</div>

</body>
</html>