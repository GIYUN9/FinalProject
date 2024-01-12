<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="././resources/css/chattingRoom.css">
</head>
<body>
    <header class="chatRoom-header">
        <div class="chatRoom-top-bar">
            <img class="prev-menu" src="./resources/icon/left-arrow.png" onclick="prevAction()" >
            <div class="chatRoom-title">
                채팅 목록
            </div>
        </div>
    </header>
    <div>
        <div id="perChat">
            <div class="chatting-type"> 
                <p class="p-btn" onclick="personalChat()">개인 채팅</p>
                <p class="p-btn1" onclick="groupChat()">단체 채팅</p>
            </div>
            <div>
                <c:forEach var="cr" items="${crList}">
                    <div class="chatRoom-detail-align">
                        <div class="chatRoom-group"  data-memname="${cr.receiverName}" data-opmemname="${cr.senderName}" data-number="${cr.receiverNo}" data-opnumber="${cr.senderNo}" data-loginMemNumber="${loginUser.memberNo}" onclick="chat(this)">  
                            <div class="chatRoom-img-background">
                                <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
                            </div>
                            <div class="chatRoom-section">
                                <div class="chatRoom-info">
                                    <div class="chatRoom-detail-title">
										<c:choose>
										    <c:when test="${cr.senderName eq loginUser.memberName}">
										        ${cr.receiverName}
										    </c:when>
										    <c:when test="${cr.receiverName eq loginUser.memberName}">
										        ${cr.senderName}
										    </c:when>
										</c:choose>
                                        <div class="chatRoom-MemberCount">
                                        </div>
                                    </div>
                                    <div class="last-chat">
									     ${cr.lastMsg}
                                    </div>
                                </div>
                                <div class="chatRoom-lastChat-info">
                                    <div class="last-chatTime">
                                        <!-- ${cr.lastChatTime} -->
           					             <script>
						                    var timestamp = new Date('${cr.lastChatTime}');
						                    var formattedTime = new Intl.DateTimeFormat('ko-KR', {
						                        hour: 'numeric',
						                        minute: 'numeric',
						                        hour12: true  // 12시간 형식 사용
						                    }).format(timestamp);
						                    document.write(formattedTime);
						                </script>
                                    </div>
                                    <div class="last-chatCount">
										${cr.chatCount}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    
        <div id="groupChat" style="display: none;">
            <div class="chatting-type"> 
                <p class="p-btn" id="personalChat" onclick="personalChat()">개인 채팅</p>
                <p class="p-btn1" id="groupChat" onclick="groupChat()">단체 채팅</p>
            </div>
            <div>
				<div class="chatRoom-detail-align">
                    <div class="chatRoom-group">  
                        <div class="chatRoom-img-background">
                            <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
                        </div>
                        <div class="chatRoom-section">
                            <div class="chatRoom-info">
                                <div class="chatRoom-detail-title">
                                    보컬트레이너
                                    <div class="chatRoom-MemberCount">
                                        1
                                    </div>
                                </div>
                                <div class="last-chat">
                                    최근 대화 내용
                                </div>
                            </div>
                            <div class="chatRoom-lastChat-info">
                                <div class="last-chatTime">
                                    6:12
                                </div>
                                <div class="last-chatCount">
                                    2
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chatRoom-detail-align">
                    <div class="chatRoom-group">  
                        <div class="chatRoom-img-background">
                            <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
                        </div>
                        <div class="chatRoom-section">
                            <div class="chatRoom-info">
                                <div class="chatRoom-detail-title">
                                    KH 강사
                                    <div class="chatRoom-MemberCount">
                                        1
                                    </div>
                                </div>
                                <div class="last-chat">
                                    최근 대화 내용1111111111111111111111111111111111111111111111111111udhxdflkuhj
                                </div>
                            </div>
                            <div class="chatRoom-lastChat-info">
                                <div class="last-chatTime">
                                    6:12
                                </div>
                                <div class="last-chatCount">
                                    2
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chatRoom-detail-align">
                    <div class="chatRoom-group">  
                        <div class="chatRoom-img-background">
                            <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
                        </div>
                        <div class="chatRoom-section">
                            <div class="chatRoom-info">
                                <div class="chatRoom-detail-title">
                                    최창영 
                                    <div class="chatRoom-MemberCount">
                                        1
                                    </div>
                                </div>
                                <div class="last-chat">
                                    최근 대화 내용1111111111111111111111111111111111111111111111111111udhxdflkuhj
                                </div>
                            </div>
                            <div class="chatRoom-lastChat-info">
                                <div class="last-chatTime">
                                    6:12
                                </div>
                                <div class="last-chatCount">
                                    2
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="chatRoom-bottom-bar">
        <img class="chat-menu" src="././resources/icon/speech-bubble.png" alt="">
        <img class="chat-menu" style="width: 50px; height: 50px;" src="././resources/icon/house.png" alt="" onclick="redirectToHome()">
        <img class="chat-menu" src="././resources/icon/send.png" alt="">
    </div>

    <script>
    
    	
        function prevAction(){
            history.go(-3);
        }

        function personalChat() {
			const perChat = document.querySelectorAll('#perChat');
			perChat.forEach(element => {
				element.style.display = '';
			});

			const groupChat = document.querySelectorAll('#groupChat');
			groupChat.forEach(element => {
				element.style.display = 'none';
			});

			// .p-btn의 배경을 설정
			const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});

			// .p-btn1의 배경을 설정
			const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'transparent';
			});
		}

		function groupChat() {
			const perChat = document.querySelectorAll('#perChat');
			perChat.forEach(element => {
				element.style.display = 'none';
			});

			const groupChat = document.querySelectorAll('#groupChat');
			groupChat.forEach(element => {
				element.style.display = '';
			});

			// .p-btn1의 배경을 설정
			const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});

			// .p-btn의 배경을 설정
			const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'transparent';
			});
		}

        function redirectToHome() { 
		  var redirectUrl = '<%=request.getContextPath()%>/'; 
		  window.location.href = redirectUrl;
		}
		function chat(element) {
		    let memName = element.getAttribute('data-memname');
		    let encmemName = encodeURIComponent(memName);
		    let opmemName = element.getAttribute('data-opmemname');
		    let encopmemName = encodeURIComponent(opmemName);
		    let memNo = element.getAttribute('data-number');
		    let opmemNo = element.getAttribute('data-opnumber');
		    let loginUserMemberNo = element.getAttribute('data-loginMemNumber');
		  
		    // memNo와 loginUserMemberNo 비교 후에 조건에 따라 opmemNo 또는 memNo 설정
		    if (memNo === loginUserMemberNo) {
		        location.href = "chat.ch?memName=" + encopmemName + "&memNo=" + opmemNo;
		    } else {
		        location.href = "chat.ch?memName=" + encmemName + "&memNo=" + memNo;
		    }
		}


    </script>
</body>
</html>