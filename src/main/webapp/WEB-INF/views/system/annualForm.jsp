<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 
    input[type="date"] {
        appearance: none; 
        border: 1px solid #ccc;
        border-radius: 5px; 
        padding: 8px; 
        font-size: 16px;
        outline: none; 
    }

 
    input[type="date"]:focus {
        border-color: #007bff; 
    }
</style>

</head>
<body>

<div>

	<div>
		<h2> admin 휴가일수 부여 페이지</h2>
	</div>
	
	<div>	
		<form action="leaveGrant" method="post">
			<input id="dateInput" type="date" name="leaveDay" value=""/> 
			<input type="submit" value="연차 부여일자 설정">
		</form>
	</div>

	
	
	<div>
		<form action="annualNumSetting" method="post">
			<input id="textInput" type="text" name="annualNum" value="15"/><br>
			<input type="submit" value="연차일수 설정">
		</form>
	</div>
	
	
	
	<div>	
		<form action="annualLeave" method="post">
			<input type="submit" value="관리자 수정 등록">
		</form>
	</div>
</div>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#dateInput").change(function() {
		let value = $(this).val();
		console.log(value);
	})
	
	$("#dataInput").click(function(){
		
		
	})
});

</script>

</html>