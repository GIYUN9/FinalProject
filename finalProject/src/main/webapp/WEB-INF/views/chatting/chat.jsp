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
        background: rgb(0, 194, 177);
        width: 100%;
        height: 55px;
        position: fixed;
        bottom: 0
        ;
        
    }
    .chatbox {
        position:relative; 
        margin: 40px; 
        padding: 10px; 
        width: max-content;
        max-width: 40%;
        min-height: 50px;
        max-height: 100%;
        color: #000000; 
        border-radius: 15px; 
        background-color: #ffffff;
    }
    .chatbox:after {
        content:""; 
        position: absolute;
        top: 40%; 
        left: -20px; 
        border-right: 20px solid #ffffff; 
        border-top: 10px solid transparent; 
        border-bottom: 10px solid transparent;
    }

    .chatbox-right {
        position:relative; 
        margin: 40px;
        left: 85%; 
        padding: 10px; 
        width: 200px; 
        min-height: 50px;        
        color: #000000; 
        border-radius: 15px; 
        background-color: #ffffff;
    }
    .chatbox-right:after {
        content:""; 
        position: absolute;
        top: 40%; 
        left: 100%; 
        border-left: 20px solid #ffffff; 
        border-top: 10px solid transparent; 
        border-bottom: 10px solid transparent;
    }


    .prev-menu{
        width: 25px;
        height: 25px;
        padding-left: 15px;
    }
    .send-btn{
        float: right;
        margin-right: 4%;
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
        <div class="chatbox">가나다</div>
    </div>

    <div class="box">
        <div class="chatbox-right">가나다</div>
    </div>
    
    <div class="box">
        <div class="chatbox">max-width인데 왜 기본으로 먹을까
        </div>
    </div>

    <div class="box">
        <div class="chatbox">가나다</div>
    </div>
    <div class="box">
        <div class="chatbox-right">asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasddsaasdsdasaddsa</div>
    </div>
    <div class="box">
        <div class="chatbox">ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ</div>
    </div>
    <div class="box">
        <div class="chatbox">11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111</div>
    </div>
    <div class="box">
        <div class="chatbox">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</div>
    </div>
    <div class="box">
        <div class="chatbox">가나다kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkㅏkkkkkkkkkkkkkkk</div>
    </div>
    <div class="box">
        <div class="chatbox">가</div>
    </div>
    <div class="box">
        <div class="chatbox">가</div>
    </div>
    <div class="box">
        <div class="chatbox">가나</div>
    </div>
    <div class="box">
        <div class="chatbox">가나다</div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


    <footer class="cr-ft">
        <input type="text">
        <button class="send-btn">전송</button>
    </footer>
</body>
</html>