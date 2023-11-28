<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    * {
        list-style: none; 
        text-decoration: none;
        border-collapse: collapse;
        margin: 0px;
        padding: 0px;
        color: black;
    }
    
    .nav{
        height: 70px;
        display: flex;
        align-items: center;
        margin-top: 70px;
    }

    .nav-center-items{
        display: flex;
        margin: auto;
    }

    .nav-item{
        font-size: 18px;
        width: 105px;
        text-align: center;
        font-weight: bold;
    }

    .category{
        width: 100px; 
        text-align: center;  
    }

    .category-item {
        margin-top: 5px;
        
    }

    .category-item > a{
        margin-top: 100px;
        font-weight: bold; 
        color: white;
        font-size: 12px;
    }

    
    
    .main{
        display: flex;    
        width: 900px;  
        border: 1px;
        margin: 0 auto;
    }

   
    .content{
        width: 1100px;
        height: auto;
        border: 1px;
        margin: 0 auto;
        text-align: center;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 10px;
        

    }

    .content-item{
        display: inline-block;
        width: 180px;
        height: 205px;
        border: 1px ;     
        border-radius: 10px;
        margin-top: 10px;
        margin-right: 10px;
        background-color: rgba(83, 82, 82, 0.65)
        

    }

    .content-img{
    	height: 115px;
    	padding-top: 10px;
        width: 150px;
        text-align: center;
        
    }
    
    .content-item-title{
    	padding-top: 10px;
        font-size: 13px;
        font-weight: bold;
        color: white;
    }

    .content-item-price{
        font-size: 14px;
        font-weight: bold;
        text-align: right;
        padding-top: 20px;
        padding-right: 5px;
        color: white;
    }
    
    .content-head{
        display: flex;
        justify-content: space-between;
    }

    #head-count{
        text-align: left;
    }

    #head-category{
        text-align: right;
    }
   
  	.back-ground{
  		width : 100%;
  		background-color:rgba(60, 59, 59, 0.27);
  	}
    
</style>
</head>
<body>
<%@ include file = "../common/header.jsp"%>
   <div class = "nav">
        <div class = "nav-center-items">
            <div class = "nav-item"><a href="#">전체보기</a></div>
            <div class = "nav-item"><a href="#">&#60;</a></div>
            <div class = "nav-item"><a href="#">취미,레슨</a></div>
            <div class = "nav-item"><a href="#">디자인</a></div>
            <div class = "nav-item"><a href="#">마케팅</a></div>
            <div class = "nav-item"><a href="#">운동</a></div>
            <div class = "nav-item"><a href="#">게임</a></div>
            <div class = "nav-item"><a href="#">미술</a></div>
            <div class = "nav-item"><a href="#">&#62;</a></div>
        </div>
   </div>
   <div class = "back-ground">
        <div class="main">
            <div class = "category" style="display: inline-block;">
                <div class = "category-item"><a href="#">광고 홍보</a></div>
                <div class = "category-item"><a href="#">드론 촬영</a></div>
                <div class = "category-item"><a href="#">홍보 사진</a></div>
                <div class = "category-item"><a href="#">사진 보정</a></div>
            </div>
            <div class = "content">
                <div class = "content-head">
                   <div id = "head-count">1번</div>
                   <div id = "head-category">
                   		<li><a href="#">전체보기</a>
                            <ul>
                                <li><a href = "#">인기순</a></li>
                                <li><a href = "#">조회순</a></li>
                                <li><a href = "#">별점순</a></li>
                            </ul>

                        </li>
                   </div>

                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMTdfNTgg%2FMDAxNjk3NTM5MTYyMDU1.2FTbuIwYW-lYUnwwsOymlHEzSOePqb98wZL9dmdJQ44g.9OmmX2wPWyBWzDkmuySWmSj3gIDYOiH40xw5mXgGJmsg.JPEG.suninefreeimage%2F_Z5A4454.jpg&type=sc960_832">
                        <div class = "content-item-title">어울리는 머리 찾아드려요!</div>
                        <div class = "content-item-price">20000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                         <img  class = "content-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMTdfNTgg%2FMDAxNjk3NTM5MTYyMDU1.2FTbuIwYW-lYUnwwsOymlHEzSOePqb98wZL9dmdJQ44g.9OmmX2wPWyBWzDkmuySWmSj3gIDYOiH40xw5mXgGJmsg.JPEG.suninefreeimage%2F_Z5A4454.jpg&type=sc960_832">
                        <div class = "content-item-title">연기학원 연기 알려드려요^^</div>
                        <div class = "content-item-price">50000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                         <img  class = "content-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMTdfNTgg%2FMDAxNjk3NTM5MTYyMDU1.2FTbuIwYW-lYUnwwsOymlHEzSOePqb98wZL9dmdJQ44g.9OmmX2wPWyBWzDkmuySWmSj3gIDYOiH40xw5mXgGJmsg.JPEG.suninefreeimage%2F_Z5A4454.jpg&type=sc960_832">
                        <div class = "content-item-title">뮤지컬 배워봐요</div>
                        <div class = "content-item-price">15000원</div>
                    </a>
                </div>
                
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">노래도 배워봐요</div>
                        <div class = "content-item-price">5000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">자바배워봐요</div>
                        <div class = "content-item-price">200원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">스프링 배워봐요</div>
                        <div class = "content-item-price">300원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">추위에 떨어봐요</div>
                        <div class = "content-item-price">90000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                       <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">과자도 먹어봐요</div>
                        <div class = "content-item-price">500원</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
   
<%@ include file = "../common/footer.jsp"%>            
</body>
</html>