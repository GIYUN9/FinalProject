<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 상세보기</title>
<link rel = "stylesheet" href="http://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
<script src="././resources/js/script.js" defer></script>
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
    
    .nav{
	    display: flex;
	    align-items: center;
	    justify-content: center;
	}

    .nav-center-items{
	    display: flex;
	    margin: 10px;
	    overflow: hidden;     
	}

   .nav-item{
	    font-size: 18px;
	    height: 40px; 
	    padding-left: 70px;
	    text-align: center;
	    font-weight: bold;
	    color: white;
	}

    a:after {
        display:block;
        content: '';
        border-bottom: solid 2px #ffffff;  
        transform: scaleX(0);  
        transition: transform 250ms ease-in-out;
     }
    a:hover:after { 
        transform: scaleX(1); 
    }

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
        width: 1200px;  
        height: max-content;
        border: 1px;
        margin: 0 auto;
        margin-bottom: 100px;
        padding-left: 50px;
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
    
    .arrow-img{
	    position: absolute;
	    width: 20px;
	    height: 20px;
	    top: 98px;
	}
    
    .aaa{
	    width: 95px;
	    padding: 9px;
	    border-radius: 8px;
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

    /* 
        디테일 뷰 스타일
    */
    .main-photo{
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .photo{
        width: 550px;
        height: max-content;
        background-color: white;
        align-items: center;
        padding: 20px;
        border-radius: 8px;
    }
    .big-photo{
        width: 510px;
        margin-bottom: 20px;
        border: 1px solid rgba(96, 96, 96, 0.4);
    }

    .slider-wrapper .slide-button{
        position: absolute;
        top: 50%;
        height: 30px;
        width: 30px;
        color: transparent;
        border: none;
        outline: none;
        background-color: transparent;
        font-size: 30px;
        cursor: pointer;
        
        padding-bottom: 42px;
    }

    .slider-wrapper .slide-button:hover{
        color: black;

    }

    .slider-wrapper{
        position: relative;
    }

    .slider-wrapper .slide-button#prev-slide{
        left: 0px;
        display: none;
        margin-bottom: 10px;
    }

    .slider-wrapper .slide-button#next-slide{
        left: 510px;
    }
    
    .slider-wrapper .image-list {
        display: grid;
        gap: 18px;
        font-size: 0;
        overflow-x: auto;
        margin-bottom: 1px;
        scrollbar-width: none;
        grid-template-columns: repeat(10, 1fr);
    }

    .slider-wrapper .image-list::-webkit-scrollbar{
        display: none;
    }

    .slider-wrapper .image-list .image-item{
        width: 200px;
        height: 120px;
        object-fit: cover;
        border: 1px solid rgba(96, 96, 96, 0.4);
    }

    .container .slider-scrollbar{
        height: 24px;
        width: 100%;
        display: flex;
        align-items: center;
    }

    .slider-scrollbar .scrollbar-track{
        height: 2px;
        width: 100%;
        background-color: #ccc;
        position: relative;
        border-radius: 4px;
    }

    .slider-scrollbar:hover .scrollbar-track{
        height: 4px;
    }

    .slider-scrollbar .scrollbar-thumb{
        position: absolute;
        height: 100%;
        width: 50%;
        background-color: #000;
        border-radius: inherit;
        cursor: grab;
    }

    .slider-scrollbar .scrollbar-track:active{
        cursor: grabbing;
        height: 8px;
        top: -2px;
    }

    .slider-scrollbar .scrollbar-thumb::after{
        content: "";
        position: absolute;
        left: 0;
        right: 0;
        top: -10px;
        bottom: -10px;
    }

    /*
        content 내용 css
    */
    .content{
        width: 550px;
        height: max-content;
        background-color: white;
        margin: 0 auto;
        padding: 30px;
        border-radius: 8px;
        text-align: center;
        position: relative;
    }

    .icon{
        width: 500px;
        height: 50px;
        background-color: #fff;
        margin-top: 10px;
        align-items: center;
    }

    .icon > div{
       display: inline-block; 
    }

    .share {
        float: left;
    }
    .share :hover{
        cursor: pointer;
    }

    .heart {
        float: right;
    }
    .heart :hover{
        cursor: pointer;
        opacity: 0.5;
    }
    .heart-text{
        display: inline-block;
  
    }

    .heart-text > h4{
        text-align: center;  
    }
   

    .icon img{
        height: 40px;
       
    }

    .report{
        display: inline-block;
    }
    .start{
        display: inline-block;
    }

    .report > img{
        display: inline-block;
        height: 40px;
    }
    .star > img{
        display: inline-block;
        height: 40px;
    }


    .star-text {
        width: max-content;
        display:  inline-block; 
        font-size: 13px
    }
    .logo{
        display: block;
    }
  
    .content-title{
            align-items: center;
    	 justify-content: center; 
    
    }
    .content-detail{
        height: 400px;
    	justify-content: center;
    	display: flex;
        padding: 30px;
        text-align: left;
    }
    .share-icon{border: none;
        opacity: 0.5;}
    .heart-icon{border: none;
        opacity: 0.5;}
    .report-btn{border: none;
        background-color: white;
        opacity: 0.5;
    }
    .report-btn:hover{
        cursor: pointer;
    }
    #content-btn{
        background-color: rgb(87, 212, 197);
        color: white;
        font-weight: bold;
        border: none;
        width: 300px;
        height: 40px;
        border-radius: 4px;
        font-size: 16px;
    }
    #content-btn:hover{
        cursor: pointer;
        opacity: 0.5;
    }

    .star{
        justify-content: center;
        display: flex;
        align-items: center;
    }

    .report{
        justify-content: center;
        display: flex;
        align-items: center;
    }

    .report-btn{
        padding-left: 10px;
        font-weight: bold;
    }
    .star-text{
        font-weight: bold;
    }

    .modal.active{
        display: block;
    }

    .modal{
        background-color: #000;
        position: absolute;
        top: 0;
        left: 0;
        height: 100vh;
        width: 100%;
        display: none;
        
    }
    .nav-item-content{
    	color : white;
    }
    .helpr-text{
	    resize:none; 
	    width:100%;
	}

	.img{
		width:50px;
		height: 50px;
	}
	
	.hu-cancle-btn{
        margin-right: 10px;
        font-size: 13px;
    }

	.hu-cancle-btn:hover{
		cursor: pointer;
        opacity: 0.5;
	}
	
	.hu-submit-btn{
		cursor: pointer;
        opacity: 0.5;
        margin-right: 10px;
        font-size: 13px;
	}

    .hu-submit-btn:hover{
        opacity: 0.3;
    }

    .count{
        display: flex;
        justify-content: end;
        font-size: 14px;
    }
    .hmd-close-btn{
        width: 13px;
        height: 13px;
        cursor: pointer;
        position: absolute;
        right: 15px;
        top: 15px;
    }
    .data{
        display: flex;
        flex-direction: column;
        justify-content: end;
    }
    .data-mem{
        text-align: right;
        font-weight: bold;  
        cursor: pointer;
  		text-decoration: none;
    }
    .hu-btn-area{
        display: flex;
        flex-direction: row;
    }
    
       /* 슬라이드 css*/
   
   .slider-container{
   		width : 100%;
   		overflow : hidden;
   }
   
   .scroll-area{
	    display: flex;
	    flex-direction: row;
	    width: 850px;
	    transition: transform 0.5s ease-in-out;
	}

    .modal-email-input{
        width: 300px;
        height: 40px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 4px;
        margin-bottom: 20px;
    }

    .modal-location-input{
        width: 300px;
        height: 40px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 4px;
        margin-bottom: 20px;
    }

    .modal-skill-input{
        width: 300px;
        height: 40px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 4px;
        margin-bottom: 20px;
    }
	.modal-introduce-input{
		width: 300px;
        height: 40px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 4px;
        margin-bottom: 20px;
	}
   
</style>
<script src="${pageContext.request.contextPath}/resources/js/helpboder.js"></script>
</head>
<body>
<%@ include file="../common/header.jsp" %>
     <div class="nav">
        <div class="nav-item">
            <div class="aaa">
                <a href="helpList.bo" style="color: white;">전체보기</a>
            </div>
        </div>
        <div class = "nav-item">
            <a id = "leftButton" href="#">
                <img class="arrow-img" src="./resources/icon/menu-left-arrow.png" alt="">
            </a>
        </div>

        <div class="nav-center-items">
        
        <!-- 카테고리 버튼 슬라이드 기능(제이쿼리 사용) -->
            <div class = "slide-container">
                <div class="scroll-area">
                    <c:forEach var="c" items="${cList}">
                        <div class = "nav-item">
                            <div class="aaa">
                                <a href="#" style="color: white;" class="catelist" id="clickedElement" data-category-no="${c.categoryNo}"   onclick="categoryList(this)">${c.categoryName}</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            
            <div class = "nav-item">
                <a id = "rightButton" href="#">
                    <img class="arrow-img" src="./resources/icon/menu-right-arrow.png" alt="">
                </a>
            </div>
        </div>
   </div>
    <div class="main">
    	<div class = "photo">
            <div class = "main-photo">
                <img class = "big-photo" src ="${b.changeName}" alt="메인사진">
            </div>
            <div class = "container">
                <div class = "slider-wrapper">
                    <button id ="next-slide" class="slide-button material-symbols-rounded">&#62;</button>
                    <div class = "image-list">
                        <c:forEach var="at" items="${atlist}">
                            <img class ="image-item" src="${at.changeName}" alt="일러스트">
                        </c:forEach>
                    </div>
                    <button id ="prev-slide" class="slide-button material-symbols-rounded">&#60;</button>
                </div>
                <div class="slider-scrollbar">
                    <div class="scrollbar-track">
                        <div class="scrollbar-thumb"></div>
                    </div>
                </div>
            </div>    
        </div>
        <div class = "content">
            <img src="././resources/icon/close.png" class="hmd-close-btn" onclick="prevAction()" alt="">               
            <div class = "content-title">
                <div class = "content-title-text">
                    <text><h2>${b.boardTitle }</h2></text> 
                </div>
                <div class = "modal actice">
                    <div class = "modal-content">
                        <a href="#none" class = "btn-close">x</a>
                    </div>
                </div>     
                <div class = "a">               
                    <div class="logo">          
                        <div class = "data">
                            <div class="data-mem" data-toggle="modal" data-target="#userModal">
                                작성자 :  &nbsp;${b.memberName }
                            </div>
                            <div style="display: flex; flex-direction: row; justify-content: end;">
                                <div class="hu-btn-area">
                                    <a class="hu-submit-btn" onclick="postBtn(1)">수정</a>
                                    <a class="hu-cancle-btn" style="color: rgb(231, 76, 60);" onclick="postBtn(2)">삭제</a>
                                </div>
                                <div class="count">
                                    <img src="././resources/icon/eye.png" style="width: 20px; height: 20px; margin-right: 10px;" alt="">
                                    ${b.viewCount }
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class = "content-detail">
            <pre style="width: 100%; height: 100%;">
${b.boardContent }
            </pre>
            </div>
            <!-- <button id = "content-btn">채팅하기</button> -->
            <button id="content-btn" onclick="payment()">요청하기(결제)</button>
            <form action="" method="post" id="form">
                <input type="hidden" name="boardNo" value="${b.boardNo}">
                <input type="hidden" name="filePath" value="${b.changeName}">
            </form>
        </div>
        <div class="modal" id="userModal" style="background: top;" >
            <div class="modal-dialog">
                 <div class="modal-content" style="height: 100%;  margin-top: 180px;">
                    <div class="modal-body" >                 
                      
                        <div style="justify-content: center;
                            display: flex;">
                        <img class ="modal-user-img" src="${b.filePath}" alt="유저사진" style="height: 120px; width: 120px; border-radius: 30%;">
                    </div>
                    <br>
                    
                    <h2 class="modal-user-name" style="text-align: center; font-weight: bold; margin: 0 auto;">${b.memberName}</h2>
                    <br>
                    
                    <div class="l-text" style="font-weight: bold;">
                        Email
                    </div>                      
                    <input class="modal-email-input" name="memberEmail" type="text" style="width: 100%;" value="${b.memberEmail}" readonly>
                    <br>
                    
                    <div class="l-text" style="font-weight: bold;">
                        활동지역
                    </div>                      
                    <input class="modal-location-input" name="location" type="text" style="width: 100%;" value="${b.location}" readonly>
                    <br>
                    
                    <div class="l-text" style="font-weight: bold;">
                        전문가 정보
                    </div>                      
                    <input class="modal-skill-input" name="skillName" type="text" style="width: 100%;" value="${b.skillName}" readonly>
                    <br>
                    
                    <div class="l-text" style="font-weight: bold;">
                        전문가 소개
                    </div>                      
                    <input class="modal-introduce-input" name="intro" type="text" style="width: 100%;" value="${b.intro}" readonly>
                    
                    <hr>
            
               
                </div>
            </div>
        </div>
    </div>
    </div>
<%@ include file="../common/footer.jsp" %>

<script>
	function payment() {
		location.href = "paymentPage.pay"
	}
	
	  document.addEventListener('DOMContentLoaded', function () {
	        const itemsPerPage = 5;
	        const scrollArea = document.querySelector('.scroll-area');
	        const navItems = document.querySelectorAll('.nav-item');
	        let currentIndex = 0;

	        // 좌측 버튼 클릭 시
	        document.getElementById('leftButton').addEventListener('click', function () {
	            if (currentIndex > 0) {
	                currentIndex -= itemsPerPage;
	                updateSlider();
	            }
	        });

	        // 우측 버튼 클릭 시
	        document.getElementById('rightButton').addEventListener('click', function () {
	            if (currentIndex < navItems.length - itemsPerPage) {
	                currentIndex += itemsPerPage;
	                updateSlider();
	            }
	        });

	        // 슬라이더 업데이트 함수
	        function updateSlider() {
	            const translateValue = -currentIndex * navItems[0].offsetWidth;
	            scrollArea.style.transform = 'translateX(' + translateValue + 'px)';
	            console.log('Slider updated. Current Index: ', currentIndex);
	        }
	    });
</script>


</body>
</html>