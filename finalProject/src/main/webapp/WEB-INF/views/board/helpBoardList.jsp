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
        font-size: 12px;
        text-align: center; 
        font-weight: bold; 
    }

    .category-item{
        margin-top: 5px;
    }

    
    
    .main{
        display: flex;    
        width: 900px;
        background-color: azure;
        border: 1px;
        margin: 0 auto;
    }

   
    .content{
        width: 1100px;
        height: auto;
        background-color: gray;
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
    	
    }
    
</style>
</head>
<body>
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
   <div class = "back-ground" style="width: 100%; background-color: gray;">
        <div class="main">
            <div class = "category" style="display: inline-block;">
                <div class = "category-item">광고 홍보</div>
                <div class = "category-item">드론 촬영</div>
                <div class = "category-item">홍보 사진</div>
                <div class = "category-item">사진 보정</div>
            </div>
            <div class = "content">
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMTdfNTgg%2FMDAxNjk3NTM5MTYyMDU1.2FTbuIwYW-lYUnwwsOymlHEzSOePqb98wZL9dmdJQ44g.9OmmX2wPWyBWzDkmuySWmSj3gIDYOiH40xw5mXgGJmsg.JPEG.suninefreeimage%2F_Z5A4454.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                         <img  class = "content-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMTdfNTgg%2FMDAxNjk3NTM5MTYyMDU1.2FTbuIwYW-lYUnwwsOymlHEzSOePqb98wZL9dmdJQ44g.9OmmX2wPWyBWzDkmuySWmSj3gIDYOiH40xw5mXgGJmsg.JPEG.suninefreeimage%2F_Z5A4454.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                         <img  class = "content-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMTdfNTgg%2FMDAxNjk3NTM5MTYyMDU1.2FTbuIwYW-lYUnwwsOymlHEzSOePqb98wZL9dmdJQ44g.9OmmX2wPWyBWzDkmuySWmSj3gIDYOiH40xw5mXgGJmsg.JPEG.suninefreeimage%2F_Z5A4454.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                       <img class = "content-img" src = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp996406%2F2023%2F09%2F202309004664_800.jpg&type=sc960_832">
                        <div class = "content-item-title">제목1</div>
                        <div class = "content-item-price">가격1</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
   
            
</body>
</html>