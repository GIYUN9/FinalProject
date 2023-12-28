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
			<h3 style="margin: 10px 0 0 20px;">나의 정보</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div style="margin-top: 55px; display: flex; flex-direction: column; align-self: flex-start;">
						<label class="hover-img" onclick="changeImg()"><img style="width: 100px; height: 100px; margin: 15px; border-radius: 25px;" src="${loginUser.filePath}"></label>

						<form class="profile-btn-area" action="updateUserImg.me" method="post" enctype="multipart/form-data">
							<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
							<input type="file" id="upload-photo-input" name="upfile" style="display: none;">
							<button type="submit" class="pr-btn" disabled="disabled">프로필 변경</button>
						</form>
					</div>
					<div class="ui-formOuter">
						<form action="updateUserInfo.me" method="post">
							<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
							<table class="user-info-table">
								<th>이름</th>
								<tr>
									<td><input class="info-input" name="memberName" value="${loginUser.memberName}"></td>
								</tr>
								<th>이메일</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input class="email-input" name="memberEmail" value="${loginUser.memberEmail}" readonly="readonly" style="width: 100%;">
										</div>
									</td>
								</tr>
								<th>휴대폰 본인인증</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input class="phone-input" name="phone" value="${loginUser.phone}" readonly="readonly">
											<button class="btn" type="button" onclick="newPhone()" style="font-size: 12px;">변경하기</button>
										</div>
									</td>
								</tr>
								<th>포인트</th>
								<tr>
									<td>
										<div class="normal-input-box">
											<input class="info-input" value="${loginUser.account}" readonly="readonly">
											<button type="button" class="btn" onclick="payAdd()" style="font-size: 12px;">충전하기</button>
										</div>
									</td>
								</tr>
								<th>관심사</th>
								<tr>
									<td><input class="info-input" name="memberConcern" value="${loginUser.memberConcern}" placeholder="본인의 관심사를 직접 입력해보세요. ex) 코딩 / 음악"></td>
								</tr>
								<button class="ui-submit-btn" type="submit" class="btn" style="float: right;">수정하기</button>
							</table>
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
	<script>
	function changeImg() {
		  // input 태그 활성화
		  $("#upload-photo-input").trigger("click");

		  // 파일 선택 이벤트 등록
		  $("#upload-photo-input").change(function(event) {
		    // 선택된 파일 정보
		    var file = event.target.files[0];

		    // FileReader 객체 생성
		    var reader = new FileReader();

		    // 파일 로딩
		    reader.onload = function(event) {
		      // 이미지 태그 src 속성 변경
		      $("img[src='${loginUser.filePath}']").attr("src", event.target.result);
		    };

		    // 파일 읽기 시작
		    reader.readAsDataURL(file);
		    
		    
		 	// 파일 선택되면 disabled 속성 제거
		    $(".pr-btn").removeAttr("disabled");
		 	
		    // 프로필 변경 버튼 css 변경
		    $(".pr-btn").css("background-color", "rgb(0, 199, 174)");
		    $(".pr-btn").css("border-color", "rgb(0, 199, 174)");
		    $(".pr-btn").css("font-weight", "bold");
		    $(".pr-btn").css("color", "white");
		    $(".pr-btn").css("cursor", "pointer");
		  });  
	}
	function payAdd() {
		location.href = "amountChargePage.me"
	}
	
	function newPhone() {
		location.href = "newPhoneEnroll.me"
	}
	</script>
</body>
</html>