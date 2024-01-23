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
<link rel="stylesheet" href="././resources/css/header.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="/finalProject/resources/js/header.js"></script>
<style>
    #checkResult{
        font-size: 13px;
    }

    #pwdCheck{
        font-size: 13px;
    }

    #pwdCon{
        font-size: 13px;
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
                            <a href="chatRoom.ch" style="color: white;">채팅</a>
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
                <div class="naver-btn">
                    <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
                </div>
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
                            <p style="display: flex; margin-bottom: 0px;" >
                                <input class="en-input3" id="memberEmail" name ="memberEmail" type="text" onkeyup="checkEmail()" placeholder="example@poomasi.com" style="margin-right: 5px;">
                                <button id="em-btn1" type="button" onclick="emailSendNo()">인증</button>  
                            </p>
                            <span id="checkResult"></span>

                            <p class="number-btn">
                                <input class="en-input2" id="checkNo" type="number" style="margin-right: 5px;" placeholder="인증번호 6자리를 3분이내 입력해주세요.">
                                <button type="button" id="em-btn2" onclick="randomNumberCheck()">확인</button>
                            </p>
                            <p style="margin-top: 1rem;">
                                비밀번호
                                <span class="as-re">*</span>
                            </p>
                            <p style="display: flex; margin-bottom: 0px;" >
                                <input class="en-input" id="memPwd1" name ="memberPwd" type="password" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요" readonly="readonly" onkeyup="passwordCheck()">
                            </p>
                            <span id = "pwdCheck"></span>
                            <br>
                            <p>
                                비밀번호확인
                                <span class="as-re">*</span>
                            </p>
                            <p style="display: flex; margin-bottom: 0px;" >
                                <input class="en-input" id="memPwd2" name ="memberPwd2" type="password" placeholder="올바르게 입력해주세요" readonly="readonly" onkeyup="pwdConfirm()">
                                
                            </p>
                            <span id = "pwdCon"></span>
                            <br>
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
                                <p style="display: flex;">
                                    <input type="tel" class="form-control" id="phone" placeholder="010-0000-0000" name="phone"
                                    style="
                                        border: 1px solid rgba(96, 96, 96, 0.5);
                                        border-radius: 8px;
                                        height: 45px;
                                        width: 400px;
                                        margin-right: 5px; 
                                    "
                                    > <br>
                                	<button type="button" id="sendBtn" onclick="phoneCheck()">인증</button>
                                </p>             
                                <p class="view-check" style="display: flex;">
                                	<input type="number" class="form-control" id="numCheck" placeholder="6자리 인증번호를 입력해주세요" name="numCheck"
                                    style="
                                        border: 1px solid rgba(96, 96, 96, 0.5);
                                        border-radius: 8px;
                                        height: 45px;
                                        width: 400px;
                                        margin-right: 5px;
                                    "       
                                    > <br>
                                	<button type="button" id="checkBtn" onclick="numberCheck()">확인</button>
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
		function redirectToHome() {  // 클릭 시 리다이렉션을 수행할 URL을 지정합니다.
		  var redirectUrl = '<%=request.getContextPath()%>/'; 
		  window.location.href = redirectUrl;
		}

        function checkEmail(){
            let memberEmail = document.getElementById("memberEmail");
            let checkResultSpan = document.getElementById("checkResult");
            let exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

            if(memberEmail.value ===""){
                checkResultSpan.innerHTML="<font color = green>이메일을 입력해주세요</font>";
                return;
            }

            if(exptext.test(memberEmail.value) == false){
                checkResultSpan.innerHTML="<font color = red>이메일 형식이 옳지 않습니다.</font>";
            }else{     
                let xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var jsonResponse = JSON.parse(xhr.responseText);
                        if (jsonResponse.status === "ok") {
                            checkResultSpan.innerHTML = "<font color='blue'>사용가능한 이메일입니다.</font>";
                        } else {
                            checkResultSpan.innerHTML = "<font color='red'>이미 가입된 이메일입니다.</font>";
                        }
                    }
                };
                xhr.open("get", "emailYNCheck.me?memberEmail="+memberEmail.value);
                xhr.send();
            }
        }

        function passwordCheck(){
            let memberPwd = document.getElementById("memPwd1");
            let pwdCheck = document.getElementById("pwdCheck");
            let memberPwd2 = document.getElementById("memPwd2");

            if(memberPwd.value === ""){
                pwdCheck.innerHTML="<font color = green>비밀번호를 입력해주세요</font>";
                return;
            }

            if(memberPwd.value.length < 8){
                pwdCheck.innerHTML="<font color = red>비밀번호를 8자리 이상 입력해주세요</font>";
				memberPwd.focus();
				return;
            }else{
                pwdCheck.innerHTML="<font color = blue>사용가능한 비밀번호입니다.</font>";
                memberPwd.focus();
				return;
            }
        }

        function pwdConfirm() {
            let memberPwd = document.getElementById("memPwd1");
            let pwdCon = document.getElementById("pwdCon");
            let memberPwd2 = document.getElementById("memPwd2");

            // 비밀번호 확인이 틀렸을 경우
            if (memberPwd.value !== memberPwd2.value) {
                pwdCon.innerHTML="<font color = red>비밀번호가 일치하지 않습니다.</font>";
            } else {
                pwdCon.innerHTML="<font color = blue>비밀번호가 일치합니다.</font>";
            }
        }

    </script>
</body>
</html>