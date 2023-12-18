<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="././resources/css/myPgae.css">
	
<style>
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
	.user-info{
		display: flex;
		align-items: center;
		margin-bottom: 40px;
		margin-top: 0px;
		flex-direction: column;
		justify-content: space-evenly;
		margin-left: 0px;
	}
	.pageBox{
		border-radius: 13px;
		border: 1px solid rgba(226, 226, 226, 0.4);
		padding: 15px;
		margin-bottom: 100px;
		position: relative;
	}
	.top-center{
		margin-bottom: -15px;
	}
	.req-outer{
		border: 1px solid rgba(96, 96, 96, 0.5);
		border-radius: 10px;
		width: 96%;
		margin-top: 10px;
		height: 150px;
		padding-left: 15px;
		padding-top: 10px;
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}
	.req-desc{
		font-size: 12px;
		margin-top: 20px;
	}
	.req-text{
		display: flex;
		flex-direction: column;
	}
	.req-info{
		display: flex;
		align-items: flex-end;
		flex-direction: column;
		margin-right: 10px;
	}
	.req-align{
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
	.req-no{
		font-size: 12px;
	}
	.req-id{
		font-size: 14px;
	}
	.req-answer-btn{
		background: rgb(218, 76, 60);
		border: none;
		width: 100px;
		height: 30px;
		border-radius: 4px;
		color: white;
		margin-right: 5px;
		cursor: pointer;
		font-size: 13px;
	}
	.req-detail-btn{
		background: rgb(0, 199, 174);
		border: none;
		width: 100px;
		height: 30px;
		border-radius: 4px;
		color: white;
		cursor: pointer;
		font-size: 13px;
	}
	.req-btn-area{
		display: flex;
		justify-content: end;
		margin-right: 10px;
		margin-bottom: 10px;
	}
	.close-btn{
		width: 10px;
		position: absolute;
		right: 12px;
		top: 11px;
		cursor: pointer;
	}
	.req-title{
		font-weight: bold;
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
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">요청 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
				<a class="myPageSideBar" href="careMem.me">회원 관리</a>
                <a class="myPageSideBar" href="ask.me" style="font-weight: bolder;
				background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">신고 내역</a>
			</c:if>        
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">문의 내역</h3>
			<br>
			<div class="top-center"
				style="display: flex; justify-content: space-around; margin-left: 20px; margin-right: 20px">
				<!-- 호버되면 밑줄 만들어주세요 ㅋㅋ -->
				<div>
					<p class="p-btn" id="from" onclick="from()">등록된 신고</p>
				</div>
				<div>
					<p class="p-btn1" id="send" onclick="send()">처리된 신고</p>
				</div>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<img class="close-btn" src="././resources/icon/close.png">
				<div class="user-info">
					<div class="req-outer">
						<div class="req-align">
							<div class="req-text">
								<h6 class="req-title">결제 관련 문의</h6>
								<div class="req-desc">
									결제가 안됩니다. 카카오측에서는 문제가 없다고합니다<br>
									확인해주세요
								</div>
							</div>
							<div class="req-info">
								<div class="req-no">신고번호 N.008410</div>
								<div class="req-id">홍길동</div>
							</div>
						</div>
						<div class="req-btn-area">
							<button class="req-answer-btn">답변</button>
							<button class="req-detail-btn">상세보기</button>
						</div>
					</div>

					<div class="req-outer">
						<div class="req-align">
							<div class="req-text">
								<h6 class="req-title">이거 오류가 있는 것 같습니다!!!</h6>
								<div class="req-desc">
									버튼이 안눌려요 버튼이
								</div>
							</div>
							<div class="req-info">
								<div class="req-no">신고번호 N.007777</div>
								<div class="req-id">홍홍홍</div>
							</div>
						</div>
						<div class="req-btn-area">
							<button class="req-answer-btn">답변</button>
							<button class="req-detail-btn">상세보기</button>
						</div>
					</div>
					<div class="req-outer">
						<div class="req-align">
							<div class="req-text">
								<h6 class="req-title">똑바로 안하냐?</h6>
								<div class="req-desc">
									아니 !@#! 결제가 안된다고 돈벌기 싫어?
								</div>
							</div>
							<div class="req-info">
								<div class="req-no">신고번호 N.012120</div>
								<div class="req-id">아무개</div>
							</div>
						</div>
						<div class="req-btn-area">
							<button class="req-answer-btn">답변</button>
							<button class="req-detail-btn">상세보기</button>
						</div>

					</div>
				</div>
			</div>		
		</div>
	</div>	<jsp:include page="../common/footer.jsp" />
</body>
</html>