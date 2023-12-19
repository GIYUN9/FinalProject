<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .chatRoom-top-bar{
        border-bottom: 1px solid black;
        height: 55px;
        margin-bottom: 40px;
        display: flex;
        align-items: center;
        padding-left: 15px;
    }
    .chatRoom-bottom-bar img.chat-menu{
        box-sizing: border-box;
        padding: 10px;
        width: 20px;
        height: 20px;
    }
    .chatRoom-img{
        width: 150px;
        height: 150px;
        border-radius: 75px;
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
    .chatRoom-lastChat{
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
    }
    .chatRoom-detail-title{
        font-size: 18px;
        font-weight: 600;
    }
    .chatRoom-group{
        background: rgba(60, 59, 59, 0.27);
        display: flex;
        border-radius: 8px;
    }
</style>
</head>
<body>
    <div class="chatRoom-top-bar">
        <div class="chatRoom-title">
            채팅 목록
        </div>
    </div>



    <div class="chatRoom-area">

        <div class="chatRoom-detail-align">
            <div class="chatRoom-group">  
                <div class="chatRoom-img-background">
                    <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
                </div>
                <div class="chatRoom-section">
                    <div class="chatRoom-info">
                        <div class="chatRoom-detail-title">
                            KH 파이널 4(인원)
                        </div>
                        <div>
                            최근 대화 내용1111111111111111111111111111111111111111111111111111udhxdflkuhj
                        </div>
                    </div>
                    <div class="chatRoom-lastChat">
                        <div>
                            6:12
                        </div>
                        <div>
                            2
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="chatRoom-detail-align">
            <div class="chatRoom-img-background">
                <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
            </div>
            <div class="chatRoom-section">
                <div class="chatRoom-info">
                    <div class="chatRoom-detail-title">
                        KH 파이널 4(인원)
                    </div>
                    <div>
                        최근 대화 내용1111111111111111111111111111111111111111111111111111udhxdflkuhj
                    </div>
                </div>
                <div class="chatRoom-lastChat">
                    <div>
                        6:12
                    </div>
                    <div>
                        2
                    </div>
                </div>
            </div>
        </div>
        <div class="chatRoom-detail-align">
            <div class="chatRoom-img-background">
                <img class="chatRoom-img" src="././resources/image/축구.jpg" alt="">
            </div>
            <div class="chatRoom-section">
                <div class="chatRoom-info">
                    <div class="chatRoom-detail-title">
                        KH 파이널 4(인원)
                    </div>
                    <div>
                        최근 대화 내용1111111111111111111111111111111111111111111111111111udhxdflkuhj
                    </div>
                </div>
                <div class="chatRoom-lastChat">
                    <div>
                        6:12
                    </div>
                    <div>
                        2
                    </div>
                </div>
            </div>
        </div>



    </div>



    <div class="chatRoom-bottom-bar">
        <img class="chat-menu" src="././resources/icon/glass-icon.png" alt="">
        <img class="chat-menu" src="" alt="">
        <img class="chat-menu" src="" alt="">
        <img class="chat-menu" src="" alt="">
        <img class="chat-menu" src="" alt="">
    </div>
</body>
</html>