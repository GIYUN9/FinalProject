<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<script>
		 let nnn;
	     function phoneCheck2() {
			const phone2 = document.querySelector('#phone2').value
	         document.querySelector('#phone2').readOnly = true;
	         document.querySelector('#sendBtn2').disabled = true;
	         const view2 = document.querySelector('.view-check2')
	         view2.style.display = "flex";
	         console.log('눌림')
				$.ajax({
	             type: "POST",
	             url: "phoneCheck.me",
	             data: {
	                 "phone" : phone2
	             },
	             success: function(res){
	                 alert('입력하신 전화번호로 인증번호가 발송되었습니다.')
	                 nnn = res;
	                 console.log(res)
	             },
	             error: function(){
	                 console.log("ERROR");
	             }
	         })
			}
	     
	     function numberCheck2(){
	         const number = document.querySelector('#numCheck2').value
	         if(number === nnn){
	             alert("인증이 완료되었습니다.");
	             document.querySelector('#numCheck2').readOnly = true;
	             document.querySelector('#checkBtn2').disabled = true;
	             document.querySelector('#submitBtn2').disabled = false;
	             submitBtn
	         } else{
	             alert("인증번호가 올바르지 않습니다.");
	         }
	     }
	</script>
	<style>
		.pageBox{
			margin-bottom: 100px;
		}

		.profile-btn-area{
			justify-content: center;
    		display: flex;
			align-self: center; 
			width: 100%;
		}
		.user-info-table{
			width: 80%;	
			position: relative;
			margin-bottom: 70px;
		}
		.user-info-table td{
			padding-bottom: 0px;
		}
		.user-info-table input{
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 35px;
		}
		.ui-formOuter{
			width: 100%;
		}
		.ui-submit-btn{
			float: right;
			position: absolute;
			right: 56px;
			bottom: 13px;
			width: 484px;
			background: none;
			border: none;
			color: white;
			background: rgb(0, 199, 174);
			border-radius: 5px;
			height: 35px;
			cursor: pointer;
		}
		.email-input{
			height: 35px;
			padding-left: 5px;
		}
		.phone-input{
			height: 35px;
			padding-left: 5px;
		}
		.info-input{
			width: 100%;
			padding-left: 5px;
		}

		.normal-input-box > button {
			width: 80px;
			height: 35px;
			border-radius: 5px;
			font-size: 15px;
		}
		.ui-formOuter{
			position: relative;
		}
		
		.hover-img:hover {
			opacity: 0.5;
			cursor: pointer;
		}
		
		.view-check2 > button{
			width: 80px;
			height: 35px;
			border-radius: 5px;
			font-size: 15px;
		}
		
		.view-check2 > input{
			width: calc(100% - 85px);
	    height: 28px;
	    box-sizing: border-box;
	    border: 1px solid rgb(147, 147, 150);
		border-radius: 5px;
		}
		.form-control{
			height: 35px;
			padding-left: 5px;
		}
		
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
		
			<a class="myPageSideBar" href="userInfo.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">요청 관리</a>
			<a class="myPageSideBar" href="ask3.me">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me">회원 관리</a>
                <a class="myPageSideBar" href="reportList.rp">신고 내역</a>
            </c:if>            
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">휴대폰 번호 변경</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div class="ui-formOuter">
						<table class="user-info-table">
							<th>기존 휴대폰 번호</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input class="phone-input" name="origin-phone" value="${loginUser.phone}" readonly="readonly" style="width: 100%;">		
										</div>
									</td>
								</tr>
						</table>
						<form action="updatePhone.me" method="post">
							<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
							<table class="user-info-table">
								<th>새로운 휴대폰 번호</th>
									<tr>
										<td>
											<div class = "normal-input-box">
												<input class="phone-input" id="phone2" name="phone" placeholder="새로운 번호 입력 010-0000-0000">	
												<button type="button" id="sendBtn2" onclick="phoneCheck2()" style="font-size: 11px; background: rgb(0, 199, 174); color: white;">인증 번호 발송</button>	
											</div>
											<div class="view-check2" style="display: none; margin-top: 10px;">
			                                	<input type="number" class="form-control" id="numCheck2" placeholder="6자리 인증번호를 입력해주세요" name="numCheck" style="height: 35px; margin-right: 5px;">
			                                	<button type="button" id="checkBtn2" onclick="numberCheck2()">인증하기</button>
		                                	</div>
										</td>
									</tr>
								<button class="ui-submit-btn" type="submit" id="submitBtn2" class="btn" disabled="disabled">변경하기</button>
							</table>
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>