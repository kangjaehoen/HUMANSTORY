<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* CSS to center the image */
    .center {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 70vh; /* This will center vertically */
        flex-direction: column; /* 세로로 정렬 */
    }

    /* Remove underline from link */
    a {
        text-decoration: none;
    }

    /* Button style */
    .button {
        background-color: #f9f9f9; 
        border: 2px solid #5c626f;
        color: #5c626f;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight : bold;
        margin-top: 20px;
        cursor: pointer;
        border-radius: 30px;
    }
</style>
</head>
<body>
    <div class="center">
        <img src="../resources/img/error.PNG" alt="에러로고">
        <a href="/" class="button">메인 페이지 가기</a>
    </div>
</body>
</html>