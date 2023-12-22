 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 전체 게시판</title>
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
    .content-item:hover{
        background-color: rgba(255, 255, 255, 0.22);
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

   

    .head-count{
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

    #category-item > option{
        background-color: rgba(83, 82, 82, 0.65);
    }
    .write-btn{
        color: white;
        position: relative;
        justify-content: center;
        align-items: center;
        display: flex;
    }
    .write-area{
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        font-size: 14px;
        text-align: center;
    }
    
    .pagination{
		justify-content: center;
		margin-top: 30px;
	}
    .arrow-img{
        position: absolute;
        width: 20px;
        height: 20px;
        top: 98px;
    }
    .nav{
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .page-link{
        background-color: transparent;
        background: transparent ;
    }
    .page-item{
        background-color: transparent;
        background: transparent;
    }
</style>
</head>
<body>
<%@ include file = "../common/header.jsp"%>
   <div class="nav">
        <div class="nav-center-items">
            <div class="nav-item">
                <div class="aaa">
                    <a href="#" style="color: white;">전체보기</a>
                </div>
            </div>
            <div class = "nav-item">
                <a href="#">
                    <img class="arrow-img" src="./resources/icon/menu-left-arrow.png" alt="">
                </a>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#"  style="color: white;">취미,레슨</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#" style="color: white;">디자인</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#" style="color: white;">마케팅</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#" style="color: white;">운동</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#" style="color: white;">게임</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="aaa">
                    <a href="#" style="color: white;">미술</a>
                </div>
            </div>
           
            <div class = "nav-item">
                <a href="#">
                    <img class="arrow-img" src="./resources/icon/menu-right-arrow.png" alt="">
                </a>
            </div>
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
                   <div class = "head-count">총 1063개의 서비스</div>
                   <div id = "head-category">
					
                        <form class="write-area">
                        	<a class="write-btn" href="helpuForm.bo">글쓰기</a>
                            <select name="categoryPick" id="category-item">
                                <option class = "category-item-list" value="date" id="date" selected onchange="categorylistDate()">날짜순</option>
                                <option class = "category-item-list" value="check" id="check" onchange="categorylistCount()">조회순</option>
                            </select>
                        </form>
                   </div>
                </div>
                
                <div class="helpDatecatalog">
                	
                <c:forEach var="b" items="${list}">
                	<div class = "content-item" id="contentList">
	                     <a href ="helpDetailPage.bo?boardNo=${b.boardNo}" id="bno">
	                        <img  class = "content-img" src = "${b.changeName}" id="image">
	                        <div class = "content-item-title" id="btitle">${b.boardTitle}</div>
	                        <div class = "content-item-price" id="price">${b.price}원</div>
	                     </a> 
                	</div>
                </c:forEach> 
					
                 </div>
                
               <nav aria-label="Page navigation example">
                <ul class="pagination" style="justify-content: center;">
                	<c:choose>
                		<c:when test="${pi.currentPage eq 1 }">
							<li class="page-item disabled">
                                <a class="page-link" href="#" 
                                style="
                                    background: transparent;
                                    color: rgb(147, 147, 150); 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; this.style.backgroundColor='transparent';" 
                                    onmouseout="this.style.color='black';
                                ">
                                    이전
                                </a>
                            </li>
                   		</c:when>
                   		<c:otherwise>
                   			<li class="page-item">
                                <a class="page-link" href="helpList.bo?cpage=${pi.currentPage - 1}" 
                                style="
                                    background: transparent;
                                    color: black; 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; this.style.backgroundColor='transparent';" 
                                    onmouseout="this.style.color='black';
                                ">
                                    이전
                                </a>
                            </li>
                   		</c:otherwise>
					</c:choose>
					<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                   		<li class="page-item">
                            <a class="page-link" href="helpList.bo?cpage=${p}" 
                            style="
                                background: transparent;
                                color: black; 
                                border: none; 
                                cursor: pointer;
                                "  
                                onmouseover="this.style.color='rgb(0, 199, 174)'; this.style.backgroundColor='transparent';" 
                                onmouseout="this.style.color='black';
                            ">
                                ${p}
                            </a>
                        </li>
                    </c:forEach>
                    
                    <c:choose>
                    	<c:when test="${pi.currentPage eq pi.maxPage}">
                  			<li class="page-item disabled">
                                <a class="page-link" href="#" 
                                style="
                                    background: transparent;
                                    color: rgb(147, 147, 150); 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; this.style.backgroundColor='transparent';" 
                                    onmouseout="this.style.color='black';
                                ">
                                    다음
                                </a>
                            </li>
                		</c:when>
                		<c:otherwise>
                   			<li class="page-item">
                                <a class="page-link" href="helpList.bo?cpage=${pi.currentPage + 1}" 
                                style="
                                    background: transparent;
                                    color: black; 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; this.style.backgroundColor='transparent';" 
                                    onmouseout="this.style.color='black';
                                ">
                                    다음
                                </a>
                            </li>
                   		</c:otherwise>
                	</c:choose>
                </ul>
			   </nav>      
            </div>
        </div>
    </div>

   
<%@ include file = "../common/footer.jsp"%>     
   
   <!-- <script>
    $(document).ready(function(){
        $('#category-item').on('change', function(){
            alert(this) // 여기에 원하는 액션값 입력
        })
    })
</script> -->

<script>

$(document).ready(function() {
    // select 요소가 변경될 때의 이벤트 처리
    $("select[name=categoryPick]").change(function() {
        // 선택된 값 가져오기
        var selectedValue = $(this).val();

        // 선택된 값이 'date'인 경우
        if (selectedValue === 'date') {
            $.ajax({
                url: "helpDateCheck.bo",
                type: "POST",
                contentType: "application/json",
                data: {
                    boardNo: document.querySelector('#bno').value,
                    image: document.querySelector('#image').value,
                    boardTitle: document.querySelector('#btitle').value,
                    price: document.querySelector('#price').value
                },
                success: function(data) {
                    console.log(data);
                    let str = "<div class='helpDatecatalog'>";  // 리스트를 감싸는 부모 요소
                    
                        for (let board of data) {
                        str += (
                            "<div class='content-item'>" +
                                "<a href='detailPage.bo?boardNo=" + board.boardNo + "'>" +
                                "<img src='" + board.changeName + "' style='width:50px; height:50px;'>" +
                                "<div class='content-item-title'>" + board.boardTitle + "</div>" +
                                "<div class='content-item-price'>" + board.price + "</div>" +
                                "<div class='content-item-date'>" + board.createDate + "</div>" +
                                "</a>" +
                            "</div>"
                        );
                    }

                    str += "</div>";  // 리스트를 감싸는 부모 요소 닫기

                    $('.helpDatecatalog').html(str);
                },   
                    
                   	// console.log(data);
                   	// let str = "";
                   	// for(let board of data) {
                   	// 	str +=  (
                    //             "<div>" +
                    //                 "<a href='detailPage.bo?boardNo=" + board.boardNo + "'>" +
                    //                 "<img src='" + board.changeName + "' style='width:50px; height:50px;'>" +
                    //                 "<div>" + board.boardTitle + "</div>" +
                    //                 "<div>" + board.price + "</div>" +
                    //                 "<div>" + board.createDate + "</div>" +
                    //                 "</a>" +
                    //             "</div>"
                    //             )
                   	// }

                    // $('.helpDatecatalog').html(str);
                // },
                error: function() {
                	console.log("통신 실패");
                }
            })
        }
        
        // 선택된 값이 'check'인 경우
        else if (selectedValue === 'check') {
        	
        }
    });
});
	
</script>
       
</body>
</html>