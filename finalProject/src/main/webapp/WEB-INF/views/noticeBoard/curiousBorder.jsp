<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판 궁금해요</title>

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
        height: 62%;
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
        margin: 220px 0px 0px 315px;
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
        width: 56px;
        height: 27px;
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
        width: 96%;
        margin-left: 11px;
        margin-top: 10px;
    }

    .arrow-img{
        width: 15px;
        height: 15px;
        float: right;
        margin-right: 10px;
        margin-top: 6px;
    }

    .border-one,  .border-two, .border-three{
        margin-left: 33px;
        line-height: 27px;
    }

    .community-big{
        padding-bottom: 120px;
    }
</style>

</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <div class="community-big">

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
                <span class="main-span1">궁금해요</span>
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
                        <div class="border-one">
                            <span class="community-p">궁금해요 교체/설치</span>
                            <h4>주방 조명 변경 가능한가요?</h4>
                            <p class="text1">주방 조명을 바꾸고 싶은데 교체가 가능할까요?</p>
                            <p class="text2">전국</p>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/good-icon.png" alt="좋아요아이콘" class="img">
                                <span>0</span>
                            </a>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/speech-bubble-icon.png" alt="말풍선아이콘" class="img">
                                <span>0</span>
                            </a>
                                <span class="time-span">방금 전</span>
                                <div class="line"></div>
                        </div> 
                </a>  
            </li>
        </ul>
            <hr class="line">
            
        <ul>
            <li class="main-list">
                <a href="" class="a-click">
                        <div class="border-two">
                            <span class="community-p">궁금해요 자동차 정비</span>
                            <h4>기름게이지 점검</h4>
                            <p class="text1">기름게이지가 갑자기 많이 떨어지는데 게이지 오류인가요?</p>
                            <p class="text2">강원도</p>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/good-icon.png" alt="좋아요아이콘" class="img">
                                <span>5</span>
                            </a>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/speech-bubble-icon.png" alt="말풍선아이콘" class="img">
                                <span>15</span>
                            </a>
                                <span class="time-span">30분 전</span>
                                <div class="line"></div>
                            </div> 
                </a>  
            </li>
        </ul>
            <hr class="line">
            
        <ul>
            <li class="main-list">
                <a href="" class="a-click">
                        <div class="border-three">
                            <span class="community-p">궁금해요 스마트기기</span>
                            <h4>태블릿 화면이 깨져요</h4>
                            <p class="text1">화면이 흐릿하고 잘 보이지가 않아요</p>
                            <p class="text2">경기도</p>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/good-icon.png" alt="좋아요아이콘" class="img">
                                <span>12</span>
                            </a>
                            <a href="" class="a-click">
                                <img src="/finalProject/resources/borderImage/speech-bubble-icon.png" alt="말풍선아이콘" class="img">
                                <span>7</span>
                            </a>
                                <span class="time-span">1시간 전</span>
                                <div class="line"></div>
                            </div> 
                </a>  
            </li>
        </ul>
            <hr class="line">
               
        </div>

    </div>

    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>