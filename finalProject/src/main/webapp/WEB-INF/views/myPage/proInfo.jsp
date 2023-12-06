<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
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
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">전문가 정보</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<div style="margin-top: 55px; display: flex; flex-direction: column; align-self: flex-start;">
						<img style="width: 130px; height: 130px; margin: 15px; border-radius: 25px;" src="./resources/icon/profileTest.png">
						<br><br>
						<form action="" style="align-self: center; width: 100%">
							<button type="submit" class="btn" style="width: 100%;">프로필 변경</button>
						</form>
					</div>
					<div>
						<form action="updateProInfo.me">
							<table class="user-info-table">
								<th>전문가 이름</th>
								<tr>
									<td><input value="${loginUser.memberName}" name="memberName" readonly="readonly"></td>
								</tr>
								<th>자기소개</th>
								<tr>
									<td style="padding-bottom: 3px;">
										<textarea style="resize: none; width: 98%; height: 50px;" name="intro">${loginUser.intro}</textarea>
									</td>
								</tr>
								<th>지역</th>
								<tr>
					                <td><input type="hidden" id="sample6_postcode" placeholder="우편번호"></td>										
									<td><input type="text" id="sample6_address" placeholder="주소"><br></td>
									<td><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br></td>
									<td><input type="hidden" id="sample6_detailAddress" placeholder="상세주소"></td>
									<td><input type="hidden" id="sample6_extraAddress" placeholder="참고항목"> 
				                </tr>
								<tr>
									<td><input value="${loginUser.location}" readonly="readonly"></td>
								</tr>
								<th>전문분야 및 상세분야 <br><span style="font-size: x-small;">최대 3개를 선택해주세요.</span><span style="font-size: x-small; color: red;">필수</span></th>
								<tr>
									<td><input placeholder="자격증정보 api? / 데이터베이스 직접?"></td>
								</tr>
								<th>보유기술 <br><span style="font-size: x-small;">최대 20개를 선택해주세요.</span><span style="font-size: x-small; color: red;">필수</span></th>
								<tr>
								<!-- 보유기술 고르는 창 드롭다운? ajax써야하나? -->
									<td><input placeholder="기술검색 드롭다운?" style="height: 80px;"></td>
								</tr>
							</table>
							<button type="submit">수정하기</button>
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>

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
</script>	            
</html>