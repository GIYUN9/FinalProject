<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *,
    *::before,
    *::after {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    }
    /*rgba(96, 177, 147, 0.7)*/
    body{
        background: rgba(68, 124, 125, 0.7) no-repeat center center fixed;
        background-size: cover;		
    }
    .chatRoom-top-bar{
        border-bottom: 1px solid rgba(96, 96, 96, 0.5);
        height: 55px;
        margin-bottom: 40px;
        display: flex;
        align-items: center;
        padding-left: 15px;
        background: white;
        position: fixed;
        z-index: 1;
        width: 100%;
    }
    .chatRoom-img{
        width: 150px;
        height: 150px;
        border-radius: 75px;
        padding: 15px;
    }
    .chatRoom-detail-align{
        display: flex;
        flex-direction: row;
        width: 100%;
        justify-content: center;
        margin-bottom: 25px;
        color: white;
    }
    .chatRoom-img-background{
        padding: 10px;
    }
    .chatRoom-info{
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        width: 600px;
        padding: 10px;
    }
    .chatRoom-lastChat-info{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-evenly;
        padding: 20px;
    }
    .chatRoom-section{
        display: flex;
        justify-content: space-evenly;
    }
    .chatRoom-title{
        font-weight: bold;
        font-size: 25px;
        margin-left: 10px;
    }
    .chatRoom-detail-title{
        color: black;
        font-size: 18px;
        font-weight: 600;
        display: flex;
        flex-direction: row;
    }
    .chatRoom-group{
        background: white;
        display: flex;
        border-radius: 8px;
        cursor: pointer;
    }
    .chatRoom-MemberCount{
        color: rgba(96, 96, 96, 0.9);
        margin-left: 7px;
    }
    .last-chat{
        white-space: nowrap; 
        overflow: hidden; 
        text-overflow: ellipsis; 
        color: rgba(96, 96, 96, 0.9);
    }
    .last-chatTime{
        margin-bottom: 50px;
        color: rgba(96, 96, 96, 0.9);
    }
    .last-chatCount{
        background: rgb(218, 76, 60);
        border-radius: 16px;
        height: 22px;
        width: 22px;
        align-items: center;
        text-align: center;
        display: flex;
        justify-content: center;  
        font-size: 12px;  
    }
    .chatRoom-header{
        height: 55px;
        margin-bottom: 35px;
    }
    .chatting-type{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        color: white ;
    }
    .p-btn {
        display: inline-block;
        margin-left: 8%;
        margin-right: 8%;
        margin-bottom: 1%;
        padding: 10px 11px;
        font-size: 14px;
        background: rgba(255, 255, 255, 0.22);
        border-radius: 8px;
        cursor: pointer;
        letter-spacing: -2px;
        font-weight: bolder;
    }
    .p-btn1 {
        display: inline-block;
        margin-left: 8%;
        margin-right: 8%;
        margin-bottom: 1%;
        padding: 10px 11px;
        font-size: 14px;
        background: rgba(255, 255, 255, 0.22);
        background-color: transparent;
        border-radius: 8px;
        cursor: pointer;
        letter-spacing: -2px;
        font-weight: bolder;
    }
    .prev-menu{
        cursor: pointer;
        width: 40px;
        height: 25px;
        padding-left: 15px;
    }
    .chatRoom-bottom-bar{
        border-top: 1px solid rgba(96, 96, 96, 0.5);
        height: 8%;
        background-color: white;
        width: 100%;
        display: flex;
        position: fixed;
        bottom: 0;
        align-items: center;
        justify-content: space-evenly;
    }
    .chat-menu{
        width: 65px;
        height: 65px;
        box-sizing: border-box;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        border-radius: 8px;
        margin-left: -15%;
        margin-right: -15%;
    }
</style>
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
                                    KH 파이널 
                                    <div class="chatRoom-MemberCount">
                                        4
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
                                    KH 파이널 
                                    <div class="chatRoom-MemberCount">
                                        4
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
                                    KH 파이널 
                                    <div class="chatRoom-MemberCount">
                                        4
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
            history.go(-1);
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

    </script>
</body>
</html>