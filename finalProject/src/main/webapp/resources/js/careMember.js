const cateMemberValue = {
    selectMemberList: [],
}

$(document).ready(function () { //.ready 문서의 로딩이 완료되었을떄 그 안의 코드블록을 실행
    addCheckBoxEvent();
    $('#searchInput').on('keyup', function () {  //id가 #searchInput인 요소에서 keyup될때마다 함수를 실행
        let searchText = $(this).val().toLowerCase(); //searchText에 this(#searchInput)의 keyup된 값을 가져와서 대소문자 구분 없이 변환해서 담음
        console.log("온키업 텍스트:", searchText); // searchText 값을 콘솔에 출력
        drawMemberList(searchText); //drawMemberList()에 searchText를 매개변수로 전달
    });
});

function addCheckBoxEvent() { // 체크박스에 이벤트 리스너 추가	    
    let checkBoxes = document.querySelectorAll('input[type="checkbox"]'); //고객리스트 체크박스 가져오기
    let cancelButton = document.querySelector('.ad-can'); //취소버튼 가져오기

    checkBoxes.forEach(function (checkbox) {//checkboxes안의 checkbox에 대해 반복문을 실행함
        checkbox.onclick = function (ev) { //체크박스의 값이 변경되었을 때 displaySelectedMembers() 실행
            const rowData = transMemberData(ev.target.parentNode.parentNode);
            
            if(ev.target.checked)
                cateMemberValue.selectMemberList.push(rowData);
            else {
                cateMemberValue.selectMemberList = cateMemberValue.selectMemberList.filter(function(data){ return rowData.memberNo !== data.memberNo; });
            }
            console.log(cateMemberValue.selectMemberList)


            displaySelectedMembers();
        }
    });

    cancelButton.onclick = function () { // 취소 버튼 클릭 시
        let userInfo2Div = document.querySelector('.user-info2'); //선택된 고객들이 보이는 div
        userInfo2Div.innerHTML = ''; //userInfo2Div의 innerHTML에 있는 내용을 비움
        $(userInfo2Div).empty();
        cateMemberValue.selectMemberList = [];
        checkBoxes.forEach(function (checkbox) { //checkboxes(모든 체크박스)안의 checkbox를 반복
            checkbox.checked = false; //checkbox의 checked를 false로 설정
        });
    }
}

//row에서 멤버정보 추출
function transMemberData(row){
    console.log(row.getElementsByTagName('td'))
    //고객데이터를 담은 한줄에서 td추출
    const tds = row.getElementsByTagName('td');
    return {
        memberNo: tds[1].innerText,
        memberEmail: tds[2].innerText,
        memberName: tds[3].innerText,
        memberPro: tds[4].innerText,
        enrollDate: tds[5].innerText,
    }
}

// 이미 추가된 정보인지 확인하는 함수
function isUserNoAdded(userNo) { //userNo와, userInfo2Div를 매개변수로 받음
    let userInfo2Div = document.querySelector('.user-info2'); //클래스가 .user-info2인 요소 선택

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
    // 체크박스를 가져와서 체크박스가 체크가 되어있다면 userInfo2div 안에 div를 그림
     
    let selectedMember = cateMemberValue.selectMemberList //선택된 고객 정보 배열
    //에서 체크박스는 어떻게 불러오는가?  
    //>> 배열 값에는 이미 체크가 되어있는지 아닌지가 필터링 되어있음
    // 즉 여기에 나온 값을 가져와서 그리면 됨


    let userInfo2Div = document.querySelector('.user-info2'); //클래스가 .user-info2인 요소 선택
    $(userInfo2Div).empty();

    console.log(selectedMember)
    selectedMember.forEach(function (member) { //selectedMember(모든 체크박스)안의 checkbox를 반복 
        //index는 forEach함수의 특성상 배열의 각 요소에 함수를 한번 씩 실행하고
        //현재 처리 중인 요소의 값, 인덱스, 배열 전체의 매개변수가 전달
       
        if (member != null) { //체크박스가 체크가 되어있다면 checked=true;

            let userNo = member.memberNo;

            // let tds = checkbox.parentElement.parentElement.getElementsByTagName('td');
            // //getElementsByTagName는 유사배열 객체(length 속성을 가짐, 배열처럼 인덱스로 요소에 접근 가능)
            // //tds라는 변수에 <input type="checkbox">의 부모요소(<td>)의 부모요소인 <tr>아래에 있는 td라는 지정된 태그 이름의 요소를 모두 가져옴

            //let userNo의 tds[1]의 1번째인 에서 값을 가져옴 
            //0번쨰는 <td><input type=checkbox></td>                
            //memberNoList.push(userNo);
            //memberNoList에 userNo값을 추가함 
            //.push:배열에 새로운 요소를 추가하는 메서드 
            //checkbox.checked = true; //체크박스의 checked를 true로 설정

         
                //!isUserNoAdded== addedUserNos.includes(userNo);가 false라면

            let userType = member.memberPro; //tds의 [4] 인덱스에서 값을 가져옴 
            let userName = member.memberName; //tds의 [3] 인덱스에서 값을 가져옴 
            let userEmail = member.memberEmail; //tds의 [2] 인덱스에서 값을 가져옴 

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
           
        }
    });
}

function drawMemberList(text) {
    // AJAX를 사용하여 서버에 데이터 요청
    $.ajax({
        type: 'GET',
        url: 'src.me', // 서버 엔드포인트를 적절히 설정
        data: { searchText: text }, // 검색 텍스트를 서버에 전달
        success: function (data) {
            // 서버에서 받은 데이터를 사용하여 회원 목록을 다시 그림
            updateMemberTable(data); //서버에서 받은 데이터로 회원 목록을 다시 그리는 함수 
            addCheckBoxEvent(); //갱신된 회원 목록에(Ajax로 새로 그려진?) 있는 체크박스들에 이벤트 리스너를 추가
            displaySelectedMembers();//선택된 회원들을 userInfo2Div에 그려줌         
        },
        error: function (error) {
            console.error('멤버 데이터를 가져오지 못함 :', error);
        }
    });
}

function updateMemberTable(data) {
    // 서버에서 받은 데이터를 .each로 순회하면서 각 행을 업데이트
    $('#memberTable tbody').empty(); // 현재 tbody 내용을 비움 .empty(): 선택한 요소의 모든 자식요소 제거 (tbody 내부 모두 제거)

    $.each(data, function (index, member) {

        const checked = cateMemberValue.selectMemberList.some(function(m){
            return Number(m.memberNo) === Number(member.memberNo)
        });
      
        let newRow = '<tr>' +
            '<td><input type="checkbox" '+ (checked ? "checked" : "") +'></td>' +
            '<td>' + member.memberNo + '</td>' +
            '<td>' + member.memberEmail + '</td>' +
            '<td>' + member.memberName + '</td>' +
            '<td>' + (member.status === 'Y' ? '일반회원' : '탈퇴회원') + '</td>' +
            '<td>' + member.enrollDate + '</td>' +
            '</tr>';
        $('#memberTable tbody').append(newRow);
        //tbody에 새로운 행(newRow)을 추가함 
    });
}


function resign() {
    let memberNos = []; //빈 배열 memberNos 생성

    $(".select-user-no").each(function (index, element) {
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
        success: function (response) {
            alert('탈퇴처리 되었습니다.');
            window.location.href = 'careMem.me';
        },
        error: function (error) {
            alert('탈퇴처리 실패하였습니다.');
        }
    });
}