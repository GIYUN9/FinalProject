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
        .main-box{
            position: relative;
        }
		.pageBox{
			margin-bottom: 100px;
            min-height: 721px;
            padding: 20px;
		}
        .com-title{
            font-weight: bold;
        }
        .com-service{
            font-size: 14px;
            color: rgb(147, 147, 150);
            font-weight: bold;
        }
        .com-loca{
            font-size: 14px;
            color:rgb(147, 147, 150);
            font-weight: bold;
        }
        .com-thum{
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: flex-start;
        }
        .board-info{
            font-size: 14px;
            color: rgb(147, 147, 150);
        }
        .cont-area{
            width: 100%;
            border-top: 1px solid rgba(226, 226, 226, 0.4);
            border-bottom: 1px solid rgba(226, 226, 226, 0.4);
            min-height: 200px;
            position: relative;
            padding: 30px;
        }
        .img{
            width: 20px;
            height: 20px;
        }
        .img-area{
            position: absolute;
            bottom: 1px;
        }
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<a class="myPageSideBar" href="list.co" style="font-weight: bolder; background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">전체보기</a>
			<a class="myPageSideBar" href="curious.co">궁금해요</a>
			<a class="myPageSideBar" href="much.co">얼마예요</a>
			<a class="myPageSideBar" href="together.co">함께해요</a>
			<a class="myPageSideBar" href="notice.co">공지사항</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">전체보기</h3>
			<div class="pageBox" style="display: flex; flex-direction: column; position: relative;">
                <div class="title-area"> 
                    <p class="com-service">몰딩 시공</p>
                    <h4 class="com-title">간단히 보수 해볼만한 방법이 있을까요?</h4>    
                    <p class="com-loca">서울/강동구</p>
                </div>

                <div class="com-thum">
                    <div>
                        <img style="width: 70px; height: 70px; margin: 15px; border-radius: 15px;" src="./resources/icon/profileTest.png">
                    </div>
                    <div>
                        <div style="margin-bottom: 5px;">섬세미</div>
                        <div class="board-info">어제·조회 101</div>
                    </div>                    
                </div>

                <div class="cont-area">
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    몰딩이 까져서.. 마음은 이미 포기했는데요<br>
                    간단하게 셀프로 보수 해볼만한 방법 있을까요?
                    <div class="img-area">
                        <img src="./resources/borderImage/good-icon.png" class="img">
                        <span>39</span>
                        <img src="./resources/borderImage/speech-bubble-icon.png" class="img">
                        <span>104</span>
                    </div>
                </div>
                <div class="reply-area">

                </div>
			</div>		
		</div>
	</div>
	<script>
		function pageMove(){
			location.href = "pageMove.no"
		}
	</script>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>