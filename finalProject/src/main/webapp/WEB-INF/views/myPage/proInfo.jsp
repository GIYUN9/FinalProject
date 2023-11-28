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
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me" style="font-weight: bolder; font-size: 1.1em;">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="#">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">전문가 정보</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div style="margin-top: 0px">
						<img style="width: 90px; height: 90px; margin: 15px; border-radius: 25px;" src="./resources/icon/profileTest.png">
						<br><br>
						<button class="btn" style="margin-left: 19px">프로필 변경</button>
					</div>
					<div>
						<table class="user-info-table">
							<th>전문가 닉네임</th>
							<tr>
								<td><input placeholder="고수임"></td>
							</tr>
							<th>자기소개</th>
							<tr>
								<td style="padding-bottom: 3px;">
									<textarea style="resize: none; width: 98%; height: 50px;"></textarea>
								</td>
							</tr>
							<th>지역</th>
							<tr>
								<td><input placeholder="카카오 지도 api들어갈자리"></td>
							</tr>
							<th>전문분야 및 상세분야 <br><span style="font-size: x-small;">최대 3개를 선택해주세요.</span><span style="font-size: x-small; color: red;">필수</span></th>
							<tr>
								<td><input placeholder="자격증정보 api? / 데이터베이스 직접?"></td>
							</tr>
							<th>보유기술 <br><span style="font-size: x-small;">최대 20개를 선택해주세요.</span><span style="font-size: x-small; color: red;">필수</span></th>
							<tr>
							<!-- 보유기술 고르는 창 드롭다운? ajax써야하나? -->
								<td><input placeholder="기술검색 드롭다운?" style="height: 80px;"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>