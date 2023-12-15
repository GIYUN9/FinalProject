<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
    <style>
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

        .close-btn{
            width: 10px;
            position: absolute;
            right: 12px;
            top: 11px;
            cursor: pointer;
        }
        .ad-table{
            border-collapse: collapse;
            text-align: center;
        }
        td{
            padding: 10px;
            font-size: 13px;
        }
        .ad-table{
            border: none;
            margin-top: 30px;
            width: 100%;
            table-layout: fixed;
        }
        .ad-btn{
            width: 100%;
            border: none;
            color: white;
            background: rgb(218, 76, 60);
            border-radius: 4px;
            /* width: 30px; */
            height: 30px;
            margin-top: 30px;
            margin-bottom: -30px;
            cursor: pointer;
        }

        .user-info2{
            width: 295px;
            margin-left: 5px;
            height: 300px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-top: none;
            position: relative;
            overflow-y: auto;
        }
        .user-info2-top{
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-radius: 8px 8px 0px 0px;
            background: rgba(226, 226, 226, 0.4);
            font-size: 17px;
            height: 31px;
            text-align: center;
            font-weight: 600;
        }
        .table-area{
            height: 300px;
            overflow-y: auto;
            min-width: 454px;
        }
        .table-area::-webkit-scrollbar {
			width: 0px; 
		}

        /* 검색 css */
        .src-area{
            position: absolute;
            width: 100%;
        }
        .src-mem{
            width: 468px;
            border: 1px solid #3b3b3b5c;
            border-radius: 8px;
            padding-left: 0px;
            height: 29px;
        }
        .src-img{
            width: 20px;
            height: auto;
            position: absolute;
            right: 354px;
            top: 4px;
            cursor: pointer;
        }
        .src-btn{
            
        }

        .ad-can{
            right: 0px;
            border: none;
            width: 295px;
            height: 30px;
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-top: none;
            border-radius: 0px 0px 9px 9px;
            cursor: pointer;
        }

        /* 선택된 회원 */
        .sel-mem{
            border-bottom: 1px solid rgba(96, 96, 96, 0.4);
            width: 100%;
            height: 50px;
            padding: 10px;  
            line-height: 1.0;
            display: flex;
            flex-direction: column;
        }
        .sel-mem2{
            border-bottom: 1px solid rgba(96, 96, 96, 0.4);
            width: 100%;
            height: 50px;
            padding: 10px;  
            line-height: 1.0;
            display: flex;
            flex-direction: column;
            align-items: end;
        }
        .user-info2::-webkit-scrollbar {
			width: 0px; 
		}
        .align-mem{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }
        .align-mem:hover{
            background: black;
            background-color: rgba(226, 226, 226, 0.4);
        }
        .upper-text{
            font-size: 9px; 
            margin-bottom: 10px; 
            margin-top: -8px; 
            margin-left: -5px; 
            color: rgba(147, 147, 150);
        }
        .lower-text{
            margin-top: 7px; 
            margin-left: -5px;
        }
        .hidden {
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
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
            <c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me"  style="font-weight: bolder; 
			    background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 관리</a>
            <a class="myPageSideBar" href="ask.me">신고 내역</a>
            </c:if>            
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">회원 관리</h3>
			<div class="pageBox" style="display: flex; flex-direction: row;">
				<div class="user-info">
                    <div class="table-area">
                        <table border="1" class="ad-table" id="memberTable">
                            <thead style="font-size: 15px;">
                                <div class="src-area">                                
                                    <input class="src-mem" type="text" name="" id="searchInput" placeholder="검색">
                                    <img class="src-img" src="././resources/icon/glass-icon.png" alt="">
                                </div>
                                <tr>
                                    <th style="width: 8%;">선택</th>
                                    <th style="width: 8%;">번호</th>
                                    <th style="width: 33%;">이메일</th>
                                    <th style="width: 14%;">이름</th>
                                    <th style="width: 17%;">구분</th>
                                    <th style="width: 23%;">가입일</th>
                                </tr>							                         
                            </thead>
                            <tbody>
                            	<c:forEach var="m" items="${mList}">		
									<tr>
	                                    <td><input type="checkbox"></td>
	                                    <td>${m.memberNo}</td>
	                                    <td>${m.memberEmail}</td>
	                                    <td>${m.memberName}</td>
	                                    <td>
											<c:choose>
												<c:when test="${m.memberPro == 1}">
													일반회원
												</c:when>
												<c:when test="${m.memberPro == 2}">
													전문가
												</c:when>
											</c:choose>
	                                    </td>
	                                    <td>${m.enrollDate}</td>
	                                </tr>
								</c:forEach> 	
                            </tbody>
                        </table>
                    </div>
                    <button class="ad-btn" onclick="a()">탈퇴</button>
				</div>
                <div>
                    <div class="user-info2-top">
						회원관리
                    </div>
                    <div class="user-info2">

                    </div>
                    <button class="ad-can">취소</button>
                </div>
                

			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
	<script>        
	const cateMemberValue = {}
	
	 let globalMemberNoList = [];
    $(document).ready(function() {
    	addCheckBoxEvent();
    	displaySelectedMembers();
        $('#searchInput').on('keyup', function() {  	
            let searchText = $(this).val().toLowerCase();
            console.log("온키업 텍스트:", searchText); // 이 줄을 추가하여 searchText 값을 콘솔에 출력
            drawMemberList(searchText);
        });
    });	
    
    function addCheckBoxEvent(){
	 	let checkboxes = document.querySelectorAll('input[type="checkbox"]');
	    let userInfo2Div = document.querySelector('.user-info2');
	    let cancelButton = document.querySelector('.ad-can');
	    let tableRows = document.querySelectorAll('.ad-table tbody tr');
	
	    // 각 체크박스에 클릭 이벤트 리스너 추가
	    checkboxes.forEach(function(checkbox) {
	        checkbox.onchange = function(){
	        	 displaySelectedMembers();
	        }
	    });
	    // 나머지 코드 작성 ...
	    cancelButton.onclick = function(){
	    	// 취소 버튼 클릭 시 align-mem의 내용 초기화 및 체크박스의 checked 해제
	    	userInfo2Div.innerHTML = '';
	        checkboxes.forEach(function(checkbox) {
	            checkbox.checked = false;
	        });
	    }
    }
		
    function displaySelectedMembers() {
    	console.log("??")
        let checkboxes = document.querySelectorAll('input[type="checkbox"]');
        let userInfo2Div = document.querySelector('.user-info2');
        let memberNoList = [];

       

        // 체크박스를 통해 선택된 것을 찾기 위해 반복
        checkboxes.forEach(function(checkbox, index) {

            if (checkbox.checked) {
                // 해당하는 <td> 요소 가져오기
                let tds = checkbox.parentElement.parentElement.getElementsByTagName('td');

                // <td> 요소에서 값 추출
                let userNo = tds[1].innerText;
                
                memberNoList.push(userNo);
                
                if (!isUserNoAdded(userNo, userInfo2Div)) {

	                let userType = tds[4].innerText;
	                let userName = tds[3].innerText;
	                let userEmail = tds[2].innerText;

	                // align-mem에 두 개의 div 추가
	                let alignMemDiv = document.createElement('div');
	                alignMemDiv.classList.add('align-mem');
	
	                // sel-mem 추가
	                let selMemDiv = document.createElement('div');
	                selMemDiv.classList.add('sel-mem');
	
	                let upperTextSpanSelMem = document.createElement('span');
	                upperTextSpanSelMem.classList.add('upper-text');
	                upperTextSpanSelMem.innerText = userType;
	                selMemDiv.appendChild(upperTextSpanSelMem);
	
	                let lowerTextSpanSelMem = document.createElement('span');
	                lowerTextSpanSelMem.classList.add('lower-text');
	                lowerTextSpanSelMem.innerText = userName;
	                selMemDiv.appendChild(lowerTextSpanSelMem);
	
	                alignMemDiv.appendChild(selMemDiv);
	
	                // sel-mem2 추가
	                let selMem2Div = document.createElement('div');
	                selMem2Div.classList.add('sel-mem2');
	
	                let upperTextSpanSelMem2 = document.createElement('span');
	                upperTextSpanSelMem2.classList.add('upper-text');
	                upperTextSpanSelMem2.innerHTML = 'No. ' + '<span class="select-user-no">' + userNo + '</span>';
	                selMem2Div.appendChild(upperTextSpanSelMem2);
	
	                let lowerTextSpanSelMem2 = document.createElement('span');
	                lowerTextSpanSelMem2.classList.add('lower-text');
	                lowerTextSpanSelMem2.innerText = userEmail;
	                selMem2Div.appendChild(lowerTextSpanSelMem2);
	
	                alignMemDiv.appendChild(selMem2Div);
	
	                // user-info2Div에 alignMemDiv 추가
	                userInfo2Div.appendChild(alignMemDiv);
                }
            }
        });
      
        let memberNoListString = memberNoList.toString();
        console.log('memberNoList 값:', memberNoList);
        console.log('globalMemberNoList 값:', globalMemberNoList);
        console.log('memberNoListString 값:', memberNoListString);
    }

 	// 이미 추가된 정보인지 확인하는 함수
    function isUserNoAdded(userNo, userInfo2Div) {
        let addedUserNos = Array.from(userInfo2Div.querySelectorAll('.upper-text'))
            .map(span => span.innerText.replace('No. ', ''));
        
        return addedUserNos.includes(userNo);
    }

    document.addEventListener("DOMContentLoaded", function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        var userInfo2Div = document.querySelector('.user-info2');
        var cancelButton = document.querySelector('.ad-can');
	    var searchInput = document.querySelector('.src-mem');
        var tableRows = document.querySelectorAll('.ad-table tbody tr');

        // 각 체크박스에 클릭 이벤트 리스너 추가
        checkboxes.forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                displaySelectedMembers();
            });
        });

        // 취소 버튼 클릭 이벤트 처리
        cancelButton.addEventListener('click', function() {
            // 취소 버튼 클릭 시 align-mem의 내용 초기화 및 체크박스의 checked 해제
            userInfo2Div.innerHTML = '';
            checkboxes.forEach(function(checkbox) {
                checkbox.checked = false;
            });
        });

        // displaySelectedMembers 함수
        function displaySelectedMembers() {
            // ... (이하 생략)
        }
    });
    
    function drawMemberList(text){
        // AJAX를 사용하여 서버에 데이터 요청
        $.ajax({
            type: 'GET',
            url: 'src.me', // 서버 엔드포인트를 적절히 설정
            data: { searchText: text }, // 검색 텍스트를 서버에 전달
            success: function(data) {
                // 서버에서 받은 데이터를 사용하여 회원 목록을 다시 그림
                updateMemberTable(data);
                addCheckBoxEvent();
                displaySelectedMembers();         
            },
            error: function(error) {
                console.error('멤버 데이터를 가져오지 못함 :', error);
            }
        });
    }
    
    function updateMemberTable(data) {
        // 받은 데이터를 순회하면서 각 행을 업데이트
        $('#memberTable tbody').empty(); // 현재 tbody 내용을 비움

        $.each(data, function(index, member) {
            var newRow = '<tr>' +
                '<td><input type="checkbox"></td>' +
                '<td>' + member.memberNo + '</td>' +
                '<td>' + member.memberEmail + '</td>' +
                '<td>' + member.memberName + '</td>' +
                '<td>' + (member.memberPro === 1 ? '일반회원' : '') + '</td>' +
                '<td>' + member.enrollDate + '</td>' +
                '</tr>';
            $('#memberTable tbody').append(newRow);
        });
    }

    function a() {
        let memberNos = [];

        $(".select-user-no").each(function(index, element) {
            // 각 요소에서 내용을 가져와서 사용할 수 있습니다.
            let memberNo = $(element).text();
            memberNos.push(memberNo);
            console.log("User Number:", memberNo);
        });
        
        let memberNosString = memberNos.toString();
    	
        $.ajax({
            type: 'GET', 
            url: 'adDelete.me',  
            data: { memberNos: memberNo },  
            success: function(response) {
            },
            error: function(error) {
            }
        });
    }
	</script>
	<!-- aligm-mem에 있는 값과 체크박스 비교해서 같으면 체크? 
		${
	-->
</body>
</html>