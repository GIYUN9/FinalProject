<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
    body{
        background: rgba(197, 197, 197, 0.55);
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
    </style>
</head>
<body>
   <header>
        <div class="cr-left">
            <span class="ct-name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JF보컬코치</span> 
            <div class="ct-info">
                <span> &nbsp;평균&nbsp;</span>
                <span class="ct-time">6시간&nbsp;</span>
                <span>이내 응답</span>
            </div>
            
        </div>
        <div>
            <button class="btn-tr">거래하기</button>
            <button class="btn-rv">리뷰작성</button>
        </div>
    </header>
    <div class="cr-time">2023년 11월 27일 월요일</div>

</body>
</html>