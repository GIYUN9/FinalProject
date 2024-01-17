<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-검색 결과</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    	function goToBoardDetail(num) {
			location.href = "helpDetailPage.bo?boardNo=" + num
		}
    	
    	function goToCommDetail(num) {
			location.href = "detailcomm.co?boardNo=" + num
		}
    	
    	function goToComm(path) {
    		location.href = path
		}
    </script>
	<style>
		.findBox{
			display: flex;
			width: 90%;
			justify-content: space-evenly;
		}
		
		.findBox-1{
			border: none;
			background-color: white;
			border-radius: 8px;
			color: #323232;
			width: 20%;
			height: 100%;
			min-width: 479px;
			min-height: 239px;
		}
		
		.findBox-2{
			border: none;
			background-color: white;
			border-radius: 8px;
			color: #323232;
			width: 30%;
			height: 100%;
			min-width: 479px;
			min-height: 239px;
		}
		
		.carousel-item .your-div-class {
		  width: 90%;
		  height: 100px;
		  margin: 10px;
		  align-content: center;
		}
		
		#demo{
			width: 80%;
		}
		
		.no-add{
			height: 100%;
			border-radius: 15px;
			background: rgb(255,255,255, 0.1);
		}
		
		.no-add > *{
			margin-top: 0px;
			margin-bottom: 5px;
			margin-left: 25px;
		}
		
		.board-sep-line{
			border: 0px; border-bottom: 1px solid white; margin-top: 10px; margin-bottom: 0px;
		}
		
		.notice-content{
			overflow: hidden;  		
			text-overflow: ellipsis;  	
			white-space: nowrap;
		}
		.div-divide{
			width: 90%;
			border: none;
			height: 0.5px;
			background: white;
		}
		.category-board{
			background: rgb(0, 199, 174);
			border-radius: 8px 8px 0px 0px;
			color: white;
			padding: 10px;
			border-bottom: 1px solid rgba(60, 59, 59, 0.27);
			font-size: 20px;
			font-weight: 600;
			position: relative;
			cursor: pointer;
		}
		.post{
			border-bottom: 1px solid rgba(60, 59, 59, 0.27);
			padding: 10px;
			cursor: pointer;
			position: relative;
			height: 100px;
		}
		.title{
			font-size: 16px;
			font-weight: bold;
			margin-bottom: 5px;
		}
		.content{
			font-size: 13px;
			height: 35px;
			text-overflow: ellipsis;
			color: #737373;
			white-space: nowrap;
			overflow: hidden;
		}
		.shortcut-img{
			width: 15px;
			height: 15px;
			position: absolute;
			right: 14px;
			top: 18px;
			cursor: pointer;
		}
		.view-count-img, .comment-img, .like-img {
			width: 20px;
			height: 20px;
		}

		.view-count-img{
			position: absolute;
	    	right: 30px;
		}
		.comment-img{
			position: absolute;
			right: 80px;
			top: 75px;
		}
		.like-img{
			position: absolute;
			right: 33px;
			top: 71px;
		}
		.view-count{
			color: rgb(147, 147, 150);
			width: max-content;
			font-size: 10px;
			position: absolute;
			right: 10px;
			top: 12px;
		}
		.comment-count{
			color: rgb(147, 147, 150);
			width: max-content;
			font-size: 10px;
			position: absolute;
			right: 60px;
			top: 77px;
			font-weight: bold;
		}
		.like-count{
			color: rgb(147, 147, 150);
			width: max-content;
			font-size: 10px;
			position: absolute;
			right: 11px;
			top: 77px;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 100px; display: flex; flex-direction: column;">
		<div class="main-box" style="margin-left: 190px;">
				<div style="width: 100%; height: 100%; align-items: center; justify-content: center; display: flex;">
					<div id="demo" class="carousel slide" data-bs-ride="carousel">
					  <!-- Indicators/dots -->
					  <div class="carousel-indicators" style="display: none;">
					    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
					    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
					    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
					  </div>
					  
					  <!-- The slideshow/carousel -->
					  <div class="carousel-inner" style="padding: 50px;">
					    <div class="carousel-item active">
					    	<div class="your-div-class">
						    	<div class="no-add">
						      		<h3>품앗이에 오신것을 환영합니다~</h3>
	    							<p>품앗이는 O2O(Online to Offline)플랫폼으로 온라인을 통해</p>	
	    							<p>실제 오프라인에서 일어나는 활동의 기회를 만들어주는 웹 서비스입니다~</p>	
						    	</div>
					    	</div>
					    </div>
					    <c:forEach var="n" items="${nList}">
						    <div class="carousel-item">
							    <div class="your-div-class">
									<div class="no-add">
										<h5>${n.noticeType}</h5>
							      		<h3>${n.noticeTitle}</h3>
			   							<p class="notice-content" style="margin: 10px;">${n.noticeContent}</p>					    	
									</div>
						    	</div>
						    </div>
					    </c:forEach>
					  </div>
					  
					  <!-- Left and right controls/icons -->
					  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev" style="display: none;">
					    <span class="carousel-control-prev-icon"></span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
					    <span class="carousel-control-next-icon"></span>
					  </button>
					</div>
				</div>
				<br>
			<div class="findBox">
				<div class="findBox-1">
					<c:choose>
						<c:when test="${not empty list1}">
							<div>
								<div class="category-board" onclick="helpU()"> 
									도와줄게요
									<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
								</div>
								<c:forEach var="hu" items="${list1}">		
									<div class="post" onclick="goToBoardDetail(${hu.boardNo})">
										<div class="title">
											${hu.boardTitle}
											<img class="view-count-img" src="./resources/icon/eye.png" alt="">
											<div class="view-count">
												100
											</div>
										</div>
										<div class="content">
											${hu.boardContent}
											<img class="like-img" src="./resources/icon/LIKE.png" alt="">
											<div class="like-count">
												12
											</div>
											<img class="comment-img" src="./resources/icon/speech-bubble.png" alt="">
											<div class="comment-count">
												8
											</div>
										</div>
										<hr class="board-sep-line">
									</div>
								</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
							<div class="category-board" onclick="helpU()"> 
									도와줄게요
									<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
							</div>
							<div style="text-align-last: center;">
								<br>
								<div style="display:flex; justify-content: center;">
									<h5>게시판에 아직 게시글이 없습니다</h5><img alt="오른쪽대각선화살표" src="./resources/icon/right-diagonal-arrow.png" style="width: 20px; height: 20px; margin-left: 10px;">
								</div>	
								<br>
								<h6>첫번째 게시글을 작성해보세요!</h6>
							</div>
						</c:otherwise>
					</c:choose>	
				</div>
				<div class="findBox-1">
					<c:choose>
						<c:when test="${not empty list2}">
							<div>
								<div class="category-board" onclick="needHelp()"> 
									도와주세요
									<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
								</div>
								<c:forEach var="hm" items="${list2}">
									<div class="post" onclick="goToBoardDetail(${hm.boardNo})">
										<div class="title">
											${hm.boardTitle}
											<img class="view-count-img" src="./resources/icon/eye.png" alt="">
											<div class="view-count">
												10K
											</div>
										</div>
										<div class="content">
											${hm.boardContent}
											<img class="like-img" src="./resources/icon/LIKE.png" alt="">
											<div class="like-count">
												120
											</div>
											<img class="comment-img" src="./resources/icon/speech-bubble.png" alt="">
											<div class="comment-count">
												80
											</div>
										</div>
										<hr class="board-sep-line">
									</div>
								</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
							<div class="category-board" onclick="needHelp()"> 
								도와주세요
								<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
							</div>
							<div style="text-align-last: center;">
								<br>
								<div style="display:flex; justify-content: center;">
									<h5>게시판에 아직 게시글이 없습니다</h5><img alt="오른쪽대각선화살표" src="./resources/icon/right-diagonal-arrow.png" style="width: 20px; height: 20px; margin-left: 10px;">
								</div>	
								<br>
								<h6>첫번째 게시글을 작성해보세요!</h6>
							</div>
						</c:otherwise>
					</c:choose>	
				</div>
			</div>
			<br>
			<hr class="div-divide">
			<br>
			<div class="findBox">
				<div class="findBox-2">
					<c:choose>
						<c:when test="${not empty list3}">
							<div>
								<div class="category-board" onclick="goToComm('curious.co')"> 
									궁금해요
									<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
								</div>
								<c:forEach var="q" items="${list3}">
									<div class="post" onclick="goToCommDetail(${q.boardNo})">
										<div class="title">
											${q.boardTitle}
											<img class="view-count-img" src="./resources/icon/eye.png" alt="">
											<div class="view-count">
												${q.viewCount}
											</div>
										</div>
										<div class="content">
											${q.boardContent}
											<img class="like-img" src="./resources/icon/LIKE.png" alt="">
											<div class="like-count">
												${q.likeyCount}
											</div>
											<img class="comment-img" src="./resources/icon/speech-bubble.png" alt="">
											<div class="comment-count">
												X
											</div>
										</div>
										<hr class="board-sep-line">
									</div>
								</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
							<div class="category-board" onclick="goToComm('curious.co')"> 
								궁금해요
								<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
							</div>
							<div style="text-align-last: center;">
								<br>
								<div style="display:flex; justify-content: center;">
									<h5>게시판에 아직 게시글이 없습니다</h5><img alt="오른쪽대각선화살표" src="./resources/icon/right-diagonal-arrow.png" style="width: 20px; height: 20px; margin-left: 10px;">
								</div>	
								<br>
								<h6>첫번째 게시글을 작성해보세요!</h6>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="findBox-2">
					<c:choose>
						<c:when test="${not empty list4}">
							<div>
								<div class="category-board" onclick="goToComm('much.co')"> 
									얼마예요
									<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
								</div>
								<c:forEach var="p" items="${list4}">
									<div class="post" onclick="goToCommDetail(${p.boardNo})">
										<div class="title">
											${p.boardTitle}
											<img class="view-count-img" src="./resources/icon/eye.png" alt="">
											<div class="view-count">
												${p.viewCount}
											</div>
										</div>
										<div class="content">
											${p.boardContent}
											<img class="like-img" src="./resources/icon/LIKE.png" alt="">
											<div class="like-count">
												${p.likeyCount}
											</div>
											<img class="comment-img" src="./resources/icon/speech-bubble.png" alt="">
											<div class="comment-count">
												X
											</div>
										</div>
										<hr class="board-sep-line">
									</div>
								</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
							<div class="category-board" onclick="goToComm('much.co')"> 
								얼마예요
								<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
							</div>
							<div style="text-align-last: center;">
								<br>
								<div style="display:flex; justify-content: center;">
									<h5>게시판에 아직 게시글이 없습니다</h5><img alt="오른쪽대각선화살표" src="./resources/icon/right-diagonal-arrow.png" style="width: 20px; height: 20px; margin-left: 10px;">
								</div>	
								<br>
								<h6>첫번째 게시글을 작성해보세요!</h6>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="findBox-2">
					<c:choose>
						<c:when test="${not empty list5}">
							<div>
								<div class="category-board" onclick="goToComm('together.co')"> 
									함께해요
									<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
								</div>
								<c:forEach var="to" items="${list5}">
									<div class="post" onclick="goToCommDetail(${to.boardNo})">
										<div class="title">
											${to.boardTitle}
											<img class="view-count-img" src="./resources/icon/eye.png" alt="">
											<div class="view-count">
												${to.viewCount}
											</div>
										</div>
										<div class="content">
											${to.boardContent}
											<img class="like-img" src="./resources/icon/LIKE.png" alt="">
											<div class="like-count">
													${to.likeyCount}
											</div>
											<img class="comment-img" src="./resources/icon/speech-bubble.png" alt="">
											<div class="comment-count">
												X
											</div>
										</div>
										<hr class="board-sep-line">
									</div>
								</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
							<div class="category-board" onclick="goToComm('together.co')"> 
								함께해요
								<img class="shortcut-img" src="./resources/icon/menu-right-arrow.png" alt="">
							</div>
							<div style="text-align-last: center;">
								<br>
								<div style="display:flex; justify-content: center;">
									<h5>게시판에 아직 게시글이 없습니다</h5><img alt="오른쪽대각선화살표" src="./resources/icon/right-diagonal-arrow.png" style="width: 20px; height: 20px; margin-left: 10px;">
								</div>	
								<br>
								<h6>첫번째 게시글을 작성해보세요!</h6>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>