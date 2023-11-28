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
		
		.p-btn{
			display: inline-block;
			margin: 0 auto;
			padding: 10px 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			cursor: pointer;
		}
		
		.textarea-maxSize{
			border: 1px solid gray;
			border-radius: 12px;
			width: 290px;
			height: 75px;
			resize: none;
			overflow: auto;
			text-overflow: ellipsis;
			&::-webkit-scrollbar{
				display: none;
			}
		}
		
		.schedule-btn{
			margin: 5px;
			border: 1px solid #ccc;
			border-radius: 3px;
			cursor: pointer;
			height: 30px;
			color: white;
		}
		
		.schedule-btn:hover{
			opacity: 0.5;
		}
		
		.alarm-section{
			border: 1px solid rgb(51, 51, 51);
			width: 100%;
			height: 100px;
			border-radius: 10px;
			display: flex;
			align-items: center;
			margin-top: 3px;
			margin-bottom: 10px;
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
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me" style="font-weight: bolder; font-size: 1.1em;">일정 관리</a>
			<a class="myPageSideBar" href="#">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">일정 관리</h3>
			<br>
			<div class="top-center" style="display: flex; justify-content: space-around; margin-left: 20px; margin-right: 20px">
				<!-- 호버되면 밑줄 만들어주세요 ㅋㅋ -->
				<div>
					<p class="p-btn">받은 요청</p>
				</div>
				<div>
					<p class="p-btn">보낸 요청</p>
				</div>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">			
				<div class="user-info" style="flex-direction: column; margin-left: 5px; margin-right: 5px;">
				<div style="width: 100%; margin: 10px 0px 10px 8px;">
					<h4 style="float: left;">요청 현황 (<span style="color: red;">3</span>건)</h4>
				</div>
					<div class="alarm-section">
						<div style="width: 14%;">
							이미지 자리
						</div>
						<div style="width: 31%;">
							<h3>홍길동</h3>
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
							<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">요청 상세 보기</button>
							<button class="schedule-btn" style="background-color: rgb(218, 76, 60)">거절 하기</button>
						</div>
					</div>
					
					<div class="alarm-section">
						<div style="width: 14%;">
							이미지 자리
						</div>
						<div style="width: 31%;">
							<h3>홍길동</h3>
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
							<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">요청 상세 보기</button>
							<button class="schedule-btn" style="background-color: rgb(218, 76, 60)">거절 하기</button>
						</div>
					</div>
					
					<div class="alarm-section">
						<div style="width: 14%;">
							이미지 자리
						</div>
						<div style="width: 31%;">
							<h3>홍길동</h3>
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
							<button class="schedule-btn" style="background-color: rgb(0, 199, 174)">요청 상세 보기</button>
							<button class="schedule-btn" style="background-color: rgb(218, 76, 60)">거절 하기</button>
						</div>
					</div>
					
					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h4 style="float: left;">해결한요청 (20)건</h4>
					</div>
					
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>