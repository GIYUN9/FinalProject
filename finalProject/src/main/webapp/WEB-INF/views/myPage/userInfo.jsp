<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-bottom: 100px;
		}

		.profile-btn-area{
			justify-content: center;
    		display: flex;
			align-self: center; 
			width: 100%;
		}
		.user-info-table{
			width: 80%;	
			position: relative;
			margin-bottom: 70px;
		}
		.user-info-table td{
			padding-bottom: 0px;
		}
		.user-info-table input{
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 35px;
		}
		.ui-formOuter{
			width: 100%;
		}
		.ui-submit-btn{
			float: right;
			position: absolute;
			right: 70px;
			bottom: 233px;
			width: 460px;
			background: none;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 28px;
		}
		.email-input{
			height: 35px
		}
		.phone-input{
			height: 35px
		}
		.info-input{
			width: 100%;
		}

		.normal-input-box > button {
			width: 80px;
			height: 35px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
		
			<a class="myPageSideBar" href="userInfo.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">나의 정보</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div style="margin-top: 55px; display: flex; flex-direction: column; align-self: flex-start;">
						<img style="width: 100px; height: 100px; margin: 15px; border-radius: 25px;" src="./resources/icon/profileTest.png">

						<form class="profile-btn-area" action="" >
							<button type="submit" class="pr-btn">프로필 변경</button>
						</form>
					</div>
					<div class="ui-formOuter">
						<form action="">
							<table class="user-info-table">
								<th>닉네임</th>
								<tr>
									<td><input class="info-input" placeholder="user01">${loginUser.memberName}</td>
								</tr>
								<th>이메일</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input class="email-input" placeholder="example@poomasi.com">
											<button class="btn">인증하기</button>
										</div>
									</td>
								</tr>
								<th>휴대폰 본인인증</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input class="phone-input" placeholder="01012345678">
											<button class="btn">재인증</button>
										</div>
									</td>
								</tr>
								<th>직업</th>
								<tr>
									<td><input class="info-input" placeholder="example@poomasi.com"></td>
								</tr>
								<th>비즈니스 분야</th>
								<tr>
									<td><input class="info-input" placeholder="example@poomasi.com"></td>
								</tr>
								<th>관심사</th>
								<tr>
									<td><input class="info-input" placeholder="example@poomasi.com"></td>
								</tr>
								<button class="ui-submit-btn" type="submit" class="btn" style="float: right;">수정하기</button>
							</table>

						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>