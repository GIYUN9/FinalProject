<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String contextPath = request.getContextPath();
%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<style>
	*,
	*::before,
	*::after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	}
	body{
		background: url('././resources/image/main.png') no-repeat center center fixed; 
  		background-size: cover;		
	}
    .hd-left-section{
        margin-left: 10px;
        font-size: 15px;
        font-weight: bold;
        color: white;
    }
    .hd-right-section{
        margin-right: 10px;
        font-size: 15px;
        font-weight: bold;  
        color: white;
    }
    .hd-searchbar{
        width: 500px;
        height: 36px;
        border-radius: 45px;
        border: 1px solid rgba(226, 226, 226, 0.4);
    }
    .hd-left-section{
        padding-left: 10px;
        display: flex;
    }
    .hd-right-section{
        display: flex;
        padding-right: 10px;
    }
    .hd-hu{
        padding-right: 10px;
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    .hd-hm{
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    .hd-re{
        padding-left: 10px;
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    .hd-login{
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    ::placeholder{
        padding-left: 10px;
    }
    header{
        width: 100%;
        height: 55px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        top: 0;
        z-index: 199;    
    }
    .logowh{
        width: 60px;
        margin-right: 20px;
        cursor: pointer;
    }
    .logowh1{
        width: 60px;
        margin-left: 20px;
    }
    .hd-middle-section{
    	display: flex;
    	align-items: center;
    	margin-right: 40px;
    }
    .myPageSideBar:hover{
        color: white;
    }
    a:hover{
        color: rgb(0, 199, 174);
        text-decoration: none;
    }

    /*    
        login 합본
    */
    .modal-content{
        margin: 80px 0px 0px 0px;
        width: 600px;
        height: 500px;
    }

    .modal-header{
        text-align: center;
        font-weight: bold;
        margin: 20px;
    }

    .modal-title{
        text-align: center;
        font-weight: bold;
       
    }

    .modal-body {
        position: relative;
        -webkit-box-flex: 1;
        -ms-flex: 1 1 auto;
        flex: 1 1 auto;
        padding: 1rem;
        margin: 20px 60px;
    }

    .login-email-btn {
        color: white;
        background-color: rgb(3, 199, 90);
        border: none;
        width: 300px;
        height: 40px;
        font-weight: bold;
        margin-bottom: 10px;
        border-radius: 4px;
        cursor: pointer;
    }

    .login-kakao-btn {
        color: black;
        background-color: rgb(250, 225, 0);
        border: none;
        width: 300px;
        height: 40px;
        font-weight: bold;
        border-radius: 4px;
        cursor: pointer;
    }
    .l-ver-line{
        width: 1px;
        height: 13px;
        margin-left: 10px;
        border: 1px solid rgb(224, 224, 224);
        margin-right: 10px;
    }
    .l-align{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        margin-bottom: 20px;
    }
    .l-email-input{
        width: 300px;
        height: 40px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 4px;
        margin-bottom: 20px;
    }
    .l-pwd-input{
        width: 300px;
        height: 40px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 4px;
        margin-bottom: 20px;
    }
    .l-text{
        margin-bottom: 10px;
        font-weight: bold;
    }
    .l-text1{
        margin-bottom: 10px;
        font-weight: bold;
        margin-top: 35px;
    }
    .loginSearch{
        font-size: 12px;
    }
    .btn-area{
        margin-top: 10px;
    }
    .close-btn-login{
        width: 10px;
        right: -60px;
        position: absolute;
        cursor: pointer;
        top: 0px;
    }
    
    /*
    회원가입
    */
    .modal-content{
        margin: 80px 0px 0px -30px;
        width: 594px;
        margin-top: 60px;
    }

    .modal-header{
    text-align: center;
    font-weight: bold;
    margin: 20px;
    }

    .modal-title{
    text-align: center;
    font-weight: bold;
    }

    .modal-body{
        margin: 20px 80px;
    }

    .login-btn {
        color: black;
        background-color: yellow;
        border: none;
        width: 100%;
    }

    .emailSend-btn{
        color: #fff;
        background-color: rgb(0, 199, 174);
        border: none;
        width: 100%;
    }

    .sign-up-btn{
        color: #fff;
        background-color: rgb(0, 199, 174);
        border: none;
        width: 100%;
        height: 40px;
        border-radius: 4px;
        margin-top: 30px;
        cursor: pointer;
    }
    .as-re{
        color: red;
    }
    .en-input{
        border: 1px solid rgba(96, 96, 96, 0.5);;
        border-radius: 8px;
        height: 45px;
        width: 400px;
    }
    .en-input3{
        border: 1px solid rgba(96, 96, 96, 0.5);;
        border-radius: 8px;
        height: 45px;
        width: 400px;
    }
    .cb-agree-all{
        padding-bottom: 15px;
        border-bottom: 2px solid rgba(96, 96, 96, 0.5);
    }

    /*
    부트스트랩
    */
    .dd-img{
        width: 20px;
        height: 20px;
    }
    .dropdown{
        position : relative;
        display : inline-block;
        margin-left: 10px;
        width: max-content;
    }

    .dropdown-content{
        /* /* display : none;
        position : absolute;
        z-index : 1; /*다른 요소들보다 앞에 배치
        width: max-content; 
        opacity: 0; /* 초기 상태는 투명 
        display: block;
        position: absolute;
        z-index: 1;
        width: max-content;
        transition: opacity 0.3s ease; /* 트랜지션 속성 설정 (시간, 타이밍 함수) 
        margin-top: 3px;
        margin-bottom: 3px; */

        opacity: 0;
        display: block;
        position: absolute;
        z-index: 1;
        width: max-content;
        transition: opacity 0.3s ease;
        margin-top: 5px;
        margin-bottom: 5px;
        line-height: 1.7;
        background: #00000038;
        padding: 10px;
        border-radius: 8px;
        left: -10px;
    }

    .dropdown-content a{
        display : block;
    }

    .dropdown:hover .dropdown-content {
        /* display: block; */
        opacity: 1; /* 호버 시 투명도 1로 변경 */
    }
    /* 이메일버튼 css */
    #em-btn{
        background-color: white;
    	height: 45px;
    	font-size: 14px;
        border: 1px solid rgba(231, 229, 229, 0.6);
    	border-radius: 8px;
    	cursor: pointer;
        width: 74px;
    }
    #em-btn:hover{
        background-color: #f0f0f0;
    }
    
    #em-btn1{
        background-color: #f0f0f0;
    	height: 45px;
    	font-size: 14px;
        border: 1px solid rgba(231, 229, 229, 0.6);
    	border-radius: 8px;
    	cursor: pointer;
        width: 74px;
    }
    #em-btn1:hover{
        background-color: white;
    }
    #em-btn2{
        background-color: #f0f0f0;
    	height: 45px;
    	font-size: 14px;
        border: 1px solid rgba(231, 229, 229, 0.6);
    	border-radius: 8px;
    	cursor: pointer;
        width: 74px;
    }
    #em-btn2:hover{
        background-color: white;
    }

    /*password Find*/
    .input-email{
        width: 360px;
        height: 40px;
        border: 1px solid rgba(231, 229, 229, 0.6);
        border-radius: 5px;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .pf-text{
        color: rgb(127, 127, 127);
        margin-top: 10px;
        margin-bottom: 30px;
        font-size: 14px;
    }
    .pf-div{
        align-items: center;
        justify-content: center;
        width: 462px;
        height: 312px;
        display: flex;
        flex-direction: column;
    }

    .emailSend-btn{
        color: #fff;
        background-color: rgb(0, 199, 174);
        border: none;
        width: 360px;
        height: 40px;
        border-radius: 5px;
    }
    .modal-body{
        border-radius: 13px;
    .en-input2{
        border: 1px solid rgba(96, 96, 96, 0.5);;
        border-radius: 8px;
        height: 45px;
        width: 400px;
    }

    .number-btn{
        display: none;
    }

    .en-input2::-webkit-outer-spin-button,
    .en-input2::-webkit-inner-spin-button {
    -webkit-appearance: none;
    }

    .view-check{
        display: none;
    }
</style>
</head>
<body>
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
    <c:choose>
        <c:when test="${empty loginUser}">
            <header>
                <div class="hd-left-section">
                    <a class="hd-hu" onclick="javascript:btn('로그인 해주세요')">도와줄게요</a>
                    <a class="hd-hm" onclick="javascript:btn('로그인 해주세요')">도와주세요</a>  
                </div>    
                <div class="hd-middle-section">
                    <img class="logowh" src="././resources/image/logowh.png" onclick="redirectToHome()">
                    <input class="hd-searchbar" onkeyup="if(window.event.keyCode==13){loginPlz()}" placeholder="검색"></input>        
                    <img class="logowh1" src="">
                </div>
                <div class="hd-right-section">
                    <a class="hd-login" data-toggle="modal" data-target="#myModal">로그인</a>
                    <a class="hd-re" data-toggle="modal" data-target="#myModal1">회원가입</a>
                </div>
            </header>
        </c:when>
        <c:otherwise>
            <header>
                <div class="hd-left-section">
                    <a class="hd-hu" onclick="helpU()">도와줄게요</a>
                    <a class="hd-hm" onclick="needHelp()">도와주세요</a>  
                </div>    
                <div class="hd-middle-section">
                    <img class="logowh" src="././resources/image/logowh.png" onclick="redirectToHome()">
                    <input class="hd-searchbar" name="searchKey" onkeyup="if(window.event.keyCode==13){find()}" placeholder="검색"></input>        
                    <img class="logowh1" src="">
                </div>
                <div class="hd-right-section">
                    <a class="hd-login" onclick="logout()" >로그아웃</a>
                    <div class="dropdown">
                        <span class="dropbtn">
                             ${loginUser.memberName }님                           
                            <img class="dd-img" src="././resources/icon/down-arrow.png" alt="">
                        </span>
                        <div class="dropdown-content">
                            <a href="userInfo.me" style="color: white;">마이페이지</a>
                            <a href="list.co" style="color: white;">커뮤니티</a>
                            <a href="ch.at" style="color: white;">채팅</a>
                            <a href="#" style="color: white;">미정</a>
                        </div>
                    </div> 
                </div>
            </header>
        </c:otherwise>
    </c:choose>
    <!-- 첫번째 모달 -->
    <div class="modal" id="myModal" >
        <div class="modal-dialog">
            <div class="modal-content" style="height: 100%;">
                <div class="modal-body" >
                    <form action="login.me" name = "loginForm" method="post" onsubmit="return loginCheck();">
                        <button style="border: none; background-color: transparent;">
                            <img class="close-btn-login" class="close-btn-login" src="././resources/icon/close.png" onclick="aa()" >
                        </button>
                        <!--입력하면 값 넘어갈 수 있게끔-->
                        <h2 class="modal-title" style="text-align: center; font-weight: bold; margin: 0 auto;">Login</h2>
                        <div class="l-text1" style="font-weight: bold;">
                            이메일
                        </div>
                        <input class="l-email-input" name="memberEmail" type="text" style="width: 100%;" placeholder="example@poomasi.com" >
                        <div class="l-text" style="font-weight: bold;">
                            비밀번호
                        </div>
                        <input class="l-pwd-input" name="memberPwd" type="password" style="width: 100%;" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요">
                        <div class="l-align">
                            <a class="loginSearch" href="#" style="color: black;" data-toggle="modal" data-target="#myModal3"> 비밀번호 찾기</a>
                            <div class="l-ver-line"></div>
                            <a class="loginSearch" href="#" style="color: black;" data-toggle="modal" data-target="#myModal1"> 회원가입</a>
                        </div>
                        <div class="btn-area">
                            <button type="submit" class="login-email-btn" style="width: 100%;"> 
                                이메일 로그인
                            </button>
                        </div>
                    </form>
                    <hr>
             <%
			    String clientId = "iU8vhFIDgKoTvZNQ5yiC";//애플리케이션 클라이언트 아이디값";
			    String redirectURI = URLEncoder.encode("http://localhost:5555/finalProject/callback", "UTF-8");
			    SecureRandom random = new SecureRandom();
			    String state = new BigInteger(130, random).toString();
			    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
			    apiURL += "&client_id=" + clientId;
			    apiURL += "&redirect_uri=" + redirectURI;
			    apiURL += "&state=" + state;
			    session.setAttribute("state", state);
			 %>
  <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
                </div>
            </div>
        </div>
    </div>
    <!-- 2번째 모달 -->
    <div class="modal" id="myModal1" >
        <div class="modal-dialog">
            <h4 class="modal-title" style="text-align: center; color: white; font-weight: bold; margin: 0 auto; margin-top: 60px; margin-bottom: -60px;">
                품앗이에 오신걸 환영합니다
            </h4>
            <div class="modal-content" style="height: 100%;">
                <div class="modal-body" >
                    <form action="insert.me" method="post" name="joinForm" onsubmit="return join();">
                        <div>
                            <p>
                                이름
                                <span class="as-re">*</span>
                            </p>
                            <p>
                                <input class="en-input" id="memberName" name ="memberName" type="text" placeholder="이름(실명)을 입력해주세요">
                            </p>
                            <p>
                                이메일
                                <span class="as-re">*</span>
                            </p>
                            <p style="display: flex;">
                                <input class="en-input3" id="memberEmail" name ="memberEmail" type="text" placeholder="example@poomasi.com" style="margin-right: 5px;">
                                <button id="em-btn1" type="button" onclick="emailSendNo()">인증</button>
                            </p>
                            <p class="number-btn">
                                <input class="en-input2" id="checkNo" type="number" style="margin-right: 5px;" placeholder="인증번호 6자리를 3분이내 입력해주세요.">
                                <button type="button" id="em-btn2" onclick="randomNumberCheck()">확인</button>
                            </p>
                            <p>
                                비밀번호
                                <span class="as-re">*</span>
                            </p>
                            <p>
                                <input class="en-input" id="memPwd1" name ="memberPwd" type="password" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요" readonly="readonly">
                            </p>
                            <p>
                                비밀번호확인
                                <span class="as-re">*</span>
                            </p>
                            <p>
                                <input class="en-input" id="memPwd2" name ="memberPwd2" type="password" placeholder="올바르게 입력해주세요" readonly="readonly">
                            </p>
                            <p>
                                관심사 선택
                                <span class="as-re">*</span>
                            </p>
                            <div class="insert-category">	            
                                <select name="all-category" id ="in-category">
                                    <option name = "music" value="music">음악</option>
                                    <option name = "cook" value="cook">요리</option>
                                    <option name = "health" value="health">운동</option>
                                </select>
                                <br>
                            </div>
                            <div class ="">
                                <br> 
                                <p>
                                    휴대폰번호
                                    <span class="as-re">*</span>
	                            </p>                            	                           
                                <p>
                                    <input type="tel" class="form-control" id="phone" placeholder="010-0000-0000" name="phone"> <br>
                                	<button type="button" id="sendBtn" onclick="phoneCheck()">인증 번호 발송</button>
                                </p>             
                                <p class="view-check">
                                	<input type="number" class="form-control" id="numCheck" placeholder="6자리 인증번호를 입력해주세요" name="numCheck"> <br>
                                	<button type="button" id="checkBtn" onclick="numberCheck()">인증하기</button>
                                </p>
                                <label for=""> &nbsp; 성별 : </label> &nbsp;&nbsp;
                                <input type="radio" id="Male" value="M" name="memberGender" checked>
                                <label for="Male">남자</label> &nbsp;&nbsp;
                                <input type="radio" id="Female" value="F" name="memberGender">
                                <label for="Female">여자</label> &nbsp;&nbsp;
                            </div>                                 
                            <br>
                            <div class="cb-agree-all">
                                <input type="checkbox" name="selectall" value="selectall" onclick='selectAll(this)'>
                                전체 동의
                            </div>
                            <br>
                            <label>
                                <input type="checkbox" name="category" value="agree" onclick = "checkSelectAll()"> 
                                (필수) 이용약관 동의
                            </label>
                            <label>
                                <input type="checkbox" name="category" value="privateAgree" onclick = "checkSelectAll()"> 
                                (필수) 개인정보 수집 및 이용 동의
                            </label>
                            <label><input type="checkbox" name="category" value="ageagree" onclick = "checkSelectAll()">
                                    (필수) 14세 이상입니다
                            </label>                 
                            <button type="submit" id="submitBtn" class="sign-up-btn" disabled="disabled">회원가입</button>
                        </div>                 
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 55px;">
        <!-- redirect 이후에 알림 메시지를 출력할 부분 -->
        <div class="alert alert-success" style="display:none">
            ${successMsg}
        </div>
        <!-- 첫번째 모달 -->
        <div class="modal" id="myModal3" >
            <div class="modal-dialog">
                <h4 class="modal-title" style="text-align: center; font-weight: bold; margin-top: 70px; margin-bottom: -50px; color: white;">비밀번호 찾기</h4>
                <div class="modal-content" style="height: 400px; align-items: center;">
                <form action="sendmail.pwd" method="post">
                    <div class="pf-div">
                        <h5>가입한 이메일 주소를 입력해주세요</h5>
                        <input class="input-email" name="memberEmail" type="text" placeholder="example@poomasi.com">
                        <div class="pf-text">
                            가입하신 이메일 주소를 입력해주시면<br>
                            새로운 비밀번호를 설정 가능한 링크를 보내드립니다.
                        </div>
                        <button type="submit" class="emailSend-btn">이메일 전송하기</button> 
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	<script>

        function emailSend() {
            // 여기에 이메일 인증을 처리하는 코드 작성 필요
            // 이메일 인증 API를 사용 -> 그에 맞는 함수를 호출하거나 필요한 동작을 수행
        }

        function checkSelectAll()  {
        	  // 전체 체크박스
        	  const checkboxes 
        	    = document.querySelectorAll('input[name="category"]');
        	  // 선택된 체크박스
        	  const checked 
        	    = document.querySelectorAll('input[name="category"]:checked');
        	  // select all 체크박스
        	  const selectAll 
        	    = document.querySelector('input[name="selectall"]');
        	  
        	  if(checkboxes.length === checked.length)  {
        	    selectAll.checked = true;
        	  }else {
        	    selectAll.checked = false;
        	  }

        }
        
        function selectAll(selectAll)  {
        	  const checkboxes 
        	     = document.getElementsByName('category');
        	  
        	  checkboxes.forEach((checkbox) => {
        	    checkbox.checked = selectAll.checked
        	  })
        }
		
		
        
        $(document).ready(function(){
            $('.dropdown-toggle').dropdown();
        });

        //회원가입 버튼 시 조건 확인
        function join() {
            const joinForm = document.joinForm; 
            const memberEmail = joinForm.memberEmail;

            //이메일 아무것도 입력 안 했을 경우
            if(memberEmail.value == ""){
                alert("아이디를 입력하세요");
                memberEmail.focus();
                return false;
            }

            // 이메일 조건확인
            var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
            if(exptext.test(memberEmail.value) == false){
                alert("Email식이 올바르지 않습니다.");
                memberEmail.focus();
                return false;
            }
        
            const memberPwd = joinForm.memberPwd;
            const memberPwd2 = joinForm.memberPwd2;

             //비밀번호 입력 없을 경우
            if(memberPwd.value == ""){
                alert("비밀번호를 입력하세요");
                memberPwd.focus();
                return false;
            }

            //비밀번호 제약조건
            if(memberPwd.value.length < 8){
				alert("비밀번호 8자리 이상!");
				memberPwd.focus();
				return false;
            }

            //비밀번호 공백 있나 확인
            if(memberPwd.value.search(" ") != -1){
                alert("비밀번호는 공백을 포함할 수 없습니다.!");
                memberPwd.focus();
                return false;
            }

            //비밀번호 확인
            if(memberPwd2.value == ""){
                alert("비밀번호를 확인해주세요");
                memberPwd2.focus();
                return false;
            }

            //비밀번호 확인이 틀렸을 경우
            if(memberPwd.value != memberPwd2.value){
                alert("비밀번호를  다시 확인해주세요 일치하지 않습니다.");
                memberPwd.focus();
                return false;
            }

            //이름입력 안 했을 경우
            const memberName = joinForm.memberName;
            if(memberName.value == ""){
                alert("이름을 입력하세요");
                memberName.focus();
                return false;
            } 

            const phone = joinForm.phone;
            if(phone.value == ""){
                alert("휴대폰 번호를 입력하세요");
                phone.focus();
                return false;
            }
            return true;        
        }

        //로그인 시 제약조건
        function loginCheck(){
            const loginForm = document.loginForm;
            const memberEmail = loginForm.memberEmail;

             //이메일 아무것도 입력 안 했을 경우
             if(memberEmail.value == ""){
                alert("이메일을 입력하세요");
                memberEmail.focus();
                return false;
            }

            // 이메일 조건확인
            var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
            if(exptext.test(memberEmail.value) == false){
                alert("Email 방식이 올바르지 않습니다.");
                memberEmail.focus();
                return false;
            }

            const memberPwd = loginForm.memberPwd;
            
             //비밀번호 입력 없을 경우
            if(memberPwd.value == ""){
                alert("비밀번호를 입력하세요");
                memberPwd.focus();
                return false;
            }

            	//비밀번호 제약조건
          //if(memberPwd.value.length < 8){
        //        alert("비밀번호 8자리 이상!");
          //      memberPwd.focus();
           //     return false;
          //  }

        }
        $(document).ready(function(){
            // #myModal3이 표시될 때
            $('#myModal3').on('show.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'none');
            });

            // #myModal3이 숨겨질 때
            $('#myModal3').on('hidden.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'block');
            });

            // #myModal1이 표시될 때
            $('#myModal1').on('show.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'none');
            });

            // #myModal1이 숨겨질 때
            $('#myModal1').on('hidden.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'block');
            });
        });
        
        function aa() {
            $('#modal').modal('hide');
        }

		function redirectToHome() {  // 클릭 시 리다이렉션을 수행할 URL을 지정합니다.
		  var redirectUrl = '<%=request.getContextPath()%>/'; 
		  window.location.href = redirectUrl;
		}
		function logout() {
			location.href = "logout.me"
		}
		function myPage() {
			location.href = "userInfo.me"
		}
		function needHelp() {
			location.href = "helpmeList.bo"
		}
		function helpU() {
			location.href = "helpList.bo"
		}
		function btn(){
		    alert('로그인 후 사용 가능합니다.');
		}
		
		function find(){
            const keyWord = document.querySelector("input[name='searchKey']").value;
            console.log(keyWord);
            location.href = "find.bo?keyWord=" + keyWord;
        }

        function loginPlz(){
            alert('로그인 후 사용 가능합니다.');
        }
        
        function emailSendNo(){
        	const numberBtn = document.querySelector(".number-btn");
            numberBtn.style.display = "flex";

            $.ajax({
                url: "emailSendNo.me",
                type: "POST",
                data: {
                    authEmail : document.querySelector('#memberEmail').value
                },
                success: function(res) {
                    console.log('이메일 인증번호 발송 성공')
                    const memberEmailInput = document.querySelector(".en-input3");
                    // input 태그를 리드온리로 설정
                    memberEmailInput.readOnly = true;
                    
                },
                error: function() {
                    console.log("이메일 인증번호 발송 실패");
                }
            });
        }

        function randomNumberCheck(){
            $.ajax({
                url: "randomNumberCheck.me",
                type: "POST",
                data: {
                    checkNo : document.querySelector('#checkNo').value,
                    authEmail : document.querySelector('#memberEmail').value
                },
                success: function(res) {
                    var data = JSON.parse(res);
                    if (data.data === "NNNNY") {
                        alert("인증이 완료되었습니다.");
                        document.getElementById("checkNo").readOnly = true;
                        document.getElementById("memPwd1").readOnly = false;
                        document.getElementById("memPwd2").readOnly = false;
                    }
                },
                error: function() {
                    console.log("ERROR");
                }
            });
        }
        let nnn;
        function phoneCheck() {
			const phone = document.querySelector('#phone').value
            document.querySelector('#phone').readOnly = true;
            document.querySelector('#sendBtn').disabled = true;
            const view = document.querySelector('.view-check')
            view.style.display = "flex";
            console.log('눌림')
			$.ajax({
                type: "POST",
                url: "phoneCheck.me",
                data: {
                    "phone" : phone
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
        
        function numberCheck(){
            const number = document.querySelector('#numCheck').value
            if(number === nnn){
                alert("인증이 완료되었습니다.");
                document.querySelector('#numCheck').readOnly = true;
                document.querySelector('#checkBtn').disabled = true;
                document.querySelector('#submitBtn').disabled = false;
                submitBtn
            } else{
                alert("인증번호가 올바르지 않습니다.");
            }
        }
        
	</script>
</body>
</html>