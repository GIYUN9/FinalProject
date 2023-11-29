<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 55px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 280px;">
		
			<a class="myPageSideBar" href="userInfo.me" style="font-weight: bolder; font-size: 1.1em;">나의 정보</a>
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
					<div style="margin-top: 0px">
						<img style="width: 90px; height: 90px; margin: 15px; border-radius: 25px;" src="./resources/icon/profileTest.png">
						<br><br>
						<button class="btn" style="margin-left: 19px">프로필 변경</button>
					</div>
					<div>
						<form action="">
							<table class="user-info-table">
								<th>닉네임</th>
								<tr>
									<td><input placeholder="user01"></td>
								</tr>
								<th>이메일</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input placeholder="example@poomasi.com">
											<button class="btn">인증하기</button>
										</div>
									</td>
								</tr>
								<th>휴대폰 본인인증</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input placeholder="01012345678">
											<button class="btn">재인증</button>
										</div>
									</td>
								</tr>
								<th>직업</th>
								<tr>
									<td><input placeholder="example@poomasi.com"></td>
								</tr>
								<th>비즈니스 분야</th>
								<tr>
									<td><input placeholder="example@poomasi.com"></td>
								</tr>
								<th>관심사</th>
								<tr>
									<td><input placeholder="example@poomasi.com"></td>
								</tr>
							</table>
							<button type="submit" class="btn" style="float: right;">수정하기</button>
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>