<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-top: 5px;
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
			<a class="myPageSideBar" href="schedule.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">요청 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
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
						<h6 style="float: left;">요청 현황 (<span style="color: red;">3</span>건)</h6>
					</div>
					<div style="width: 98%; overflow: scroll; height: 414px;" class="scrolleffect">
						<div class="alarm-section">
							<div style="width: 14%;">
								이미지 자리
							</div>
							<div style="width: 31%;">
								<h5 class="user-nickname">홍길동</h5>
								<p>희망지역: 서울시 강남구 역삼동</p>
								<p>키보드 / 기타 레슨</p>
							</div>
							<div style="width: 40%;">
								<p class="textarea-maxSize">
									ex) 달마ㅏ바사앚맟카탗판ㅇ랗알하낭란ㅇ라ㅁ나안ㅁ암나란ㅇㄹ항라호아로할화라홀하ㅘㄹ활하ㅘㄹ활하ㅘㅇㄹ하ㅗ라화라호라홀하....
								</p>
							</div>
							<div style="width: 15%; display: flex; flex-direction: column;">
								<button class="schedule-btn" style="background-color: rgb(0, 199, 174)" id="btn-open-popup">확인</button>
								<button class="schedule-btn" style="background-color: rgb(218, 76, 60)" onclick="refuse()">거절</button>
							</div>
						</div>
	
						<div class="alarm-section">
							<div style="width: 14%;">
								이미지 자리
							</div>
							<div style="width: 31%;">
								<h5 class="user-nickname">홍길동</h5>
								<p>희망지역: 서울시 강남구 역삼동</p>
								<p>키보드 / 기타 레슨</p>
							</div>
							<div style="width: 40%;">
								<p class="textarea-maxSize">


								</p>
							</div>
							<div style="width: 15%; display: flex; flex-direction: column;">
								<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">상세</button>
								<button class="schedule-btn" style="background-color: rgb(218, 76, 60)">거절</button>
							</div>
						</div>
	
						<div class="alarm-section">
							<div style="width: 14%;">
								이미지 자리
							</div>
							<div style="width: 31%;">
								<h5 class="user-nickname">홍길동</h5>
								<p>희망지역: 서울시 강남구 역삼동</p>
								<p>키보드 / 기타 레슨</p>
							</div>
							<div style="width: 40%;">
								<p class="textarea-maxSize">
									가야 할 때가 언제인가를
									분명히 알고 가는 이의
									뒷모습은 얼마나 아름다운가.
	
									봄 한철
									격정을 인내한
									나의 사랑은 지고 있다.
	
									분분한 낙화.
									결별이 이룩하는 축복에 싸여
									지금은 가야 할 때
								</p>
							</div>
							<div style="width: 15%; display: flex; flex-direction: column;">
								<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">상세</button>
								<button class="schedule-btn" style="background-color: rgb(218, 76, 60)">거절</button>
							</div>
						</div>
					</div>

					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h6 style="float: left;">해결한요청 (20)건</h6>
					</div>

				</div>
				<div id="view2" class="user-info"
					style="flex-direction: column; margin-left: 5px; margin-right: 5px; display: none;">
					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h6 style="float: left;">보낸 요청</h6>
					</div>
					<div style="width: 98%;">
						<div class="alarm-section">
							<div style="width: 14%;">
								이미지 자리
							</div>
							<div style="width: 31%;">
								<h5 class="user-nickname">홍길동</h5>
								<p>희망지역: 서울시 강남구 역삼동</p>
								<p>키보드 / 기타 레슨</p>
							</div>
							<div style="width: 40%;">
								<p class="textarea-maxSize">
									가야 할 때가 언제인가를
									분명히 알고 가는 이의
									뒷모습은 얼마나 아름다운가.

									봄 한철
									격정을 인내한
									나의 사랑은 지고 있다.

									분분한 낙화.
									결별이 이룩하는 축복에 싸여
									지금은 가야 할 때
								</p>
							</div>
							<div style="width: 15%; display: flex; flex-direction: column;">
								<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">확인 중</button>
								<button class="schedule-btn" style="background-color: rgba(224, 224, 224, 0.5); color: black; border: 1px solid rgba(224, 224, 224, 0.5);">취소</button>
							</div>
						</div>

						<div class="alarm-section">
							<div style="width: 14%;">
								이미지 자리
							</div>
							<div style="width: 31%;">
								<h5 class="user-nickname">홍길동</h5>
								<p>희망지역: 서울시 강남구 역삼동</p>
								<p>키보드 / 기타 레슨</p>
							</div>
							<div style="width: 40%;">
								<p class="textarea-maxSize">
									가야 할 때가 언제인가를
									분명히 알고 가는 이의
									뒷모습은 얼마나 아름다운가.

									봄 한철
									격정을 인내한
									나의 사랑은 지고 있다.

									분분한 낙화.
									결별이 이룩하는 축복에 싸여
									지금은 가야 할 때
								</p>
							</div>
							<div style="width: 15%; display: flex; flex-direction: column;">
								<button class="schedule-btn" style="background-color: rgb(218, 76, 60);">거절됨</button>
								<button class="schedule-btn" style="background-color: rgba(224, 224, 224, 0.5); color: black; border: 1px solid rgba(224, 224, 224, 0.5);">삭제</button>
								<!-- 항목삭제 버튼 누르면 목록에서 사라진다 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />

	<div class="modal">
		<div class="modal_body" style="padding-top: 10px;">
			<img id="x-btnImg" src="././resources/icon/x-btn.png" alt="" style="width: 35px; height: 35px; float: right; margin-right: 7px;">
			<div style="margin-top: 10px;">
				요청 상세 보기
			</div>
			<form action="" style="margin-top: 10px;">
				<div class="alarm-section" style="display: flex; flex-direction: column; align-items: baseline; height: auto; width: 95%; margin: 19px; padding: 12px;">
					<div style="flex-direction: row; justify-content: space-between; width: 100%; display: flex; flex-direction: row;">
						<div>이미지 자리</div>
						<div>키보드 / 기타 레슨</div>
					</div>
					<div style="float: left; flex-direction: column; margin-top: 10px;">
						<div><h3 style="float: left; margin-bottom: 5px;">홍길동 님</h3></div>
						<div><p style="float: left;">희망지역: 서울시 강남구 역삼동</p></div>
						<div><p style="float: left;">010-1111-1111</p></div>
					</div>
					<div style="float: left; flex-direction: column; margin-top: 10px;">
						<div><h4 style="float: left;">세부 사항</h4></div>
						<div style="float: left; flex-direction: column; margin-top: 5px; margin-left: 5px;">
							<div><p style="float: left;">의뢰비 - 합의 후 결정</p></div>
							<div><p style="float: left;">시간대 - 토요일 3시 이후 or 일요일</p></div>
							<div><p style="float: left;">희망하는 점 - 엄하게 가르쳐 주세요</p></div>
						</div>
					</div>
					<div style="width: 100%;">
						<div style="float: left; margin-top: 20px; margin-bottom: 5px;">요청자 메세지</div>
						<p class="textarea-maxSize" style="width: 100%; text-align: left; padding: 5px;">
							블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
							블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
							블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
							블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
						</p>
					</div>
					<div style="display: flex; flex-direction: row; justify-content: flex-end; width: 100%;" >
						<button type="submit" class="schedule-btn" style="background-color: rgb(0, 199, 174); width: 90px;" id="btn-open-popup">채팅 하기</button>
						<button type="button" class="schedule-btn" style="background-color: rgb(218, 76, 60); width: 90px;" onclick="refuse()">거절 하기</button>
					</div>
				</div>
			</form>
			
		</div>
	</div>

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
		}

		const modal = document.querySelector('.modal');
    	const btnOpenPopup = document.querySelector('#btn-open-popup');
		btnOpenPopup.addEventListener('click', () => {
    		modal.style.display = 'block';
    	});

		modal.classList.toggle('show');

		function refuse(){
			
		}
		
		const modals = document.querySelector('.modal');
    	const btnImg = document.querySelector('#x-btnImg');
    	btnImg.addEventListener('click', () => {
    		modals.style.display = 'none';
    	});

	</script>
</body>
</html>
