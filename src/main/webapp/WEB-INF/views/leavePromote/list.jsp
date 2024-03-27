<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴가 촉진</title>

<style type="text/css">
#divBox {
	display: inline-block;
	padding: 5px;
	width: 1400px;
	height: 570px;
	margin-top: 2px;
	margin-left: 300px;
	border-radius: 10px;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	color: #333;
	font-weight: bold;
}

th, td {
	border: 1px solid #c9c9c9;
	padding: 10px;
	text-align: center;
	font-color: gray;
}

th {
	background-color: #131541;
	color: #fffbfb;
	font-size:17px;
	font-weight: bold;
	
}

tr:nth-child(even) {
	background-color: #f5f5f9;
}

td {
	font-size: 15px;
	padding: 14px;
}

#bno {
	width: 80px;
	text-align: center; /* 번호를 가운데 정렬합니다. */
}

#writer {
	width: 100px;
}

#title {
	width: 590px;
}

#registerDate {
	width: 200px;
}

thead {
	background-color: rgb(247, 247, 247);
	border-bottom: 1px solid;
	height: 50px;
}

.listTr {
	height: 50px;
}

#registerBtn {
	display: inline;
	width: 130px;
	height: 40px;
	border: none;
	border: 1.5px solid #131541;
	font-weight:bold;
	border-radius: 6px;
	background-color: #f5f5f9;
	font-size: 16px;
	margin-left: 1570px;
	margin-top: 20px;
	color: black;
}

#page li {
	display: inline;
	margin-right: 30px;
}

#pagingBox {
	margin-left: 700px;
	margin-top: 35px;
}

.pagination-link {
	list-style-type: none;
	display: inline;
	padding: 8px 14px;
	text-decoration: none;
	color: #333;
	border: 1px solid #ccc;
	border-radius: 4px;
	transition: background-color 0.3s;
	font-weight: bold;
}

.pagination-link:hover {
	background-color: #2900c5;
	color: white;
}

.pagination-link.active {
	background-color: #2900c5;
	color: #fff;
	border-color: #2900c5;
}

.navigation {
    margin-left: 280px;
    margin-top: 100px;
    
       
}
.navigation ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.navigation ul li {
    display: inline;
    padding-bottom: 10px;
    margin-right: 15px;

}

.navigation ul li a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    display: block; /* a태그는 글자성격 = inline */
    float: left;
    font-size: 27.5px;
  	font-weight: 900;
  	line-height: 80px;
  	padding: 0 30px;
  	margin-right: 30px;
  	
}

.navigation ul li a:hover {
    color: #2900c5; 
}

#promoteNav{
 	color: #a5a5a5; 
}

#promoteNav:hover{
	color: #2900c5;
}

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
			$(this).css("background-color", "#f0f0f0");
		}, function() {
			$(this).css("background-color", "");
		});

		$("#listTbody tr").click(function() {
			var lpNum = $(this).find("td:first").text();
			window.location.href = "get?lpNum=" + lpNum;
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
			let prev = ${page.startPage}-1;
			$("#pageNum").find("input[name='pageNum']").val(prev);
			$("#pageNum").submit();
		});

		$("#pageNext a").click(function(e) {
			e.preventDefault();
			let next = ${page.endPage}+1;
			$("#pageNum").find("input[name='pageNum']").val(next);
			$("#pageNum").submit();
		});
	});
</script>
</head>
<body>

<div class="navigation">
		<ul>
			<li><a href="/">메인페이지</a></li>
			<li><a href="/system/annualForm">휴가 일수 부여 설정</a></li>
			<li><a href="/">권한 부여</a></li>
			<li><a id="promoteNav" href="/leavePromote/list">휴가 촉진</a></li>
			<li><a href="/leavePolicy/list">휴가 정책</a></li>
		</ul>
	</div>



	<div>
		<input id="registerBtn" type="button" value="휴가 촉진 등록">
	</div>

	<div id="divBox">
		<table>
			<thead>
				<tr id="theadTr">
					<th id="bno">번호</th>
					<th id="title">제목</th>
					<th id="writer">작성자번호</th>
					<th id="registerDate">등록일</th>
				</tr>
			</thead>
			<tbody id="listTbody">
				<c:forEach items="${list}" var="leavePromote">
					<tr id="listTr">
						<td>${leavePromote.lprNum }</td>
						<td>${leavePromote.title }</td>
						<td>${leavePromote.empNum }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${leavePromote.registerDate}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<div id="pagingBox">
		<ul id="page">
			<c:if test="${page.prev }">
				<li id="pagePrev"><a href="#" class="pagination-link">Previous</a></li>
			</c:if>

			<c:forEach var="num" begin="${page.startPage }" end="${page.endPage}">
				<li id="pageClick"><a href="#" class="pagination-link">${num}</a></li>
			</c:forEach>

			<c:if test="${page.next }">
				<li id="pageNext"><a href="#" class="pagination-link">Next</a></li>
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