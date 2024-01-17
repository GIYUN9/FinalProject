<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="././resources/css/chat.css">
</head>
<body>
   <header>
        <div class="cr-left">
            <img class="prev-menu" src="./resources/icon/left-arrow.png" onclick="prevAction()" >
            <span class="ct-name">&nbsp;&nbsp;${memName}</span> 
            <div class="ct-info">
                <span> &nbsp;평균&nbsp;</span>
                <span class="ct-time">6시간&nbsp;</span>
                <span>이내 응답</span>
            </div>
        </div>
        <div class="cr-right">
            <button class="btn-tr">거래하기</button>
            <button class="btn-rv">리뷰작성</button>
        </div>
    </header>
    <div class="chat-area">
		<c:forEach var="msg" items="${msgList}">
			<c:choose>
				<c:when test="${msg.senderNo eq loginUser.memberNo}">
					<div class="box2">
			        	<div class="chatbox-right">
							${msg.msgCo}
			                <div class="chat-time-right-load">
					             <script>
				                    var timestamp = new Date('${msg.createDate}');
				                    var formattedTime = new Intl.DateTimeFormat('ko-KR', {
				                        hour: 'numeric',
				                        minute: 'numeric',
				                        hour12: true  // 12시간 형식 사용
				                    }).format(timestamp);
				                    document.write(formattedTime);
				                </script>
			                </div>
			                <div class="chat-count-right-load">안읽음</div>
			            </div>
					</div>	
				</c:when>
				<c:otherwise>
					<div class="box">
			        	<div class="chatbox">
							${msg.msgCo}
			                <div class="chat-time">
					             <script>
				                    var timestamp = new Date('${msg.createDate}');
				                    var formattedTime = new Intl.DateTimeFormat('ko-KR', {
				                        hour: 'numeric',
				                        minute: 'numeric',
				                        hour12: true  // 12시간 형식 사용
				                    }).format(timestamp);
				                    document.write(formattedTime);
				                </script>
			                </div>
			                <div class="chat-count">안읽음</div>
			            </div>
					</div>	
				</c:otherwise>				
			</c:choose>
		</c:forEach>
        <div class="cr-time">2024년 1월 04일 목요일</div>
    </div>

    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
    
	    <footer class="cr-ft">
	        <button class="send-btn2"></button>
	        <input class="text-area" id="type-text" type="text" name="msgCo">
	        <button type="submit" class="send-btn" id="msg-btn" onclick="sendMsg();">전송</button>
	        <input type="text" name="target" style="display:none">
	    </footer>
    
    <script>
    	//뒤로 가기 키
        function prevAction(){
        	location.href = 'chatRoom.ch';
        }
        
        //socket연결 요청
        const socket = new WebSocket("ws://localhost:5555/finalProject/chat");

        //socket연결 성공 시
        socket.onopen = function(){
            console.log("웹소켓 연결 ok...");
        }

        //socket연결 끊어졌을 시 
        socket.onclose = function(){
            console.log("웹소켓 끊어짐...");
        }

        //socket연결 실패했을 시 
        socket.onerror = function(){
            console.log("웹소켓 연결 실패...");
            alert("웹 소켓 연결 실패");
        }


        //socket연결로 부터 데이터가 도착했을때
        //서버로부터 데이터가 도착했을 때
        socket.onmessage = function(ev){
        	const receive = JSON.parse(ev.data);
			
            console.log("chat.jsp" + ev.data);
            //msgContainer.innerHTML += (ev.data + "<br>");
                     
            // 새로운 메시지를 담을 div 엘리먼트 생성
            const newMessageDiv = document.createElement('div');
            newMessageDiv.className = 'chatbox';

            // 텍스트 내용을 담을 span 엘리먼트 생성
            const textOutputSpan = document.createElement('span');
            textOutputSpan.className = 'text-output';
            textOutputSpan.textContent = receive.msgCo;

            // 시간을 나타낼 div 엘리먼트 생성
            const chatTimeDiv = document.createElement('div');
            chatTimeDiv.className = 'chat-time';
            //const timestamp = new Date().toLocaleDateString();
            const receiveCreateDate = receive.createDate;
            const dateObject = new Date(receiveCreateDate);

            const options = {
            		  hour: 'numeric',
            		  minute: 'numeric',
            		  hour12: true
            		};
            		const formattedTimestamp = new Intl.DateTimeFormat('ko-KR', options).format(dateObject);

            chatTimeDiv.textContent = formattedTimestamp;
            

            // '안읽음'을 나타낼 div 엘리먼트 생성
            const chatCountDiv = document.createElement('div');
            chatCountDiv.className = 'chat-count';
            chatCountDiv.textContent = '안읽음';

            // 생성한 엘리먼트들을 조립
            newMessageDiv.appendChild(textOutputSpan);
            newMessageDiv.appendChild(chatTimeDiv);
            newMessageDiv.appendChild(chatCountDiv);

            const chatArea = document.querySelector(".chat-area");
            chatArea.appendChild(newMessageDiv);            
            
        }
	
        function sendMsg(){
        	
        	const msgCoValue = document.querySelector("input[name=msgCo]").value
        	
            if (!msgCoValue || msgCoValue.trim() === "") {
                return;
            }
        	
        	const msgData = {
        			message : msgCoValue,
        			target : document.querySelector("input[name=target]").value
        	}

            const messageBox2 = document.createElement("div");
            messageBox2.className = "box2";

            const chatboxRight = document.createElement("div");
            chatboxRight.className = "chatbox-right";
            chatboxRight.textContent = document.querySelector("input[name=msgCo]").value;

            const chatTimeRight = document.createElement("div");
            chatTimeRight.className = "chat-time-right";
            const timestamp = new Date().toLocaleDateString();
            
            const options = {
            		  hour: 'numeric',
            		  minute: 'numeric',
            		  hour12: true
            		};
            		const formattedTimestamp = new Intl.DateTimeFormat('ko-KR', options).format(new Date());
            		
            chatTimeRight.textContent = formattedTimestamp;

            const chatCountRight = document.createElement("div");
            chatCountRight.className = "chat-count-right";
            chatCountRight.textContent = "안읽음";

            messageBox2.appendChild(chatboxRight);
            chatboxRight.appendChild(chatTimeRight);
            chatboxRight.appendChild(chatCountRight);

        	socket.send(JSON.stringify(msgData)); //소켓에 str 텍스트 보내기
            
            const chatArea = document.querySelector(".chat-area");
            chatArea.appendChild(messageBox2);
        	
            document.querySelector("input[name=msgCo]").value = ""; //텍스트 입력칸 비우기
        }

        $("#type-text").on("keypress", function(ev) {
            if (ev.keyCode === 13) {
                sendMsg();
            }
        });
        
    </script>
</body> 
</html>