<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*,
	*::before,
	*::after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	}
	body{
		background: url('././resources/image/main.png') no-repeat center center fixed; 
        background-size: cover;		
	}
    .mp-text{
        padding-top: 150px;
        color: white;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        font-size: 50px;
        font-weight: bold;
    }
    .mp-text2{
        font-size: 36px;
    }
    .mp-logo{
        width: 200px;
    }
<!--padding-left: 100px;-->

</style>

</head>
<body>
<%@ include file="./header.jsp" %>
 	
    <div class="mp-text">
        <span>아름다운 나눔의 시작</span>
        <span>품앗이</span>
        <br>
        <span class="mp-text2">대한민국 1등 서비스</span>
        <img class="mp-logo" src="././resources/image/logobg.png">
    </div>
    <br><br><br><br><br><br><br><br><br><br><br>
<BR></BR><BR></BR><BR></BR><BR></BR><BR></BR><BR></BR><BR></BR><BR></BR>
<%@ include file="./footer.jsp" %>




</body>
</html>