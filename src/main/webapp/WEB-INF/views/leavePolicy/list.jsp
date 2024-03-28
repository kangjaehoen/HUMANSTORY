<%@include file="../includes/sideBar.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.css"  rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>



<style type="text/css">
	
.w-6 h-6 text-gray-800 dark:text-white{
	margin-right: 10px;

}
#sessionBox{
	margin-top: 80px;
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
	padding: 4px 10px;
	text-decoration: none;
	color: #333;
	border: 1px solid #ccc;
	border-radius: 4px;
	transition: background-color 0.3s;
	font-weight: bold;
}

.pagination-link:hover {
	background-color: #c9c9c9;
	color: white;
}

.pagination-link.active {
	background-color: #c9c9c9;
	color: #fff;
	border-color: #c9c9c9;
} 

.navigation {
    margin-left: 430px;
    margin-top: 100px;
   
         
}


.navigation div {
    display: inline;
    padding-bottom: 10px;
    margin-right: 50px;

}

.navigation div a {
    text-decoration: none;
    color: #a5a5a5;
    font-weight: bold;
    display: block; /* a태그는 글자성격 = inline */
    float: left;
    font-size: 16px;
  	font-weight: 900;
  	line-height: 80px;
  	padding: 0 30px;
  	margin-right: 10px;
  	
  	
}

.navigation div a:hover {
    color: #2900c5; 
}

#policyNav{
 	color: #333; 
}

#policyNav:hover{	
	color: #2900c5;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">


	$(function() {
		$("#actionsDropdownButton").click(function() {
			window.location.href = "register"
		});

		$("#listTbody tr").hover(function() {
			$(this).css("background-color", "#f0f0f0");
		}, function() {
			$(this).css("background-color", "");
		});

		$("#listTbody tr").click(function() {
			var lpNum = $(this).find("th").text();
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


	
	<div class="navigation">
			<div><a href="/">메인페이지</a></div>
			<div><a href="/system/annualForm">휴가 일수 부여 설정</a></div>
			<div><a href="/">권한 부여</a></div>
			<div><a href="/leavePromote/list">휴가 촉진</a></div>
			<div><a id="policyNav" href="/leavePolicy/list">휴가 정책</a></div>
	</div>

<div id="sessionBox">
  <section class="bg-gray-100 dark:bg-gray-900 p-3 sm:p-5">
        <div class="mx-auto max-w-screen-xl px-4 lg:px-12">
            <!-- Start coding here -->
            <div class="bg-white dark:bg-gray-800 relative shadow-md sm:rounded-lg overflow-hidden">
                <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0 md:space-x-4 p-4">
                    <div class="w-full md:w-1/2">
                        <form class="flex items-center">
                            <label for="simple-search" class="sr-only">Search</label>
                            <div class="relative w-full">
                                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                    <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewbox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd" />
                                    </svg>
                                </div>
                                <input type="text" id="simple-search" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Search" required="">
                            </div>
                        </form>
                    </div>
                    
                    
                    <div class="w-full md:w-auto flex flex-col md:flex-row space-y-2 md:space-y-0 items-stretch md:items-center justify-end md:space-x-3 flex-shrink-0">
                       
                        
                        
                        <div class="flex items-center space-x-3 w-full md:w-auto">
                            <button id="actionsDropdownButton" class="w-full md:w-auto flex items-center justify-center py-2 px-4 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700" type="button">
                                <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
  <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 8H4m8 3.5v5M9.5 14h5M4 6v13a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1h-5.032a1 1 0 0 1-.768-.36l-1.9-2.28a1 1 0 0 0-.768-.36H5a1 1 0 0 0-1 1Z"/>
</svg>
                                
                                휴가 정책 등록
                            </button>
                            <div id="actionsDropdown" class="hidden z-10 w-44 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600">
                                <ul class="py-1 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="actionsDropdownButton">
                                    <li>
                                        <a href="#" class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Mass Edit</a>
                                    </li>
                                </ul>
                                <div class="py-1">
                                    <a href="#" class="block py-2 px-4 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Delete all</a>
                                </div>
                            </div>
                            <button id="filterDropdownButton" data-dropdown-toggle="filterDropdown" class="w-full md:w-auto flex items-center justify-center py-2 px-4 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700" type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" class="h-4 w-4 mr-2 text-gray-400" viewbox="0 0 20 20" fill="currentColor">
                                    <path fill-rule="evenodd" d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z" clip-rule="evenodd" />
                                </svg>
                                Filter
                                <svg class="-mr-1 ml-1.5 w-5 h-5" fill="currentColor" viewbox="0 0 20 20" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                                    <path clip-rule="evenodd" fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" />
                                </svg>
                            </button>
                            <div id="filterDropdown" class="z-10 hidden w-48 p-3 bg-white rounded-lg shadow dark:bg-gray-700">
                                <h6 class="mb-3 text-sm font-medium text-gray-900 dark:text-white">Choose brand</h6>
                                <ul class="space-y-2 text-sm" aria-labelledby="filterDropdownButton">
                                    <li class="flex items-center">
                                        <input id="apple" type="checkbox" value="" class="w-4 h-4 bg-gray-100 border-gray-300 rounded text-primary-600 focus:ring-primary-500 dark:focus:ring-primary-600 dark:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                        <label for="apple" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-100">Apple (56)</label>
                                    </li>
                                    <li class="flex items-center">
                                        <input id="fitbit" type="checkbox" value="" class="w-4 h-4 bg-gray-100 border-gray-300 rounded text-primary-600 focus:ring-primary-500 dark:focus:ring-primary-600 dark:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                        <label for="fitbit" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-100">Microsoft (16)</label>
                                    </li>
                                    <li class="flex items-center">
                                        <input id="razor" type="checkbox" value="" class="w-4 h-4 bg-gray-100 border-gray-300 rounded text-primary-600 focus:ring-primary-500 dark:focus:ring-primary-600 dark:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                        <label for="razor" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-100">Razor (49)</label>
                                    </li>
                                    <li class="flex items-center">
                                        <input id="nikon" type="checkbox" value="" class="w-4 h-4 bg-gray-100 border-gray-300 rounded text-primary-600 focus:ring-primary-500 dark:focus:ring-primary-600 dark:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                        <label for="nikon" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-100">Nikon (12)</label>
                                    </li>
                                    <li class="flex items-center">
                                        <input id="benq" type="checkbox" value="" class="w-4 h-4 bg-gray-100 border-gray-300 rounded text-primary-600 focus:ring-primary-500 dark:focus:ring-primary-600 dark:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                        <label for="benq" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-100">BenQ (74)</label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="overflow-x-auto" #click="">
                    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" class="px-4 py-3">번호</th>
               
                                <th scope="col" class="px-4 py-3">제목</th>
                                <th scope="col" class="px-4 py-3">작성자번호</th>
                                <th scope="col" class="px-4 py-3">등록일</th>        
                            </tr>
                        </thead>
                        <tbody id="listTbody">
                        <c:forEach items="${list}" var="leavePolicy">
                            <tr class="border-b dark:border-gray-700">
                                <th scope="row" class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">${leavePolicy.lpNum }</th>
                          
                                <td class="px-4 py-3">${leavePolicy.title }</td>
                                <td class="px-4 py-3">${leavePolicy.empNum }</td>
                                <td class="px-4 py-3"><fmt:formatDate pattern="yyyy-MM-dd"
								value="${leavePolicy.registerDate}"/></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                
                <nav class="flex flex-col md:flex-row justify-between items-start md:items-center space-y-3 md:space-y-0 p-4" aria-label="Table navigation">
                    <span class="text-sm font-normal text-gray-500 dark:text-gray-400">
                        Showing
                        <span class="font-semibold text-gray-900 dark:text-white">1-10</span>
                        of
                        <span class="font-semibold text-gray-900 dark:text-white">1000</span>
                    </span>
                    <ul class="inline-flex items-stretch -space-x-px">
                        <li>
                            <c:if test="${page.prev }">
								<li id="pagePrev"><a href="#" class="pagination-link">Previous</a></li>
							</c:if>
                        	<c:forEach var="num" begin="${page.startPage }" end="${page.endPage}">
								<li id="pageClick"><a href="#" class="pagination-link">${num}</a></li>
							</c:forEach>
                        
                        <li>
                            <c:if test="${page.next }">
								<li id="pageNext"><a href="#" class="pagination-link">Next</a></li>
							</c:if>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
       </section>
     </div>	  


	<div>
		<form id="pageNum" action="list" method="get">
			<input type="hidden" name="pageNum" value="${page.cri.pageNum }">
		</form>
	</div>

<%@include file="../includes/footer.jsp"%>