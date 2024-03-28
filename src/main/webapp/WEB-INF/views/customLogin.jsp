<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.js"></script>

<script src="https://cdn.tailwindcss.com"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="flex min-h-full flex-col justify-center px-6 py-12 lg:px-8">
		<div class="sm:mx-auto sm:w-full sm:max-w-sm">
			<img class="mx-auto h-100 w-auto"
				src="./resources/img/hs.logo.png?color=indigo&shade=600"
				alt="Your Company">
			<!--     <h2 class="mt-10 text-center text-1xl font-bold leading-9 tracking-tight text-gray-900">HUMAN STORY 휴가 관리 시스템</h2> -->
		</div>

		<h2>
			<c:out value="${error}" />
		</h2>
		<h2>
			<c:out value="${logout}" />
		</h2>
		<div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
			<form class="space-y-6" method='post' action="/login">
				<!--이건 무조건 정해져 있음  -->




				<div>
					<label for="email"
						class="block text-sm font-medium leading-6 text-gray-900">사원번호</label>
					<div class="mt-2">
						<input type='text' name='username' value='10' autocomplete="email"
							required
							class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">>
					</div>
				</div>
				<div>
					<div class="flex items-center justify-between">
						<label for="password"
							class="block text-sm font-medium leading-6 text-gray-900">비밀번호</label>

					</div>
					<div class="mt-2">
						<input id="password" name="password" type="password" value='pw10'
							autocomplete="current-password" required
							class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
					</div>
				</div>





				<div class="text-sm" style="float: right;">
					<a href="#"
						class="font-semibold text-indigo-600 hover:text-indigo-500">비밀번호
						찾기</a>
				</div>


				<div>
					<!-- <input type='checkbox' name='remember-me'> Remember Me -->
					<label class="inline-flex items-center cursor-pointer"> <input
						id="customCheckLogin" type="checkbox"
						class="form-checkbox border-0 rounded text-blueGray-700 ml-1 w-5 h-5 ease-linear transition-all duration-150"><span
						class="ml-2 text-sm font-semibold text-blueGray-600">로그인 상태
							유지</span></label>
				</div>


				<div>
					<button type="submit"
						class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">로그인</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</body>
</html>