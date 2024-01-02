<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.btn{
			display: flex;
			align-items: center;
			justify-content: center;
		}
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
			position: relative;
			padding: 15px;
			margin-bottom: 30px;
		}
		.ui-submit-btn{
			float: right;
			position: absolute;
			right: 56px;
			bottom: 13px;
			width: 484px;
			background: none;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 35px;
			cursor: pointer;
			border: none;
			color: white;
			background: rgb(0, 199, 174);
			border-radius: 5px;
		}
		.email-input{
			height: 35px
		}
		.phone-input{
			height: 35px
		}
		.info-input{
			width: 100%;
		}

		.normal-input-box > button {
			width: 80px;
			height: 35px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
        .pro-pr{
            resize: none; 
            width: 100%; 
            height: 150px;
            border: 1px solid rgb(147, 147, 150);
			border-radius: 4px;
            overflow-y: auto;
			padding-left: 5px;
        }
        .pro-pr::-webkit-scrollbar {
			width: 0px; 
		}
		
		.hover-img:hover {
			opacity: 0.5;
			cursor: pointer;
		}

		#skillBtn{
			width: 100%;
			height: 40px;
			margin-top: 8px;
			margin-bottom: 8px;
			border: none;
			border-radius: 3px;
		}
		#skillBtn:hover{
			opacity: 0.7;
			cursor: pointer;
		}

		.chooseSkilArea::-webkit-scrollbar {
			display: none;
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
			<a class="myPageSideBar" href="proInfo.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">전문가 정보</a>
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
			<h3 style="margin: 10px 0 0 20px;">전문가 정보</h3>
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
						<form action="updateProInfo.me" method="post">
						<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
							<table class="user-info-table">
								<th>전문가 닉네임</th>
								<tr>
									<td><input class="info-input" value="${loginUser.memberName}" name="memberName" readonly="readonly"></td>
								</tr>
								<th>자기소개</th>
								<tr>
									<td>
										<div class = "normal-input-box">
                                            <textarea class="pro-pr" id="intro" name="intro">${loginUser.intro}</textarea>
										</div>
									</td>
								</tr>
								<th>지역</th>
								<tr>
									<td>
										<div class = "normal-input-box">
											<input type="text" value="${loginUser.location}" id="sample6_address" name="location" class="phone-input">
											<input type="button" class="btn" onclick="sample6_execDaumPostcode()" value="주소검색" 
											style="
												padding-left: 0px;
												padding-right: 0px;
												width: 80px;
												height: 35px;
												border: 1px solid rgb(147, 147, 150);
												border-radius: 5px;
											">
											</input>
										</div>
									</td>
									<td><input type="hidden" id="sample6_postcode" placeholder="우편번호"></td>										
									<td><input type="hidden" id="sample6_extraAddress" placeholder="참고항목"> </td>
									<td><input type="hidden" id="sample6_detailAddress" placeholder="상세주소"></td>
								</tr>
								<th>
									국가자격증 <br>
									<span style="font-size: x-small;">
										품앗이 회원님이 가장 자신있는 자격증 1개만 선택해주세요.
									</span>
								</th>
								<tr>
									<td>
										<div class="normal-input-box">
											<input class="info-input" id="showSkillName" value="${loginUser.skillName}" readonly="readonly">
											<input type="hidden" id="skillNo" name="skillNo" value="${loginUser.skillNo}">
											<button class="btn" type="button" style="display: flex; font-size: 12px;" onclick="skillAdd()">선택하기</button>
											<div class="chooseSkilArea" style="display: none; height: 500px; overflow: auto; text-align: -webkit-center;">
												<br>
												한국산업인력공단 국가자격증(총 <span style="color: red;">${fn:length(s)}</span>개)
												<h6 style="font-size: smaller; margin-top: 5px;">자격증 선택 후 아래 수정하기 버튼을 눌러주세요</h6>
												<hr>
												<table style="width: 100%;">
													<thead>
														<th style="text-align: -webkit-center;"><input id="findSkill" type="text" style="width: 100%;" placeholder="예) 정보처리기사"></th>
													</thead>
													<tbody>
														<c:forEach var="s" items="${s}">
															<tr style="display: flex; width: 100%;">
																<td style="width: 100%;">
																	<button id="skillBtn" type="button" onclick="inputSkill(`${s.skillNo}`, `${s.skillName}`)" style="width: 100%;">${s.skillName}</button>
																</td>
															</tr>
														</c:forEach>
														
													</tbody>
												</table>
											</div>
										</div>
									</td>
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


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete: function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if(data.userSelectedType === 'R'){
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if(data.buildingName !== '' && data.apartment === 'Y'){
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if(extraAddr !== ''){
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("sample6_extraAddress").value = extraAddr;
					
					} else {
						document.getElementById("sample6_extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode;
					document.getElementById("sample6_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("sample6_detailAddress").focus();
				}
			}).open();
		}
		
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
		
		function skillAdd() {
			const chooseSkilArea = document.getElementsByClassName('chooseSkilArea');
			chooseSkilArea[0].style.display = 'block';
		}
		
		function inputSkill(no, name) {
			const inputSkill = document.querySelector('#showSkillName');
			inputSkill.value = name;
			const skillNo = document.querySelector('#skillNo');
			skillNo.value = no;
		}

		//자격증검색 
		// findSkill 인풋창에 keyup 이벤트 리스너 등록
		document.querySelector('#findSkill').addEventListener('keyup', function() {
			// findSkill 인풋창의 value 가져오기
			const searchText = this.value.toLowerCase();

			// skillBtn 버튼들 가져오기
			const skillBtns = document.querySelectorAll('#skillBtn');

			// 각 skillBtn 버튼에 대해 반복
			skillBtns.forEach(function(skillBtn) {
				// skillBtn 버튼의 value 가져오기
				const skillName = skillBtn.textContent.toLowerCase();

				// searchText가 skillName에 포함되는지 확인
				const isMatch = skillName.includes(searchText);

				// 일치하면 버튼 보이기, 일치하지 않으면 숨기기
				skillBtn.style.display = isMatch ? 'block' : 'none';
			});
		});

	</script>	   
</body>
</html>