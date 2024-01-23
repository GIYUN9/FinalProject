 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 카테고리별 게시판</title>


<link rel="stylesheet" type="text/css" href="././resources/css/helpboder.css">

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script src="././resources/js/helpboder.js"></script>

<style>
       .adv1{
        position: fixed; 
        left: 200px; /* 오른쪽 끝에서부터의 거리 */
        z-index: 99;
    }

    .adv2{
        position: fixed; 
        left: 200px; /* 오른쪽 끝에서부터의 거리 */
        z-index: 99;
        top: 400px;
    }
</style>
</head>
<body>
<%@ include file = "../common/header.jsp"%>
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
   <div class = "back-ground">
        <div class="main">
             <!-- 광고를 넣어볼까? -->
            <div class = "adv1" style="display: inline-block;">
                  <a href="https://www.iei.or.kr/main/main.kh">
                    <img src="./resources/image/khadv.jpg" alt="kh" width="150px" height="250px">
                  </a>
            </div>
            <div class = "adv2" style="display: inline-block;">
                <a href="https://soomgo.com/">
                  <img src="./resources/image/soomgo.jpg" alt="soomgo" width="150px" height="250px">
                </a>
         	 </div>
            <div class = "content">
                <div class = "content-head">
                   <div class = "head-count">
                        총 ${fn:length(list)}개의 서비스
                   </div>
                   <div id = "head-category">                     
                        <form class="write-area">
                        	<a class="write-btn" href="helpuForm.bo">
                                글쓰기
                            </a>
                            <select name="listPick" id="category-item"  onchange="handleSelectionChange()">
                            	<c:if test="${lType eq 'helpDateList'}">
	                               <option class = "category-item-list" value="date" id="date" selected >날짜순</option>
	                               <option class = "category-item-list" value="check" id="count">조회순</option>
                                </c:if>
                                <c:if test="${lType eq 'helpCategoryList.bo'}">
	                               <option class = "category-item-list" value="date" id="date">날짜순</option>
	                               <option class = "category-item-list" value="check" id="count">조회순</option>
                                </c:if>
                                <c:if test="${lType eq 'helpReferenceList'}">
	                               <option class = "category-item-list" value="date" id="date">날짜순</option>
	                               <option class = "category-item-list" value="check" id="count" selected>조회순</option>
                                </c:if>
                            </select>
                        </form>
                   </div>
                </div>
                <c:forEach var="b" items="${list}">
                	<div class = "content-item" id="contentList">
	                     <a href ="helpDetailPage.bo?boardNo=${b.boardNo}" id="bno">
	                        <img  class = "content-img" src = "${b.changeName}" id="image">
	                        <div class = "content-item-title" id="btitle" style="height: 55px;">${b.boardTitle}</div>
	                        <div class = "content-item-price" id="price">${b.price}원</div>
	                     </a> 
                	</div>
                </c:forEach>
                
            

	<nav aria-label="Page navigation example">
		<ul class="pagination" style="justify-content: center;">
			<c:if test="${lType eq 'helpList.bo'}">
				<c:choose>
					<c:when test="${pi.currentPage eq 1 }">
						<li class="page-item disabled">
						<a class="page-link" id="page-one" href="#">
                                         이전
						</a>
						</li>
					</c:when>
					
					<c:otherwise>
						<li class="Page-item">
						<a class="page-link" id="page-two" href="helpmeList.bo?cpage=${pi.currentPage - 1}">
                                        이전
						</a>
						</li>
					</c:otherwise>
				</c:choose>
				
				<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
					<li class="page-item">
					<a class="page-link" id="page-three" href="helpList.bo?cpage=${p}">
					${p}
					</a>
                    </li>
				</c:forEach>
                        
			<c:choose>
				<c:when test="${pi.currentPage eq pi.maxPage}">
					<li class="page-item disabled">
					<a class="page-link" id="page-one" href="#">
                                        다음
					</a>
					</li>
				</c:when>

				<c:otherwise>
						<li class="page-item">
						<a class="page-link" id="page-two" href="helpList.bo?cpage=${pi.currentPage + 1}">
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
			<c:if test="${lType eq 'helpDateList'}">
				<c:choose>
					<c:when test="${pi.currentPage eq 1 }">
					<li class="page-item disabled">
					<a class="page-link" id="page-one" href="#">
                                         이전
					</a>
					</li>
					</c:when>
					
			<c:otherwise>
				<li class="Page-item">
				<a class="page-link" id="page-two" href="helpList.bo?cpage=${pi.currentPage - 1}">
                                        이전
				</a>
				</li>
			</c:otherwise>
				</c:choose>
				
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				<li class="page-item">
				<a class="page-link" id="page-three" href="helpList.bo?cpage=${p}">
                                    ${p}
                                </a>
                            </li>
                        </c:forEach>
                        
                         <c:choose>
                            <c:when test="${pi.currentPage eq pi.maxPage}">
                                  <li class="page-item disabled">
                                    <a class="page-link" id="page-one" href="#">
                                        다음
                                    </a>
                                </li>
                            </c:when>
                            
                            <c:otherwise>
                                <li class="page-item">
                                    <a class="page-link" id="page-two" href="helpList.bo?cpage=${pi.currentPage + 1}">
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
                    <c:if test="${lType eq 'helpReferenceList'}">
                	    <c:choose>

                            <c:when test="${pi.currentPage eq 1 }">
                                <li class="page-item disabled">
                                    <a class="page-link" id="page-one" href="#">
                                         이전
                                    </a>
                                </li>
                                         
                             </c:when>
                             <c:otherwise>
                             	<li class="Page-item">
                             	 <a class="page-link" id="page-two" href="helpList.bo?cpage=${pi.currentPage - 1}">
                                        이전
                                 </a>
                                </li>
                            </c:otherwise>
                            </c:choose>
                             <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                               <li class="page-item">
                                <a class="page-link" id="page-three" href="helpList.bo?cpage=${p}">
                                    ${p}
                                </a>
                            </li>
                        </c:forEach>
                        
                         <c:choose>
                            <c:when test="${pi.currentPage eq pi.maxPage}">
                                  <li class="page-item disabled">
                                    <a class="page-link" id="page-one" href="#">
                                        다음
                                    </a>
                                </li>
                            </c:when>
                            
                                 <c:otherwise>
                                <li class="page-item">
                                    <a class="page-link" id="page-two" href="helpList.bo?cpage=${pi.currentPage + 1}">
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

<!-- 스크롤 스크립트 -->
<!-- <script>
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
</script> -->
 <!-- 
 <script>
const select = document.querySelector('#category-item');
select.addEventListener('change', () => {
    if(select.value == 'date'){
    	console.log('date 날짜순')
    	location.href = "helpDateList";
    } else{

    	console.log('count = check')
    	location.href = "helpReferenceList";
    }
});
</script> 
  -->
 
   

       
</body>
</html>