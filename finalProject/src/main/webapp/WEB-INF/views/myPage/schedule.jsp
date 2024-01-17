<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-top: 5px;
			padding: 15px;
		}
		.reason-box {
			display: flex;
			flex-direction: column;
		}

		.emailInput {
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

		.p-btn {
			display: inline-block;
			margin: 0 auto;
			padding: 10px 11px;
			font-size: 14px;
			background: rgba(255, 255, 255, 0.22);
			border-radius: 8px;
			cursor: pointer;
			letter-spacing: -2px;
			font-weight: bolder;
		}
		.p-btn1 {
			display: inline-block;
			margin: 0 auto;
			padding: 10px 11px;
			font-size: 14px;
			background: rgba(255, 255, 255, 0);
			border-radius: 8px;
			cursor: pointer;
			letter-spacing: -2px;
			font-weight: bolder;
		}
		p::after{
			display:block;
			content: '';
			border-bottom: solid 2px #ffffff;  
			transform: scaleX(0);  
			transition: transform 250ms ease-in-out;
		}
		p:hover::after{
			transform: scaleX(1);
		}

		.textarea-maxSize {
			border-radius: 12px;
			width: 290px;
			height: 75px;
			resize: none;
			overflow: auto;
			text-overflow: ellipsis;

			&::-webkit-scrollbar {
				display: none;
			}
		}
		
		.scrolleffect{
			&::-webkit-scrollbar {
				display: none;
			}
		}

		.schedule-btn {
			margin: 5px;
			background: rgb(0, 199, 174);
			border: none;
			width: 100px;
			height: 30px;
			border-radius: 4px;
			color: white;
			cursor: pointer;
			font-weight: bold;
			font-size: 13px;
		}

		.schedule-btn:hover {
			scale: 1.03;
		}

		.alarm-section {
			border: 1px solid rgba(96, 96, 96, 0.5);
			padding: 10px;
			width: 100%;
			height: 135px;
			border-radius: 10px;
			display: flex;
			align-items: center;
			margin-top: 7px;
			margin-bottom: 10px;
			font-size: 14px;
		}
		
		.modal {
	        position: absolute;
	        top: 0;
	        left: 0;
	
	        width: 100%;
	        height: 100%;
	
	        display: none;
	
	        background-color: rgba(0, 0, 0, 0.4);
		}
		
		.modal.show {
		  display: none;
		}
		
		.modal_body {
		  position: absolute;
		  top: 50%;
		  left: 50%;
		
		  width: 750px;
		  height: 600px;
		
		  padding-bottom: 40px;
		
		  text-align: center;
		
		  background-color: rgb(255, 255, 255);
		  border-radius: 10px;
		  box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
		
		  transform: translateX(-50%) translateY(-50%);
		}
		
		#x-btnImg:hover{
			cursor: pointer;
			opacity: 0.5;
		}
		.user-nickname{
			margin-bottom: 7px;
			font-weight: 600;
		}
		.modal-textarea{
			width: 100%;;
			text-align: left;
			padding: 5px;
			border: 1px solid rgba(96, 96, 96, 0.5);
			resize: none;
			border-radius: 8px;
		}
		.desc-align{
			display: flex;
			flex-direction: row;
			position: relative;
		}
		.modal-category{
			position: absolute;
    		right: -355px;
		}
		.empty-title{
			font-size: 35px;
			text-align: center;
			font-weight: bold;
			margin-top: 45px;
		}
		.empty-text{
			text-align: center;
			font-weight: bold;
		}
		.empty-align{
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}
		.empty-btn{
			border: none;
			color: white;
			font-weight: white;
			background-color: rgb(0, 199, 174);
			width: 300px;
			height: 35px;
			border-radius: 4px;
			padding: 5px;
			margin-top: 20px;
			cursor: pointer;
		}
	</style>
</head>

<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px;">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">

			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">요청 관리</a>
			<a class="myPageSideBar" href="ask3.me">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me">회원 관리</a>
                <a class="myPageSideBar" href="reportList.rp">신고 내역</a>                
            </c:if>        
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">일정 관리</h3>
			<br>
			<div class="top-center"
				style="display: flex; justify-content: space-around; margin-left: 20px; margin-right: 20px">
				<!-- 호버되면 밑줄 만들어주세요 ㅋㅋ -->
				<div>
					<p class="p-btn" id="from" onclick="from()">받은 요청</p>
				</div>
				<div>
					<p class="p-btn1" id="send" onclick="send()">보낸 요청</p>
				</div>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div id="view1" class="user-info"
					style="flex-direction: column; margin-left: 5px; margin-right: 5px; display: '';">
					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h6 style="float: left; font-weight: bold;">요청 현황 (<span style="color: red;">${fn:length(sList)}</span>건)</h6>
					</div>
					<div style="width: 98%; overflow: scroll; height: 414px;" class="scrolleffect">
						<c:if test="${empty sList}">
							<div class="empty-align">
								<p class="empty-title">받은 요청이 없습니다.</p>
								<p class="empty-text">전문가 프로필 등록하러 가기</p>
								<button class="empty-btn" onclick="location.href='proInfo.me'">전문가 등록</button>
								<button class="empty-btn" onclick="location.href='helpuForm.bo'">도와줄게요 등록</button>
							</div>
						</c:if>
                       	<c:forEach var="s" items="${sList}">			
							<div class="alarm-section">
								<div style="width: 14%;">
									이미지 자리
								</div>
								<div style="width: 31%;">
									<h5 class="user-nickname">${s.memberName}</h5>
									<p>희망지역 : ${s.location}</p>
									<p>카테고리 : ${s.categoryName}</p>
								</div>
								<div style="width: 40%;">
									<p class="textarea-maxSize">
										${s.scheContent}
									</p>
								</div>
								<div style="width: 15%; display: flex; flex-direction: column;">
									<button class="schedule-btn" style="background-color: rgb(0, 199, 174)" id="btn-open-schedule-modal" onclick="tmp(${s.scheNo})">상세보기</button>
									<button class="schedule-btn" style="background-color: rgb(218, 76, 60)" onclick="refuse()">거절</button>
								</div>
							</div>
						</c:forEach> 
					</div>

				</div>
				<div id="view2" class="user-info"
					style="flex-direction: column; margin-left: 5px; margin-right: 5px; display: none;">
					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h6 style="float: left; font-weight: bold;">보낸요청 (<span style="color: red;">${fn:length(sList2)}</span>건)</h6>
					</div>
					<div style="width: 98%;">
					<c:if test="${empty sList2}">
						<div class="empty-align">
							<p class="empty-title">보낸 요청이 없습니다.</p>
							<p class="empty-text">전문가에게 요청 보내러 가기</p>
							<button class="empty-btn" onclick="helpU()">도와줄게요 게시판</button>
							<br><br><br><br>
						</div>
					</c:if>
						<c:forEach var="s2" items="${sList2}">
							<div class="alarm-section">
								<div style="width: 14%;">
									이미지 자리
								</div>
								<div style="width: 31%;">
									<h5 class="user-nickname">${s2.memberName}</h5>
									<p>희망지역 : ${s2.location}</p>
									<p>카테고리 : ${s2.categoryName}</p>
								</div>
								<div style="width: 40%;">
									<p class="textarea-maxSize">
										${s2.scheContent}
									</p>
								</div>
								<div style="width: 15%; display: flex; flex-direction: column;">
									<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">확인 중</button>
									<form action="requestCancel.bo" method="post">
										<input type="hidden" name="scheNo" value="${s2.scheNo}">
										<button type="submit" class="schedule-btn" style="background-color: rgba(224, 224, 224, 0.5); color: black; border: 1px solid rgba(224, 224, 224, 0.5);">요청 취소</button>
									</form>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />

	<c:forEach var="s" items="${sList}">
		<div class="modal" id="scheduleModal${s.scheNo}">
			<div class="modal_body" style="padding-top: 10px;">
				<img onclick="tmp2(${s.scheNo})" id="x-btnImg" src="././resources/icon/close.png" alt="" style="width: 14px; height: 14px; float: right; margin-right: 10px;">
				<div style="margin-top: 10px;">
					요청 상세보기
				</div>
				<form action="" style="margin-top: 10px;">
					<div class="alarm-section" style="display: flex; flex-direction: column; align-items: baseline; height: auto; width: 95%; margin: 19px; padding: 12px;">
						<div class="desc-align"> 
							<div style="flex-direction: row; justify-content: space-between; display: flex; flex-direction: row;">
								<div>
									<img style="width: 100px; height: 100px; margin: 15px; border-radius: 25px;" src="./resources/icon/profileTest.png">
								</div>
							</div>
							<div style="float: left; display: flex; flex-direction: column; margin-bottom: 10px; justify-content: space-evenly;">
								<div>
									<h6 style="float: left; margin-bottom: 5px; font-weight: bold;">
										${s.memberName} 님
									</h6>
								</div>
								<div>
									<p style="margin-bottom: 0px;">희망지역 : ${s.location}</p>
									<p style="margin-bottom: 0px; text-align: left;">${s.phone}</p>
								</div>
							</div>
							<div class="modal-category">${s.categoryName}</div>
						</div>
						<div style="float: left; flex-direction: column; margin-top: 10px; display: flex;">
							<h6 style="text-align: left; font-weight: bold; margin-left: 5px;">세부 사항</h6>
							<div style="display: flex; float: left; flex-direction: column; margin-top: 5px; margin-left: 5px; text-align: left;">
								<p style="float: left; margin-bottom: 0px;">의뢰비 - 합의 후 결정</p>
								<p style="float: left; margin-bottom: 0px;">시간대 - 토요일 3시 이후 or 일요일</p>
								<p style="float: left; margin-bottom: 0px;">희망하는 점 - 엄하게 가르쳐 주세요</p>
							</div>
						</div>
						<div style="width: 100%;">
							<div style="float: left; margin-top: 20px; margin-bottom: 5px;">요청자 메세지</div>
							<pre class="modal-textarea" style="width: 100%; height: 150px; text-align: left; padding: 5px;" readonly="readonly">${s.scheContent}</pre>
						</div>
						<div style="display: flex; flex-direction: row; justify-content: flex-end; width: 100%;" >
							<button type="button" class="schedule-btn" style="background-color: rgb(218, 76, 60); width: 110px;" onclick="refuse()">거절 하기</button>
							<button type="submit" class="schedule-btn" style="background-color: rgb(0, 199, 174); width: 110px;" id="btn-open-popup">채팅 하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</c:forEach>
	<script>

		function send() {
			const view1 = document.querySelectorAll('#view1');
			view1.forEach(element => {
				element.style.display = 'none';
			});

			const view2 = document.querySelectorAll('#view2');
			view2.forEach(element => {
				element.style.display = '';
			});

			// .p-btn의 배경을 설정
			const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'transparent';
			});

			// .p-btn1의 배경을 설정
			const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});
		}

		function from() {
			const view1 = document.querySelectorAll('#view1');
			view1.forEach(element => {
				element.style.display = '';
			});

			const view2 = document.querySelectorAll('#view2');
			view2.forEach(element => {
				element.style.display = 'none';
			});

			// .p-btn1의 배경을 설정
			const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'transparent';
			});

			// .p-btn의 배경을 설정
			const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});
		}

		// schedule.jsp의 모달을 열기 위한 코드
		function tmp(num) {
			const scheduleModal = document.querySelector('#scheduleModal' + num);
			scheduleModal.style.display = 'block';
		}
		// schedule.jsp의 모달을 닫기 위한 코드
		function tmp2(num) {
			const scheduleModal = document.querySelector('#scheduleModal' + num);
			scheduleModal.style.display = 'none';
		}

		// 거절 버튼 클릭 시 모달 닫기 (예시로 추가)
		function refuseSchedule() {
			scheduleModal.style.display = 'none';
		}
		
		
	</script>
</body>
</html>
