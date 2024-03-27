<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#page {
	list-style-type: none;
}

#page li {
	display: inline;
	margin-right: 20px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#registerBtn").click(function() {
			window.location.href = "register"
		});

		$("#listTbody tr").hover(function() {
			$(this).css("background-color", "rgb(220, 220, 220)");
		}, function() {
			$(this).css("background-color", "");
		});

		$("#listTbody tr").click(function() {
			var lprNum = $(this).find("td:first").text();
			window.location.href = "get?lprNum=" + lprNum;
		});

		$("#pageMaker").submit();
		
		$("#pageClick a").click(function(e) {
		    e.preventDefault(); 
		    let num = $(this).text();
		    console.log(num);
		    
		    $("#pageNum").find("input[name='pageNum']").val(num);
		    $("#pageNum").submit();
		});

		$("#pagePrev a").click(function(e) {
		    e.preventDefault();
		    let prev = ${page.startPage} - 1;
		    $("#pageNum").find("input[name='pageNum']").val(prev);
		    $("#pageNum").submit();
		});

		$("#pageNext a").click(function(e) {
		    e.preventDefault();
		    let next = ${page.endPage} + 1;
		    $("#pageNum").find("input[name='pageNum']").val(next);
		    $("#pageNum").submit();
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
					<th>작성자번호</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody id="listTbody">
				<c:forEach items="${list}" var="leavePolicy">
					<tr id="listTr">
						<td>${leavePolicy.lprNum }</td>
						<td>${leavePolicy.empNum }</td>
						<td>${leavePolicy.title }</td>
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

	<div>
		<ul id="page">
			<c:if test="${page.prev }">
				<li id="pagePrev"><a href="#">이전페이지</a></li>
			</c:if>

			<c:forEach var="num" begin="${page.startPage }" end="${page.endPage}">
				<li id="pageClick"><a href="#">${num}</a></li>
			</c:forEach>

			<c:if test="${page.next }">
				<li id="pageNext"><a href="#">다음페이지</a></li>
			</c:if>
		</ul>
	</div>


	<div>
		<form id="pageNum" action="list" method="get">
			<input type="hidden" name="pageNum" value="${page.cri.pageNum }">
		</form>
	</div>

</body>
</html>