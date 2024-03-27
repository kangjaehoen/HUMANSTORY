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
	<form action="annualLeave" method="post">
		<input id="dateInput" type="date" name="leaveDay" value=""/> 
		<input id="textInput" type="text" name="annualNum" value="15"/><br>
		<input type="submit" value="휴가설정등록">
	</form>
	
	
	<form action="leaveGrant" method="post">
		<input id="dateInput" type="date" name="leaveDay" value=""/> 
		<input type="submit" value="휴가날 설정">
	</form>
</body>
</html>