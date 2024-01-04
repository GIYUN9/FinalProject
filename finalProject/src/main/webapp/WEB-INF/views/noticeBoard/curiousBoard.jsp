	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-bottom: 100px;
		}

		.profile-btn-area{
			justify-content: center;
    		display: flex;
			align-self: center; 
			width: 100%;
		}
		.user-info-table{
			width: 80%;	
			position: relative;
			margin-bottom: 70px;
		}
		.user-info-table td{
			padding-bottom: 0px;
		}
		.user-info-table input{
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 35px;
		}
		.ui-formOuter{
			width: 100%;
		}
		.ui-submit-btn{
			float: right;
			position: absolute;
			right: 70px;
			bottom: 233px;
			width: 460px;
			background: none;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 28px;
		}
		.email-input{
			height: 35px
		}
		.phone-input{
			height: 35px
		}
		.info-input{
			width: 100%;
		}

		.normal-input-box > button {
			width: 80px;
			height: 35px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
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

        .list-btn:hover {
            color: black;
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
                cursor: pointer;
        }

        .text1{
            font-size: 14px;
        }

        .text2{
            font-size: 12px;
        }

        .community-p{
            font-size: 10px;
			margin-left: 35px;
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
            padding: 13px 0px 10px 20px;
        }

        .main-b{
            padding: 13px 0px 0px 30px;
        }

        .a-click {
            text-decoration-line: none;
            color: black;
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
            margin-top: 2px;
            cursor: pointer;
        }

        .border-one,  .border-two, .border-three{
            margin-left: 33px;
            line-height: 27px;
        }
        a:hover{
            color: black;
        }
        #board-create{
            width: 80px;
            position: absolute;
            bottom: 122px;
            right: 43px;
            background: rgb(0, 199, 174);
            color: white;
            border: none;
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
		
			<a class="myPageSideBar" href="list.co">전체보기</a>
			<a class="myPageSideBar" href="curious.co" style="font-weight: bolder; background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">궁금해요</a>
			<a class="myPageSideBar" href="much.co">얼마예요</a>
			<a class="myPageSideBar" href="together.co">함께해요</a>
			<a class="myPageSideBar" href="notice.co">공지사항</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">궁금해요</h3>
			<button id="board-create" onclick="pageMove()">글쓰기</button>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="community-big">
                            <div class="main-a">
                                <span class="main-span1">공지</span>
                                <span class="main-span2">품앗이 가이드라인</span>
                                <a href="notice.co"><img src="././resources/borderImage/right-arrow-icon.png" alt="오른쪽 화살표" class="arrow-img" ></a>
                            </div>                        
                        <ul>
                        	<c:forEach var="b" items="${list}">
	                            <li class="main-list">
									<span class="community-p">${b.boardType == 3 ? '궁금해요' : b.boardType == 4 ? '얼마예요' : '함께해요'}</span>
	                                <a href="detailcomm.co?boardNo=${b.boardNo }" class="a-click">
	                                    <div class="border-one">
	                                        <h4>${b.boardTitle}</h4>
	                                        <span class="text1">${b.boardContent}</span><br>
											<div>
												<span class="text2">${b.location}</span>
											</div>		
	                                        <div>
	                                            <a href="" class="a-click">
                            						<img src="./resources/icon/LIKE.png" class="img" style="margin-bottom: 10px;">
	                                                <span>${b.likeyCount }</span>
	                                            </a>
	                                            <a href="" class="a-click">
					                				<img src="./resources/icon/eye.png" alt="말풍선아이콘" class="img">
	                                                <span>${b.viewCount }</span>
	                                            </a>
	                                            <span class="time-span">${b.createDate}</span>
	                                        </div>
	                                    </div>
	                                 </a>
	                            </li>
	                            <hr class="line">
	                    	</c:forEach>
                        </ul>
					<ul class="pagination" style="justify-content: center;">
						<c:choose>
							<c:when test="${pi.currentPage eq 1 }">
								<li class="page-item disabled">
									<a class="page-link" href="#" 
										style="
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
									<a class="page-link" href="curious.co?cpage=${pi.currentPage - 1}" 
									style="
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
								<a class="page-link" href="curious.co?cpage=${p}" 
								style="
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
									<a class="page-link" href="curious.co?cpage=${pi.currentPage + 1}" 
									style="
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
                </div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
		<script>
		function pageMove(){
			location.href = "pageMove.no"
		}
	</script>
</body>
</html>