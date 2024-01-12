<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		text-align: end;
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
		font-size: 13px;
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

	#reportBtn{
		background: rgb(0, 199, 174);
		border: none;
		width: 100px;
		height: 30px;
		border-radius: 4px;
		color: white;
		cursor: pointer;
		font-size: 13px;
		margin-left: 81%;
		padding-block: 5px;
		margin-bottom: 15px;
		margin-top: -10px;
	}
	
	#req-outer{
		border: 1px solid rgba(96, 96, 96, 0.5);
		border-radius: 10px;
		width: 96%;
		margin-top: 10px;
		height: max-content;
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
	.req-align{
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
	.req-text{
		display: flex;
		flex-direction: column;
	}
	.req-title{
		font-weight: bold;
	}
	.req-info{
		display: flex;
		align-items: flex-end;
		flex-direction: column;
		margin-right: 10px;
	}
	.req-no{
		font-size: 12px;
		width: 102px;
	}
	.req-id{
		font-size: 14px;
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
		resize: none;
	}
	.admin-reply{
		color: rgb(218, 76, 60);
		font-weight: 600;
		position: absolute;
		left: 66px;
	}
	.admin-reply2{
		color: rgb(218, 76, 60);
		display: flex;
		align-items: center;
		margin-left: 22px;
		margin-top: 10px;
		margin-bottom: -15px;
		font-size: 14px;
		font-weight: 600;
	}
	.report-outer{
		width: 100%;
		margin: 10px 0px 10px 8px;
		display: flex;
		flex-direction: column;
		align-items: center;
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
                <a class="myPageSideBar" href="reportList.rp" style="font-weight: bolder;
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
				<div class="user-info">
					<div style="width: 100%; margin: 10px 0px 10px 8px;">
						<h6 style="float: left; font-weight: bold;">신고 현황 (<span style="color: red;">0</span>건)</h6>
					</div>
					<div class="report-outer">
						<c:forEach var="r" items="${list}">
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
										<div class="req-no">${r.createDate}</div>
										<div class="req-id" style="display: flex;">${r.memberName} &nbsp; <div style="color: rgb(0, 199, 174);">#${r.memberNo}</div></div>
									</div>
								</div>
								<div class="req-btn-area">
									<button class="req-detail-btn" type="button" onclick="reportDetail(${r.reportNo})">상세보기</button>
								</div>
							</div>
						</c:forEach>	
					</div>

							
					<c:forEach var="r" items="${list}">
						<form method="post" action="reportComment.rp" style="width: 100%;">
							<div class="view${r.reportNo}" id="req-outer" style="display: none;">
								<div class="req-align">
									<div class="req-text">
										<h6 class="req-title">${r.reportTitle}</h6>
										<div class="req-desc" style="margin-left: 32px;">
											${r.reportContent}
										</div>
										
									</div>
									<div class="req-info">
										<div class="req-no">신고번호 N.${r.reportNo}</div>
										<div class="req-id">${r.createDate}</div>
										<div class="req-id" style="display: flex;">${r.memberName} &nbsp; <div style="color: rgb(0, 199, 174);">#${r.memberNo}</div></div>
									</div>
								</div>
								<div class="req-outer1" style="border: none;">
									<span class="admin-reply">답변</span>
									<textarea class="answer" name="adminComent" style="margin-top: 30px;"></textarea>
									<input type="hidden" name="reportNo" value="${r.reportNo}">
									<button type="submit" id="reportBtn">답변하기</button>
								</div>
							</div>
						</form>
					</c:forEach>
					<c:forEach var="er" items="${endlist}">
						<div class="req-outer1" style="display: none;">
							<div class="req-align">
								<div class="req-text">
									<h6 class="req-title">${er.reportTitle}</h6>
									<div class="req-desc">
										${er.reportContent}
									</div>
									
								</div>
								<div class="req-info">
									<div class="req-no">신고번호 N.${er.reportNo}</div>
									<div class="req-id">${er.createDate}</div>
									<div class="req-id" style="display: flex;">${er.memberName} &nbsp; <div style="color: rgb(0, 199, 174);">#${er.memberNo}</div></div>
								</div>
							</div>
							<div class="req-btn-area">
								<button class="req-answer-btn">처리완료</button>
							</div>
							<span class="admin-reply2">답변</span>
							<textarea class="answer" readonly="readonly">${er.adminComent}</textarea>
						</div>
					</c:forEach>
				</div>

				</div>
			</div>	 
		</div>		
	</div>

	
	<jsp:include page="../common/footer.jsp" />

	<script>
			function from() {
		location.href = "reportList.rp";
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
			const reqArea2s = document.querySelectorAll('#req-outer');
			reqAreas.forEach(reqArea => reqArea.style.display = "none");
			reqArea2s.forEach(reqArea2 => reqArea2.style.display = "none");

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

		function reportDetail(res){
			console.log(res)
			const reportInfo = document.querySelector('.report-outer');
			reportInfo.style.display = "none";

			const reportNum = document.querySelector('.view'+res);
			console.log(reportNum)
			reportNum.style.display = "flex";
		}
		
		function reportPostBtn(num) {
			if(num === 1) {
				$("#form").attr('action','reportComment.rp');
			}
			$("#form").submit();
		}
	</script>
</body>
</html>