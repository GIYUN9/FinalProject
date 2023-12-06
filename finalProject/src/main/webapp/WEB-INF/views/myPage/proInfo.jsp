<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="">회원 관리</a>
            </c:if>        
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">전문가 정보</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div style="margin-top: 55px; display: flex; flex-direction: column; align-self: flex-start;">
						<img style="width: 130px; height: 130px; margin: 15px; border-radius: 25px;" src="./resources/icon/profileTest.png">
						<br><br>
						<form action="" style="align-self: center; width: 100%">
							<button type="submit" class="btn" style="width: 100%;">프로필 변경</button>
						</form>
					</div>
					<div>
						<form action="updateProInfo.me">
							<table class="user-info-table">
								<th>전문가 이름</th>
								<tr>
									<td><input value="${loginUser.memberName}" name="memberName" readonly="readonly"></td>
								</tr>
								<th>자기소개</th>
								<tr>
									<td style="padding-bottom: 3px;">
										<textarea style="resize: none; width: 98%; height: 50px;" name="intro">${loginUser.intro}</textarea>
									</td>
								</tr>
								<th>지역</th>
								<tr>
									<td><input value="${loginUser.location}" readonly="readonly"></td>
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
							<button type="submit">수정하기</button>
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>