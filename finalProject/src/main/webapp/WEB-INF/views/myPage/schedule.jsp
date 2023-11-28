<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.reason-box{
			display: flex;
	  		flex-direction: column;
		}
		
		.emailInput{
			width: 280px;
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
		
		label {
			cursor: pointer;
		}
		
		.retire {
			float: right;
			width: 100px;
			height: 28px;
			background-color: rgb(218, 76, 60);
			color: white;
			border: none;
			border-radius: 3px;
			margin-bottom: 5px;
			cursor: pointer;
		}
		
		.retire:hover {
			background-color: rgb(218, 76, 60, 0.27);
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 55px;">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 280px;">
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="#">전문가 정보</a>
			<a class="myPageSideBar" href="#">비밀번호 변경</a>
			<a class="myPageSideBar" href="#">회원 탈퇴</a>
			<a class="myPageSideBar" href="#" style="font-weight: bolder; font-size: 1.1em;">일정 관리</a>
			<a class="myPageSideBar" href="#">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">일정 관리</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
				<!-- 받은 요청 / 보낸요청 -->
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>