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
    body{
        background: rgba(197, 197, 197, 0.55) no-repeat center center fixed;
        background-size: cover;		

    }
    header{
        background: white;
        width: 100%;
        height: 70px;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        position: fixed;
        top: 0;
        right: 0;
        z-index: 199;
    }
    .btn-tr{
        cursor: pointer;
        width: 140px;
        height: 37px;
        border: none;
        background-color: rgb(87, 212, 197);
        border-radius: 10px;
        color: white;
        font-size: 16px;
        font-weight: bolder;
    }
    .btn-rv{
        cursor: pointer;
        width: 140px;
        height: 37px;
        border: none;
        background-color: white;
        border: 1px solid rgb(155, 89, 182);
        border-radius: 10px;
        color: rgb(52, 152, 219);
        font-size: 16px;
        font-weight: bolder;
    }
    .ct-name{
        font-weight: bolder;
        font-size: 16px;
    }
    .cr-left{
        display: flex;
    }
    .cr-right{
        padding-right: 20px;
    }
    .ct-info{
        font-size: 11px;
        color: rgb(147, 147, 150);
        align-items: center;
        display: flex;

    }
    .ct-time{
        color: rgb(155, 89, 182);
    }
    .cr-time{
        margin-top: 90px;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: rgb(147, 147, 150);
        font-weight: bold;
    }
    .cr-ft{
        background: rgb(255, 255, 255);
        width: 100%;
        height: 6%;
        position: fixed;
        bottom: 0;
        align-items: center;
        justify-content: center;
        display: flex;
        z-index: 1;
        border-top: 1px solid  rgba(96, 96, 96, 0.2);
        ;
        
    }
    .chat-header{
        position: relative;
        background-color: rgb(26, 188, 156);
        color: white;
        padding: 18px;
        width: 100%;
        margin-top: -10px;
        border-radius: 15px 15px 0px 0px;
        display: flex;
    }
    .chatbox {
        font-size: 14px;
        position:relative; 
        margin: 40px; 
        width: max-content;
        min-width: 40px;
        max-width: 40%;
        min-height: 40px;
        max-height: 100%;
        color: black; 
        border-radius: 15px; 
        background-color: white;
        display: flex;
        flex-direction: column;
        z-index: 1;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
    .chatbox:after {
        content:""; 
        position: absolute;
        top: 40%; 
        left: -15px; 
        border-right: 30px solid white; 
        border-top: 10px solid transparent; 
        border-bottom: 11px solid transparent;
        z-index: -1;
    }

    .chatbox-right {
        font-size: 14px;
        position:relative; 
        margin: 40px;
        padding: 10px; 
        padding-left: 12px;
        padding-right: 12px;
        min-width: 40px;
        width: max-content;
        max-width: 40%;
        min-height: 40px;        
        color: #000000; 
        border-radius: 15px; 
        background-color: #ffffff;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        z-index: 1;
    }
    .chatbox-right:after {
        content:""; 
        position: absolute;
        top: 40%; 
        left: 90%; 
        border-left: 30px solid #ffffff; 
        border-top: 10px solid transparent; 
        border-bottom: 11px solid transparent;
        z-index: -1;
    }

    .chatbot-chatbox {
        font-size: 14px;
        position:relative; 
        margin: 40px; 
        width: max-content;
        max-width: 40%;
        min-height: 40px;
        max-height: 100%;
        color: rgb(255, 255, 255); 
        border-radius: 15px; 
        background-color: rgb(26, 188, 156);;
        display: flex;
        flex-direction: column;
        z-index: 1;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
    .chatbot-chatbox:after {
        content:""; 
        position: absolute;
        top: 40%; 
        left: -15px; 
        border-right: 30px solid rgb(26, 188, 156);; 
        border-top: 10px solid transparent; 
        border-bottom: 11px solid transparent;
        z-index: -1;
    }

    .text-output{
        padding: 10px;
    }
    
    .box2{
        display: flex;
        align-items: flex-end;
        flex-direction: column;
    }
    .prev-menu{
        cursor: pointer;
        width: 40px;
        height: 25px;
        padding-left: 15px;
    }
    .send-btn{
        float: right;
        margin-right: 4%;
        width: 4%;
        height: 54%;
        color: white;
        font-size: 13px;
        font-weight: bold;
        background-color:  rgb(26, 212, 197);
        border: 1px solid rgba(96, 96, 96, 0.2);
        border-radius: 5px;
        margin-left: 20px;
        cursor: pointer;
        align-items: center;
        justify-content: center;
        text-align: center;
    }
    .send-btn2{
        float: right;
        margin-left: 4%;
        width: 4%;
        height: 54%;
        background-color: rgba(255, 255, 255, 0);
        border: none;
        margin-right: 20px;
        
    }
    .option-btn{
        width: 250px;
        height: 45px;
        padding: 5px;
        background: rgb(244, 244, 244);
        border: 1px solid rgba(96, 96, 96, 0.2);
        border-radius: 5px;
        cursor: pointer;
        margin: 5px 15px 3px 15px;
    }
    .text-area{
        display: flex;
        width: 70%;
        height: 60%;
        border-radius: 20px;
        border: 1px solid  rgba(96, 96, 96, 0.5);
        padding: 10px;
    }
    .chat-time{
        position: absolute;
        bottom: -22px;
        right: 3px;
        width: max-content;
        color: black;
    }
    .chat-time-right{
        position: absolute;
        left: 4px;
        bottom: -22px;
        width: max-content;
        color: black;
    }
    .chat-count{
        font-size: 12px;
        font-weight: bold;
        position: absolute;
        bottom: -22px;
        right: -40px;
        width: max-content;
        color: rgb(155, 89, 182);
    }
    .chat-count-right{
        font-size: 12px;
        font-weight: bold;
        position: absolute;
        left: -40px;
        bottom: -22px;
        width: max-content;
        color: rgb(155, 89, 182);
    }

    </style>
</head>
<body>
   <header>
        <div class="cr-left">
            <img class="prev-menu" src="./resources/icon/left-arrow.png" >
            <span class="ct-name">&nbsp;&nbsp;JF보컬코치</span> 
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
    <div class="cr-time">2023년 11월 27일 월요일</div>
    <div class="box">
        <div class="chatbot-chatbox">
            <span class="text-output">
                안녕하세요! 품앗이 상담 챗봇입니다. <br>
                원하시는 서비스를 선택해주시면 됩니다.
            </span>
        </div>
    </div>
    <div class="box">
            <div class="chatbox">
                <div class="chat-header"><h3>서비스 목록</h3></div>
                <br>
                <button class="option-btn">가격 안내를 받고 싶습니다.</button>
                <button class="option-btn">전화 상담 안내를 받습니다.</button>
                <button class="option-btn">예약을 하고 싶습니다.</button>
                <br>
                <div class="chat-time">오후 2:06</div>
            </div>
    </div>

    <div class="box2">
        <div class="chatbox-right">
            가격 안내를 받고 싶습니다.
            <div class="chat-time-right">오후 2:06</div>
            <div class="chat-count-right">안읽음</div>
        </div>
    </div>
    <div class="box">
        <div class="chatbot-chatbox">
            <span class="text-output">
                주 1회 1시간씩 한 달 총 15만원 <br>
                주 2회 40분씩 한 달 총 20만원입니다<br>
                카드 결제도 됩니다^^
            </span>
        </div>
    </div>

    <div class="box">
            <div class="chatbox">
                <div class="chat-header"><h3>제약 없이 마음놓고</h3></div>
                <br>
                <button class="option-btn">가격 안내를 받고 싶습니다.</button>
                <button class="option-btn">전화 상담 안내를 받습니다.</button>
                <button class="option-btn">예약을 하고 싶습니다.</button>
                <br>
                <div class="chat-time">오후 2:08</div>
            </div>
    </div>

    <div class="box2">
        <div class="chatbox-right">
            읽으시면 채팅 주세요
            <div class="chat-time-right">오후 2:09</div>
        </div>
    </div>

    <div class="cr-time">2024년 1월 04일 목요일</div>

    <div class="box">
        <div class="chatbox">
            <span class="text-output">ㅇㅇ</span>
        </div>
    </div>
    <div class="box">
        <div class="chatbox">
            <span class="text-output">ㅇ</span>
        </div>
    </div>
    <div class="box">
        <div class="chatbox">
            <span class="text-output">ㅇ</span>
            <div class="chat-time">오후 5:08</div>
            <div class="chat-count">안읽음</div>
        </div>
    </div>

    <div class="box2">
        <div class="chatbox-right">
            ㅇ
            <div class="chat-time-right">오후 2:09</div>
            <div class="chat-count-right">안읽음</div>
        </div>
    </div>
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>


    <footer class="cr-ft">
        <button class="send-btn2"></button>
        <input class="text-area" type="text">
        <button class="send-btn">전송</button>
    </footer>
</body> 
</html>