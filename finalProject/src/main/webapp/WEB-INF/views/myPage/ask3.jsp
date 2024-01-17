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
			border-radius: 8px;
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
		.req-outer1{
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			width: 96%;
			margin-top: 10px;
			height: 100%;
			padding-left: 15px;
			padding-top: 10px;
			display: flex;
    		flex-direction: column;
    		justify-content: space-between;
		}
		.answer {
		    width: 100%;
		    height: 6.25em;
		    resize: none;
		  }
		.req-desc{
			font-size: 12px;
			margin-top: 20px;
			max-width: 585px;
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
			width: 102px;
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
		.ask-report-btn{
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
		.report-title{
			font-size: 35px;
			text-align: center;
			font-weight: bold;
			margin-top: 45px;
		}
		.report-text{
			text-align: center;
			font-weight: bold;
		}
		.report-align{
			align-items: center;
			display: flex;
			flex-direction: column;
			justify-content: center;
			margin-bottom: 70px;
		}
		.admin-reply{
			color: rgb(218, 76, 60);
			display: flex;
			align-items: center;
			margin-left: 22px;
			margin-top: 10px;
			margin-bottom: -15px;
			font-size: 14px;
			font-weight: 600;
		}
		.answer{
			width: 93%;
			margin: 20px;
			height: 100px;
			display: flex;
			align-items: center;
			justify-content: center;
			border-radius: 8px;
			border: 1px solid rgba(96, 96, 96, 0.5);
		}
		.write-icon{
			width: 20px;
			height: 20px;
		}
		.centerTitle{
			display: flex;
			flex-direction: row;
			justify-content: space-between;
		}
	
		.createNotice-btn{
			align-self: end;
			width: 120px;
			height: 35px;
			padding-top: 10px;
			cursor: pointer;
			text-decoration: none;
			color: white;
		}
		.createNotice-btn:hover {
			color: white;
		}
		.ask-write-btn{
			cursor: pointer;
		}
		.ask-write-btn:hover{
			opacity: 0.5;
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
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">요청 관리</a>
			<a class="myPageSideBar" href="ask3.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
				<a class="myPageSideBar" href="careMem.me">회원 관리</a>
                <a class="myPageSideBar" href="reportList.rp">신고 내역</a>
			</c:if>        
		</div>
		<div class="main-box">
			<div class="centerTitle">
				<h3 style="margin: 10px 0 0 20px;">문의(신고) 내역</h3>
				<c:if test="${loginUser != null && loginUser.memberName != '관리자'}">
					<a class="ask-write-btn" style="color: white; margin-top: 20px; margin-right: 20px;"  onclick="reportEnrollFrom()">
						<img class="write-icon" src="././resources/icon/pencil.png" alt="">
						문의 작성
					</a>
				</c:if>
			</div>
			<br>
			<div class="top-center"
				style="display: flex; justify-content: space-around; margin-left: 20px; margin-right: 20px">
				<!-- 호버되면 밑줄 만들어주세요 ㅋㅋ -->
				<div>
					<p class="p-btn" id="from" onclick="from()">등록한 문의</p>
				</div>
				<div>
					<p class="p-btn1" id="send" onclick="send()">처리된 문의</p>
				</div>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h6 style="float: left; font-weight: bold;">문의 현황 (<span style="color: red;">0</span>건)</h6>
					</div>
					<c:if test="${ empty rlist }">
						<div class="report-align">
							<p class="report-title">등록한 문의 내용이 없습니다.</p>
							<p class="report-text">문의 또는 상담사 연결을 신청하고자 한다면 아래 버튼을 눌러주세요.</p>
							<button class="ask-report-btn" type="button" onclick="reportEnrollFrom()">문의하기</button>
							<button class="ask-report-btn" type="button" onclick="reportEnrollFrom()">상담 예약</button>
						</div>
					</c:if>
					<c:forEach var="r" items="${rlist}">
						<div class="req-outer">
							<div class="req-align">
								<div class="req-text">
									<h6 class="req-title">${r.reportTitle}</h6>
									<div class="req-desc">
										${r.reportContent}
									</div>
								</div>
								<div class="req-info">
									<div class="req-no">신고번호 N.${r.reportNo}</div>
									<div class="req-id">${r.createDate}</div>
								</div>
							</div>
							<div class="req-btn-area">
								<button class="req-answer-btn" style="bottom: 66px;">답변 대기 중</button>
							</div>
						</div>
					</c:forEach>
					
					<c:forEach var="e" items="${endrlist}">
						<div class="req-outer1" style="display: none;">
							<div class="req-align">
								<div class="req-text">
									<h6 class="req-title">${e.reportTitle}</h6>
									<div class="req-desc">
										${e.reportContent}
									</div>
									
								</div>
								<div class="req-info">
									<div class="req-no">신고번호 N.${e.reportNo}</div>
									<div class="req-id">${e.createDate}</div>
								</div>
							</div>
							<div class="req-btn-area">
								<button class="req-answer-btn">처리완료</button>
							</div>
							<span class="admin-reply">답변</span>
							<textarea class="answer" readonly="readonly">${e.adminComent}</textarea>
						</div>
					</c:forEach>
					
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
<script>
	function from() {
		location.href = "ask3.me";
		const reqAreas = document.querySelectorAll('.req-outer1');
		reqAreas.forEach(reqArea => reqArea.style.display = "none");
		
		const reqAreas1 = document.querySelectorAll('.req-outer');
		reqAreas1.forEach(reqArea1 => reqArea1.style.display = "flex");

		const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'transparent';
			});

		const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});
	}

	function send() {
			const reqAreas = document.querySelectorAll('.req-outer');
			const reportAligns = document.querySelectorAll('.report-align')
			reqAreas.forEach(reqArea => reqArea.style.display = "none");
			reportAligns.forEach(reportAlign => reportAlign.style.display = "none");
			
			const reqAreas1 = document.querySelectorAll('.req-outer1');
			reqAreas1.forEach(reqArea1 => reqArea1.style.display = "flex");

			const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'transparent';
			});

			const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});
	}
	
	function reportEnrollFrom() {
		location.href = "reportEnrollFrom.me";
	}
</script>
</body>
</html>