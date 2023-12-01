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
        height: 40px;
        
        padding-left: 70px;
        text-align: center;
        font-weight: bold;
        color: white;
    }
    

    /* a::after{
        display:block;
        content: '';
        border-bottom: solid 3px #ffffff;  
        transform: scaleX(0);  
        transition: transform 250ms ease-in-out;
    }

    .nav:hover::after{
        transform: scaleX(1);
    } */

    a:after {
        display:block;
        content: '';
        border-bottom: solid 2px #ffffff;  
        transform: scaleX(0);  
        transition: transform 250ms ease-in-out;
     }
    a:hover:after { transform: scaleX(1); }

    .nav-item > a{
        color: white;
    }

    .category{
        width: 70px; 
        text-align: center;  
    }

    .category-item {
        margin-top: 20px;   
    }

    .category-item > a{
        margin-top: 150px;
        font-weight: bold; 
        color: white;
        font-size: 14px;
    }

    
    
    .main{
        display: flex;    
        width: 1300px;  
        height: 700px;
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
        width: 240px;
        height: 270px;
        border: 1px ;     
        border-radius: 10px;
        margin-top: 20px;
        margin-right: 15px;
        background-color: rgba(83, 82, 82, 0.65)

    }

    .content-img{
    	height: 150px;
    	padding-top: 15px;
        width: 200px;
        text-align: center;
        
    }
    
    .content-item-title{
    	padding-top: 10px;
        font-size: 15px;
        font-weight: bold;
        color: white;
    }

    .content-item-price{
        font-size: 14px;
        font-weight: bold;
        text-align: right;
        padding-top: 40px;
        padding-right: 15px;
        color: white;
    }

   
    
    .content-head{
        display: flex;
        justify-content: space-between;
    }

   

    #head-count{
        text-align: right;
        color: white;
        font-size: 13px;
        padding-left: 40px;
        font-weight: bold;
    }
   
  	.back-ground{
  		width : 100%;
  		background-color:rgba(60, 59, 59, 0.27);
        position: relative;
  	}
  	

    #head-category{
        padding-right: 50px;
    }

    #category-item {
        color: white;
        font-size: 14px;
        border: none;
        background-color: transparent; 
    }

    .aaa{
        width: 95px;
        padding: 9px;
        border-radius: 8px;
        color: white;
    }
    

    a{
        color: white;
        
    }

    #category-item > option{
        background-color: rgba(83, 82, 82, 0.65);
    }

    .user-modal{
        background-color: #ffffff;
        width: 500px;
        height: 600px;
        position: absolute;
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-left: 600px;
    }

    .modal-user-img{
        width: 50px;
        float: left;
        margin-left: 30px;
    }
   .user-modal{
        display: table-cell;
        vertical-align: middle;
        border-radius: 10px;

   }

   .modal-title {
        font-size: 20px;
        width: 100px;
        height: 21px;
        font-weight: bold;
        margin: auto;
   }

   .modal-count-detail{
        float: right;
        margin-right: 10px;
        font-weight: bold;
   }

   .modal-msg{
        margin-left: 5px;
        width: 90%;
        height: 150px;
        border: 1px solid rgb(0, 199, 174);
        margin: auto;
        border-radius: 10px;
   }
    
    .modal-career > div{
        font-size: 10px;
        font-weight: bold;
        padding-top: 3px;
        padding-bottom: 3px;
        margin-left: 30px;
    }

    .modal-count{
        margin-left: 30px;
    }
    .modal-btn{
        width: 90%;
        height: 50px;
        border: none;
        margin: auto;
        display: block;
        background-color: rgb(0, 199, 174);
        color: #ffffff;
        border-radius: 10px;
    }

    .modal-btn:hover{
        cursor: pointer;
        opacity: 0.6;
    }

    .close-btn{
        margin-right: 10px;
        float: right;
    }

    .close-btn:hover{
        cursor: pointer;
    }

    .modal-user-item > div {
        margin-left: 90px;
    }
</style>
</head>
<body>
<%@ include file = "../common/header.jsp"%>
   <div class = "nav">
        <div class = "nav-center-items">
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">전체보기</a>
                </div>
            </div>
            <div class = "nav-item"><a href="#">&#60;</a></div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">취미,레슨</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">디자인</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">마케팅</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">운동</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">게임</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#">미술</a>
                </div>
            </div>
           
            <div class = "nav-item"><a href="#">&#62;</a></div>
        </div>
   </div>
   <div class = "back-ground">
   		<div class = "user-modal">
            <div class="close-btn">X</div>
            <br>
            <div class="modal-title">보컬레슨</div>
            <br>
            <div class="modal-user">
                <img  class = "modal-user-img" src="././resources/image/기타녀.jpg" alt="기타녀">
                <div class = "modal-user-item">
                    <div>보컬코치</div>
                    <div>별별별 4.0</div>   
                </div>
            </div>
            <div class="modal-career">
                <br>
                <hr>
                <div>트로피 이미지 / 89회 고용됨</div>
                <div>위치 이미지 / 서울특별시 송파구</div>
                <div>경력 이미지 / 경력 13년</div>
                <hr>
            </div>
            <div class = "modal-count">
                <br>
                <text>견적</text>
                <br><br><br>
                <text>예상금액</text>
                <br>
                <div class ="modal-count-detail">
                    시간 당  50000원
                </div>
                <br><br>
            </div>
            <hr>
            <br>
            <div class ="modal-msg">
                이 메시지는 악마의 메시지입니다. 다들 조심하세요 진짜
            </div>
            <br>
            
        
            <button class = "modal-btn">채팅하기</button>

        </div>
        <div class="main">
            <div class = "category" style="display: inline-block;">
                <div class = "category-item"><a href="#">광고 홍보</a></div>
                <div class = "category-item"><a href="#">드론 촬영</a></div>
                <div class = "category-item"><a href="#">홍보 사진</a></div>
                <div class = "category-item"><a href="#">사진 보정</a></div>     
            </div>
            <div class = "content">
                <div class = "content-head">
                   <div id = "head-count">총 1063개의 서비스</div>
                   <div id = "head-category">
                        <form>
                            <select name="" id="category-item">
                                <option class = "category-item-list" value="date" selected>날짜순</option>
                                <option class = "category-item-list" value="interest">인기순</option>
                                <option class = "category-item-list" value="check">조회순</option>
                            </select>
                        </form>
                   </div>
                </div>
                <div class = "content-item">
                    <a href ="././WEB-INF/views/board/boardDetailView.jsp">
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

<!-- <script>
    $(document).ready(function(){
        $('#category-item').on('change', function(){
            alert(this) // 여기에 원하는 액션값 입력
        })
    })
</script> -->
</html>