<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page = "header.jsp" />
	
	<br>
	<div align= "center">
		<h1 style="margin-top: 150px;
    font-weight: bold;
    color: red;
    margin-bottom: 500px;">${errorMsg }</h1>
	</div>
	<br>
	
	<jsp:include page = "footer.jsp" />
</body>
</html>