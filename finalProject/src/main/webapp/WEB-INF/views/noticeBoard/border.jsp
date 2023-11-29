<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판 전체</title>

<style>
   .list{
        list-style: none;
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        font-size: 17px;
        color: white;
        margin: 15px;
    }

    .community-list {
        list-style: none;
        font-size: 25px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
    }

    .main{
        background-color: white;
        width: 700px;
        max-height: 50%;
        position: absolute;
        left: 50%;
        margin-left: -322px;
        top: 50%;
        margin-top: -260px;
        border-radius: 10px;
    }

    .community-ul{
        width: 170px;
        height: 500px;
        margin: 206px 10px 10px 260px;
        color: white;
    }

    .time-span{
        float: right;
        margin-right: 25px;
        font-size: 13px;
    }

    .community-btn{
        border-radius: 12px;
        background-color: white;
        border-width: thin;
        margin: 3px; 
    }

    .text1{
        font-size: 14px;
    }

    .text2{
        font-size: 12px;
    }

    .community-p{
        font-size: 10px;
    }

    .main-span1{
        font-weight: bold;
        font-size: 14px;
        margin-left: 15px;
    }

    .main-span2{
       font-size: 12px; 
    }

    .main-list{
        list-style: none;
    }

    .main-a{
        padding: 13px 0px 0px 20px;
    }

    .main-b{
        padding: 13px 0px 0px 30px;
    }

    .a-click {
        text-decoration-line: none;
        color: black;
    }

    .img {
        width: 0.8em;
        height: auto;
    }

    .line {
        width: 95%;
    }

    .arrow-img{
        width: 15px;
        height: 15px;
        float: right;
        margin-right: 10px;
        margin-top: 6px;
    }
</style>

</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>
    
    <ul class="community-ul">
        <li class="community-list">커뮤니티</li>
        <li class="list"><button class="list-btn">전체</button></li>
        <li class="list"><button class="list-btn">궁금해요</button></li>
        <li class="list"><button class="list-btn">얼마예요</button></li>
        <li class="list"><button class="list-btn">함께해요</button></li>
        <li class="list"><button class="list-btn">공지사항</button></li>
    </ul>
 
    <div class="main">
        <div class="main-a">
            <span class="main-span1">공지</span>
            <span class="main-span2">품앗이 가이드라인</span>
            <img src="/finalProject/resources/borderImage/right-arrow-icon.png" alt="오른쪽 화살표" class="arrow-img">
        </div>
        
        <div class="main-b">
            <button class="community-btn">서비스</button>
            <button class="community-btn">지역</button>
        </div>
      
    <ul>
        <li class="main-list">
            <a href="" class="a-click">
                <p class="community-p">궁금해요 수학 과외</p>
                    <div>
                        <h4>수학과외 비용 궁금해요!</h4>
                        <p class="text1">주2일만 과외 받을건데 비용이 궁금해요!</p>
                        <p class="text2">전국</p>
                        <div>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/good-icon.png" alt="좋아요아이콘" class="img">
                                <span>0</span>
                            </a>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/speech-bubble-icon.png" alt="말풍선아이콘" class="img">
                                <span>0</span>
                            </a>
                            <span class="time-span">방금 전</span>
                        </div>
                    </div>
            </a>
        </li>
    </ul>
        <hr class="line">

    <ul>
        <li class="main-list">
            <a href="" class="a-click">
                <p class="community-p">얼마예요 테니스 레슨</p>
                    <div>
                        <h4>테니스 배우고 싶이요!</h4>
                        <p class="text1">테니스 레슨 비용이 궁금해요</p>
                        <p class="text2">서울</p>
                        <a href="" class="a-click">
                            <img src="/finalProject/resources/borderImage/good-icon.png" alt="좋아요아이콘" class="img">
                            <span>12</span>
                        </a>
                        <a href="" class="a-click">
                            <img src="/finalProject/resources/borderImage/speech-bubble-icon.png" alt="말풍선아이콘" class="img">
                            <span>7</span>
                        </a>
                        <span class="time-span">30분 전</span>
                        <div class="line"></div>
                    </div> 
            </a>  
        </li>
    </ul>
        <hr class="line">
           
    </div>
</body>
</html>