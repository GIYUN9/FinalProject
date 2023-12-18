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
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
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
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">요청 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
            <c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me"  style="font-weight: bolder; 
			    background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 관리</a>
            <a class="myPageSideBar" href="viewReport.me">신고 내역</a>
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
 	let checkboxes = document.querySelectorAll('input[type="checkbox"]'); //모든 input 중 type 속성이 checkbox인 모든 요소를 선택
    let userInfo2Div = document.querySelector('.user-info2'); //클래스가 .user-info2인 요소 선택
    let cancelButton = document.querySelector('.ad-can'); // 클래스가 .ad-can인 요소 선택
    let tableRows = document.querySelectorAll('.ad-table tbody tr');// 클래스가 .ad-table이면서 tbody안의 tr인 요소를 선택

	
	let globalMemberNoList = []; //memberNo를 변수에 배열로 담음 
    $(document).ready(function() { //.ready 문서의 로딩이 완료되었을떄 그 안의 코드블록을 실행
    	addCheckBoxEvent();
    	displaySelectedMembers();
        $('#searchInput').on('keyup', function() {  //id가 #searchInput인 요소에서 keyup될때마다 함수를 실행
            let searchText = $(this).val().toLowerCase(); //searchText에 this(#searchInput)의 keyup된 값을 가져와서 대소문자 구분 없이 변환해서 담음
            console.log("온키업 텍스트:", searchText); // searchText 값을 콘솔에 출력
            drawMemberList(searchText); //drawMemberList()에 searchText를 매개변수로 전달
        });
    });	
    
    function addCheckBoxEvent(){ // 체크박스에 이벤트 리스너 추가	    
	    checkboxes.forEach(function(checkbox) {//checkboxes안의 checkbox에 대해 반복문을 실행함
	        checkbox.onchange = function(){ //체크박스의 값이 변경되었을 때 displaySelectedMembers() 실행
	        	 displaySelectedMembers();
	        }
	    });
	    cancelButton.onclick = function(){ // 취소 버튼 클릭 시
	    	userInfo2Div.innerHTML = ''; //userInfo2Div의 innerHTML에 있는 내용을 비움
	        checkboxes.forEach(function(checkbox) { //checkboxes(모든 체크박스)안의 checkbox를 반복
	            checkbox.checked = false; //checkbox의 checked를 false로 설정
	        });
	    }
    }
	
 	// 이미 추가된 정보인지 확인하는 함수
    function isUserNoAdded(userNo, userInfo2Div) { //userNo와, userInfo2Div를 매개변수로 받음
        let addedUserNos = Array.from(userInfo2Div.querySelectorAll('.upper-text')).map(span => span.innerText.replace('No. ', ''));
    	//querySelectorAll('.upper-text')) 클래스가 upper-text인 모든요소 선택 NodeList로 반환 
    	//.map(span => span.innerText.replace('No. ', '')); 선택된 요소에 대해 innertext로 텍스트를 가져오고 'No. '으로 시작하는 문자열에서 'No. '를 ''로 대체
		//map함수는 배열의 각 요소에 대해 주어진 함수를 한번씩 호출하고 함수를 호출한 결과를 모아서 새로운 배열을 생성함
		//Array.from(...): NodeList를 배열로 변환 NodeList가 배열이 아니기 떄문
    	return addedUserNos.includes(userNo); 
		//map으로 반환된 새로운 nodeList배열을 Array.from으로 배열로 변경하고  includes된 userNo를 반환
		//addedUserNos.includes(userNo);은 true또는 false값을 반환하며 true일 경우 표현식이 평가된 값을 반환하게됨
    }
    
    function displaySelectedMembers() {
    	console.log("displaySelectedMembers 호출")
        let memberNoList = []; //memberNo를 변수에 배열로 담음

        checkboxes.forEach(function(checkbox, index) { //checkboxes(모든 체크박스)안의 checkbox를 반복 
        	//index는 forEach함수의 특성상 배열의 각 요소에 함수를 한번 씩 실행하고
        	//현재 처리 중인 요소의 값, 인덱스, 배열 전체의 매개변수가 전달
            if (checkbox.checked) { //체크박스가 체크가 되어있다면 checked=true;
                let tds = checkbox.parentElement.parentElement.getElementsByTagName('td');  
                //getElementsByTagName는 유사배열 객체(length 속성을 가짐, 배열처럼 인덱스로 요소에 접근 가능)
                //tds라는 변수에 <input type="checkbox">의 부모요소(<td>)의 부모요소인 <tr>아래에 있는 td라는 지정된 태그 이름의 요소를 모두 가져옴
                let userNo = tds[1].innerText;  
                //let userNo의 tds[1]의 1번째인 (<td>${m.memberNo}</td>)에서 값을 가져옴 
                //0번쨰는 <td><input type=checkbox></td>                
                memberNoList.push(userNo); 
                //memberNoList에 userNo값을 추가함 
                //.push:배열에 새로운 요소를 추가하는 메서드 
                checkbox.checked = true; //체크박스의 checked를 true로 설정
                
                if (!isUserNoAdded(userNo, userInfo2Div)) { 
                	//!isUserNoAdded== addedUserNos.includes(userNo);가 false라면

	                let userType = tds[4].innerText; //tds의 [4] 인덱스에서 값을 가져옴 <c:when test="${m.memberPro == 1}">
	                let userName = tds[3].innerText; //tds의 [3] 인덱스에서 값을 가져옴  <td>${m.memberName}</td>
	                let userEmail = tds[2].innerText; //tds의 [2] 인덱스에서 값을 가져옴 <td>${m.memberEmail}</td>

	                // align-mem에 두 개의 div 추가
	                let alignMemDiv = document.createElement('div'); //div 생성
	                alignMemDiv.classList.add('align-mem'); //align-mem 클래스를 추가
	
	                // sel-mem 추가
	                let selMemDiv = document.createElement('div'); //div 생성
	                selMemDiv.classList.add('sel-mem');	//sel-mem 클래스 추가
	
	                let upperTextSpanSelMem = document.createElement('span'); //span 생성
	                upperTextSpanSelMem.classList.add('upper-text'); //upper-text클래스 추가
	                upperTextSpanSelMem.innerText = userType; //upperTextSpanSelMem에 let userType를 통해 값을 가져옴
	                selMemDiv.appendChild(upperTextSpanSelMem); //selMemDiv의 자식으로 upperTextSpanSelMem 추가
	
	                let lowerTextSpanSelMem = document.createElement('span'); //span 생성
	                lowerTextSpanSelMem.classList.add('lower-text'); //lower-text클래스 추가
	                lowerTextSpanSelMem.innerText = userName; //let userName에서 값 가져옴
	                selMemDiv.appendChild(lowerTextSpanSelMem); // selMem에 자식요소로 들어감
	
	                alignMemDiv.appendChild(selMemDiv); //align-mem에 selMem이 자식으로 들어감
	
	                // sel-mem2 추가
	                let selMem2Div = document.createElement('div'); //div 생성
	                selMem2Div.classList.add('sel-mem2'); //sel-mem2 클래스 추가
	
	                let upperTextSpanSelMem2 = document.createElement('span'); //span 생성
	                upperTextSpanSelMem2.classList.add('upper-text'); //upper-text 클래스 추가
	                upperTextSpanSelMem2.innerHTML = 'No. ' + '<span class="select-user-no">' + userNo + '</span>'; //해당 span에 innerHTML 태그와 userNo값과 텍스트를 추가
	                selMem2Div.appendChild(upperTextSpanSelMem2); //selMem2에 자식으로 들어감
	
	                let lowerTextSpanSelMem2 = document.createElement('span'); //span 생성
	                lowerTextSpanSelMem2.classList.add('lower-text'); // 클래스 추가
	                lowerTextSpanSelMem2.innerText = userEmail; //userEmail값 추가
	                selMem2Div.appendChild(lowerTextSpanSelMem2); //selMem2 자식
	
	                alignMemDiv.appendChild(selMem2Div); //align-Mem에 selMem2가 자식으로 들어감
	                userInfo2Div.appendChild(alignMemDiv); //user-info2Div에 alignMemDiv 자식 추가
	                
	                let selectUserNoValue = upperTextSpanSelMem2.querySelector('.select-user-no').innerText; 
	                // upperTextSpanSelMem2.innerHTML에 넣은 클래스 이름으로 선택된 요소(class="select-user-no")의 텍스트 내용을 가져와 저장함(userNo를 가져옴)
	                console.log('우측 선택된 유저 넘버:', selectUserNoValue);
                }
            }
        });
      
        let memberNoListString = memberNoList.toString(); //memberNoList를 String으로 변환해서 let memberNoListString에 담음
        //console.log('memberNoList 값:', memberNoList);
        //console.log('globalMemberNoList 값:', globalMemberNoList);
        //console.log('memberNoListString 값:', memberNoListString);
    }
    
    function drawMemberList(text){
        // AJAX를 사용하여 서버에 데이터 요청
        $.ajax({
            type: 'GET',
            url: 'src.me', // 서버 엔드포인트를 적절히 설정
            data: { searchText: text }, // 검색 텍스트를 서버에 전달
            success: function(data) {
                // 서버에서 받은 데이터를 사용하여 회원 목록을 다시 그림
                updateMemberTable(data); //서버에서 받은 데이터로 회원 목록을 다시 그리는 함수 
                addCheckBoxEvent(); //갱신된 회원 목록에(Ajax로 새로 그려진?) 있는 체크박스들에 이벤트 리스너를 추가
                displaySelectedMembers();//선택된 회원들을 userInfo2Div에 그려줌         
            },
            error: function(error) {
                console.error('멤버 데이터를 가져오지 못함 :', error);
            }
        });
    }
    
    function updateMemberTable(data) {
        // 서버에서 받은 데이터를 .each로 순회하면서 각 행을 업데이트
        $('#memberTable tbody').empty(); // 현재 tbody 내용을 비움 .empty(): 선택한 요소의 모든 자식요소 제거 (tbody 내부 모두 제거)

        $.each(data, function(index, member) {
            let newRow = '<tr>' +
                '<td><input type="checkbox"></td>' +
                '<td>' + member.memberNo + '</td>' +
                '<td>' + member.memberEmail + '</td>' +
                '<td>' + member.memberName + '</td>' +
                '<td>' + (member.memberPro === 1 ? '일반회원' : '') + '</td>' +
                '<td>' + member.enrollDate + '</td>' +
                '</tr>';
            $('#memberTable tbody').append(newRow);
            //tbody에 새로운 행(newRow)을 추가함 
        });
    }
    
    $(document).ready(function() {
        $('.select-user-no').each(function() { //돌면서 checkbox의 값이 ${}와 같다면 checked true 아니면 false설정
            if (checkbox.value == '${}') {
            	checkbox.checked = true;
            } else {
            	checkbox.checked = false;
            }
        });
    });

    function a() {
        let memberNos = []; //빈 배열 memberNos 생성

        $(".select-user-no").each(function(index, element) {
            // 클래스가 .select-user-no인 요소에 대해 반복 
            //index는 현재 반복의 인덱스 element는 현재 요소
            let memberNo = $(element).text();//각 현재 요소의 텍스트 내용을 가져와서 memberNo에 담음
            //text()는 jQuery에서 제공되며 선택한 요소의 텍스트 내용을 가져옴, 인자를 전달시 텍스트 내용을 변경할 수 도 있음. ex) text('example')시 text로 example이 담김
            memberNos.push(memberNo); //memberNos에 memberNo를 담음
            //push()는 배열의 끝에 하나 이상의 요소를 추가, 이 메서드는 변경된 배열의 길이를 반환.
            console.log("memberNo:", memberNo);
            console.log("memberNos:", memberNos);
        });
        
        let memberNosString = memberNos.toString(); 
        //memberNos 배열의 각 요소를 쉼표로 구분된 문자열로 변환 > 서버에서 문자열을 파싱해서 다시 배열로 사용
        //String[] memberNoArray = memberNos.split(",");
        console.log("memberNosString:", memberNosString); 
    	
        $.ajax({
            type: 'GET', //Get 타입 요청 메서드
            url: 'adDelete.me',  //서버 엔드 포인트
            data: { memberNos: memberNosString }, //  memberNos 서버에서 사용될 매개변수의 이름(key) memberNosString가 생성된 문자열 값(value)
            success: function(response) {
            },
            error: function(error) {
            }
        });
    }
	</script>
</body>
</html>