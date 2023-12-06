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
		.user-info h4{
			margin-bottom: 8px;
			font-weight: normal;
		}
		
		.updatePwd-btn{
			border: solid 1px gray;
			border-radius: 5px;
			background: rgba(224, 224, 224, 0.25);
			color: black;
			height: 28px;
			width: 75px;
			font-weight: bold;
			float: right;
		}
		.updatePwd-btn:hover {
			opacity: 0.5;
			cursor: pointer;
		}
		.main-box{
			margin-left: 235px;
			margin-top: 5px;
			margin-bottom: 350px;
		}
		.user-info{
			padding: 15px;
		}
		.nomal-input-style {
			width: 320px;
			height: 28px;
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
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="">회원 관리</a>
            </c:if>        
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">비밀번호 변경</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<form action="updatePwd.me" method="post" style="margin-top: 19px;">
						<h6>현재 비밀번호</h6>
						<input class="nomal-input-style" name="memberPwd" type="password" placeholder="현재 사용중인 비밀번호를 입력해주세요." required="required">
						<div style="display: flex; margin-top: 24px;">
							<div>
								<h6>변경할 비밀번호</h6>
								<input class="nomal-input-style" name="newPwd" id="newPwd" type="password" placeholder="변경할 비밀번호를 입력해주세요." required="required">
							</div>
							<div style="margin-left: 55px;">
								<h6>한번 더 입력</h6>
								<input class="nomal-input-style" id="confirmPwd" type="password" placeholder="변경할 비밀번호를 한번 더 입력해주세요." required="required">
							</div>
						</div>
						<br>
						<button class="updatePwd-btn" type="submit" disabled>변경하기</button>
					</form>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		// 비밀번호 확인 이벤트 리스너
		document.querySelector('#confirmPwd').addEventListener('input', function() {
			// 변경할 비밀번호와 비밀번호 확인을 비교
			const newPwd = document.querySelector('#newPwd').value;
			const confirmPwd = document.querySelector('#confirmPwd').value;
			
			// 일치하면 변경하기 버튼 활성화
			if (newPwd === confirmPwd) {
				document.querySelector('.updatePwd-btn').removeAttribute("disabled");
			} else {
				document.querySelector('.updatePwd-btn').setAttribute("disabled", "disabled");
			}
		});
	</script>
</body>
</html>