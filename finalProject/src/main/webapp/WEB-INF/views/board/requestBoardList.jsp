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

    /* .nav-item-content{
        background-color: rgba(255, 255, 255, 0.22);
    } */
    

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
        width: 100px; 
        text-align: center;  
        height: 200px;
    }

    .category-item {
        width: 100px;
        height: 40px;   
        text-align: center;
        padding-top: 10px;
        margin-top: 10px;
        border-radius: 10px;
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

    .content-item:hover{
        background-color: rgba(255, 255, 255, 0.22);
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
  	}
  	

    #head-category{
        padding-right: 50px;
    }

    #category-item {
        color: white;
        font-size: 18px;
        border: none;
        /* width: 100px; */
       
        margin-top: 10px;
       
    }

    .nav-item-content{
        width: 95px;
        padding: 9px;
        border-radius: 8px;
        color: white;
    }
    
    
    a{
        color: white;
        
    }

    option:hover {
        background-color: rgb(0, 0, 0);
    }
    option:checked {
        background-color: rgb(0, 0, 0);
    }

    .aaa:visited{
        background-color: black;
        color: white;
    }

    #head-category-list{
        background-color: transparent; 
        color: white;
        border: none;
    }

    .head-category-slist{
        background-color: rgba(83, 82, 82, 0.65);
    }
</style>
</head>
<body>
<%@ include file = "../common/header.jsp"%>
   <div class = "nav">
        <div class = "nav-center-items">
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#">전체보기</a>
                </div>
            </div>
            <div class = "nav-item"><a href="#">&#60;</a></div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#">취미,레슨</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#">디자인</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#">마케팅</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content" style="background-color: rgba(255, 255, 255, 0.22);">
                    <a href="#">운동</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#">게임</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#">미술</a>
                </div>
            </div>
           
            <div class = "nav-item"><a href="#">&#62;</a></div>
        </div>
   </div>
   <div class = "back-ground">
        <div class="main">
            <div class = "category" style="display: inline-block;">
                <div class = "category-item" style="background-color: rgba(255, 255, 255, 0.22);"><a href="#">광고 홍보</a></div>
                <div class = "category-item"><a href="#">드론 촬영</a></div>
                <div class = "category-item"><a href="#">홍보 사진</a></div>
                <div class = "category-item"><a href="#">사진 보정</a></div>     
            </div>
            <div class = "content">
                <div class = "content-head">
                   <div id = "head-count">총 1063개의 서비스</div>
                   <div id = "head-category">
                        <form>
                            <select name="" id="head-category-list">
                                <option class = "head-category-slist" value="date" selected>날짜순</option>
                                <option class = "head-category-slist" value="interest">인기순</option>
                                <option class = "head-category-slist" value="check">조회순</option>
                            </select>
                        </form>
                   </div>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">도와줘!</div>
                        <div class = "content-item-price">2000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                         <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">도와주세요!</div>
                        <div class = "content-item-price">5000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">help me!</div>
                        <div class = "content-item-price">1000원</div>
                    </a>
                </div>
                
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">ㅠㅠ</div>
                        <div class = "content-item-price">5000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">슬퍼요</div>
                        <div class = "content-item-price">200원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">도와달라고</div>
                        <div class = "content-item-price">300원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                        <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">?</div>
                        <div class = "content-item-price">90000원</div>
                    </a>
                </div>
                <div class = "content-item">
                    <a href = "#">
                       <img  class = "content-img" src = "././resources/image/기타녀.jpg">
                        <div class = "content-item-title">한 번만요..</div>
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