<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-검색 결과</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		.findBox{
			display: flex;
			width: 90%;
			justify-content: space-between;
		}
		
		.findBox-1{
			border: 1px solid white;
			width: 42%;
			height: 100%;
		}
		
		.findBox-2{
			border: 1px solid white;
			width: 30%;
			height: 100%;
		}
		
		.carousel-item .your-div-class {
		  width: 90%;
		  height: 100px;
		  margin: 10px;
		  align-content: center;
		}
		
		#demo{
			width: 90%;
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
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 100px; display: flex; flex-direction: column;">
		<div class="main-box" style="margin-left: 190px;">
				<div style="width: 100%; height: 100%;">
					<div id="demo" class="carousel slide" data-bs-ride="carousel">
					  <!-- Indicators/dots -->
					  <div class="carousel-indicators" style="display: none;">
					    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
					    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
					    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
					  </div>
					  
					  <!-- The slideshow/carousel -->
					  <div class="carousel-inner" >
					    <div class="carousel-item active">
					    	<div class="your-div-class">
						    	<div class="no-add">
						      		<h3>품앗이에 오신것을 환영합니다~</h3>
	    							<p>품앗이는 O2O(Online to Offline)플랫폼으로 온라인을 통해</p>	
	    							<p>실제 오프라인에서 일어나는 활동의 기회를 만들어주는 웹 서비스입니다~</p>	
						    	</div>
					    	</div>
					    </div>
					    <div class="carousel-item">
						    <div class="your-div-class">
								<div class="no-add">
						      		<h3>공지사항 </h3>
		   							<p style="margin: 10px;">품앗이에 오신것을 환영합니다~</p>					    	
								</div>
					    	</div>
					    </div>
					    <div class="carousel-item">
						    <div class="your-div-class">
								<div class="no-add">
						      		<h3>공지사항 </h3>
		   							<p style="margin: 10px;">품앗이에 오신것을 환영합니다~</p>					    	
								</div>
					    	</div>
					    </div>
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
					<h3>도와줄게요</h3>
					<div>
						<h5>도와줄게요 게시글 제목 1</h5>
						<div>
							내용 내용 내용
						</div>
						<hr class="board-sep-line">
					</div>
					<div>
						<h5>도와줄게요 게시글 제목 2</h5>
						<div>
							내용2 내용2 내용2
						</div>
						<hr class="board-sep-line">
					</div>
				</div>
				<div class="findBox-1">
					<h3>도와주세요</h3>
					<div>
						<h5>도와주세요 게시글 제목 1</h5>
						<div>
							내용 내용 내용2
						</div>
						<hr class="board-sep-line">
					</div>
				</div>
			</div>
			<br>
			<hr style="width: 90%; color: white; border: solid;">
			<br>
			<div class="findBox">
				<div class="findBox-2">
					<h3>궁금해요</h3>
					<div>
						<h5>궁금해요 게시글 제목 1</h5>
						<div>
							궁금해요궁금해요궁금해요궁금해요
						</div>
						<hr class="board-sep-line">
					</div>
				</div>
				<div class="findBox-2">
					<h3>얼마예요</h3>
					<div>
						<h5>얼마예요 게시글 제목 1</h5>
						<div>
							얼마예요얼마예요얼마예요얼마예요얼마예요얼마예요얼마예요얼마예요얼마예요얼마예요
						</div>
						<hr class="board-sep-line">
					</div>
				</div>
				<div class="findBox-2">
					<h3>함께해요</h3>
					<div>
						<h5>함께해요 게시글 제목 1</h5>
						<div>
							함께해요함께해요함께해요함께해요함께해요함께해요함께해요함께해요함께해요함께해요함께해요
						</div>
						<hr class="board-sep-line">
					</div>
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