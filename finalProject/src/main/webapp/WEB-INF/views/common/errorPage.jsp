<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.er-area{
		display: flex;
		flex-direction: column;
		align-items: center;
		background: white;
		border-radius: 8px;
		margin-top: 100px;
		margin-bottom: 300px;
		max-width: 700px;
		height: 500px;
	}
	.er-msg{
		font-weight: bold;
		color: black;
		width: 700px;
		padding: 30px;
	}
	.er-align{
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.er-btn{
		border: none;
		padding: 10px;
		width: 400px;
		border-radius: 4px;
		color: #fff;
        background-color: rgb(0, 199, 174);
		margin-top: 15px;
		cursor: pointer;
		font-weight: 600;
	}
	.er-desc{
		padding: 10px;
	}
</style>
</head>
<body>
	<jsp:include page = "header.jsp" />
	
	<br>

	<div align= "center">
		<h1 style="margin-top: 150px;
    font-weight: bold;
    color: red;
    margin-bottom: 500px;">${errorMsg }</h1>

	<div class="er-align">
		<div class="er-area" align= "center">
			<h1 class="er-msg">${errorMsg }</h1>
			<div class="er-desc">
				에러 메세지 ~~ 에러가 발생한 상황을 문의해주세요~
				max-width: 400px;max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;max-width: 400px;
				max-width: 400px;
				max-width: 400px;max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;
				max-width: 400px;

			</div>
			<button style="margin-top: 55px;" class="er-btn">메인으로</button>
			<button class="er-btn">문의하기</button>

		</div>

	</div>
	<br>
	
	<jsp:include page = "footer.jsp" />
</body>
</html>