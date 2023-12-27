<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와주세요 전체 게시판</title>

<link rel="stylesheet" type="text/css" href="././resources/css/helpmeboder.css">

</head>
<body>
<%@ include file = "../common/header.jsp"%>
   <div class = "nav">
        <div class = "nav-center-items">
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
                   <div id = "head-count">총 ${fn:length(list)}개의 서비스</div>
                   <div id = "head-category">
                        <form class="write-area">
                        	<a class="write-btn" href="helpmeForm.bo">글쓰기</a>

                            <select name="listPick" id="category-item">
                            
                            	<c:if test="${mType eq 'helpmeDateList'}">
	                            	<option class = "category-item-list" value="date" id="date" selected>날짜순</option>
	                                <option class = "category-item-list" value="check" id="count">조회순</option>
                            	</c:if>
                            	
                            	<c:if test="${mType eq 'helpmeList.bo'}">
	                            	<option class = "category-item-list" value="date" id="date">날짜순</option>
	                                <option class = "category-item-list" value="check" id="count">조회순</option>
                            	</c:if>
                            	
                            	<c:if test="${mType eq 'helpmeReferenceList'}">
	                            	<option class = "category-item-list" value="date" id="date">날짜순</option>
	                                <option class = "category-item-list" value="check" id="count" selected>조회순</option>
                            	</c:if>
                             </select>
                      
                        </form>
                   </div>
                </div>

                <c:forEach var="b" items="${list}">
                	<div class = "content-item">
	                     <a href ="helpmeDetail.bo?boardNo=${b.boardNo}" id="bno">
	                        <img  class = "content-img" src = "${b.changeName}" id="image">
	                        <div class = "content-item-title" id="btitle">
	                        	${b.boardTitle}
	                        </div>
	                        <div class = "content-item-price" id="price">${b.price}원</div>
	                     </a> 
                	</div>
                </c:forEach>

                <nav aria-label="Page navigation example">
                    <ul class="pagination" style="justify-content: center;">
						<c:if test="${mType eq 'helpmeList.bo'}">
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
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        이전
                                    </a>
                    
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item">
                                    <a class="page-link" href="helpmeList.bo?cpage=${pi.currentPage - 1}" 
                                    style="
                                        background: transparent;
                                        color: white; 
                                        border: none; 
                                        cursor: pointer;
                                        "  
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='white';
                                    ">
                                        이전
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                               <li class="page-item">
                                <a class="page-link" href="helpmeList.bo?cpage=${p}" 
                                style="
                                    background: transparent;
                                    color: white; 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                    this.style.backgroundColor='transparent';" 
                                    onmouseout="this.style.color='white';
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
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='white';
                                    ">
                                        다음
                                    </a>
                                </li>
                            </c:when>
                            
                            <c:otherwise>
                                <li class="page-item">
                                    <a class="page-link" href="helpmeList.bo?cpage=${pi.currentPage + 1}" 
                                    style="
                                        background: transparent;
                                        color: white; 
                                        border: none; 
                                        cursor: pointer;
                                        "  
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='white';
                                    ">
                                        다음
                                    </a>
                                </li>
                               </c:otherwise>
                        </c:choose>
                        </c:if>
                        </ul>
                        </nav>
                       
                       <nav aria-label="Page navigation example">
                    	<ul class="pagination" style="justify-content: center;">
                        	<c:if test="${mType eq 'helpmeDateList'}">
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
                                    <a class="page-link" href="helpmeList.bo?cpage=${pi.currentPage - 1}" 
                                    style="
                                        background: transparent;
                                        color: black; 
                                        border: none; 
                                        cursor: pointer;
                                        "  
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        이전
                                    </a>
                                </li>
                               </c:otherwise>
                        </c:choose>
                        <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                               <li class="page-item">
                                <a class="page-link" href="helpmeList.bo?cpage=${p}" 
                                style="
                                    background: transparent;
                                    color: black; 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                    this.style.backgroundColor='transparent';" 
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
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        다음
                                    </a>
                                </li>
                            </c:when>
                            
                            <c:otherwise>
                                   <li class="page-item">
                                    <a class="page-link" href="helpmeList.bo?cpage=${pi.currentPage + 1}" 
                                    style="
                                        background: transparent;
                                        color: black; 
                                        border: none; 
                                        cursor: pointer;
                                        "  
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        다음
                                    </a>
                                </li>
                               </c:otherwise>
                               
                        </c:choose>
                       	</c:if>
                        </ul>
                        </nav>
                        
                        
                      <nav aria-label="Page navigation example">
                    	<ul class="pagination" style="justify-content: center;">
                        	<c:if test="${mType eq 'helpmeReferenceList'}">
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
                                        onmouseover="this.style.color='rgb(0, 199, 174)';
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        이전
                                    </a>
                                </li>
                               </c:when>
                               <c:otherwise>
                                   <li class="page-item">
                                    <a class="page-link" href="helpmeList.bo?cpage=${pi.currentPage - 1}" 
                                    style="
                                        background: transparent;
                                        color: black; 
                                        border: none; 
                                        cursor: pointer;
                                        "  
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        이전
                                    </a>
                                </li>
                               </c:otherwise>
                        </c:choose>
                        <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                               <li class="page-item">
                                <a class="page-link" href="helpmeList.bo?cpage=${p}" 
                                style="
                                    background: transparent;
                                    color: black; 
                                    border: none; 
                                    cursor: pointer;
                                    "  
                                    onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                    this.style.backgroundColor='transparent';" 
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
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        다음
                                    </a>
                                </li>
                            </c:when>
                            
                            <c:otherwise>
                                   <li class="page-item">
                                    <a class="page-link" href="helpmeList.bo?cpage=${pi.currentPage + 1}" 
                                    style="
                                        background: transparent;
                                        color: black; 
                                        border: none; 
                                        cursor: pointer;
                                        "  
                                        onmouseover="this.style.color='rgb(0, 199, 174)'; 
                                        this.style.backgroundColor='transparent';" 
                                        onmouseout="this.style.color='black';
                                    ">
                                        다음
                                    </a>
                                </li>
                               </c:otherwise>
                               
                        </c:choose>
                        </c:if>
                        
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
	const select = document.querySelector('#category-item');
	
	select.addEventListener('change', () => {
		if(select.value == 'date') {
			console.log('날짜순')
			location.href = "helpmeDateList";
		} else {
			console.log('조회순')
			location.href = "helpmeReferenceList";
		}
	});
	
</script>

</body>
</html>