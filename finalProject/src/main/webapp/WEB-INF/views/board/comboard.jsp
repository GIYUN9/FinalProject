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
            cursor: pointer;
        }
        .img-area{
            position: absolute;
            bottom: 1px;
            margin-bottom: 10px;
            color: #888888;
            margin-top: 10px;
            display: flex;
            width: 95%;
            flex-direction: row;
            justify-content: space-between;
            font-size: 14px;
        }
        .reply-align{
            display: flex;
            flex-direction: row;
            padding: 10px;
        }
        .reply-top{
            display: flex;
            position: relative;
            flex-direction: column;
            margin-bottom: 10px;
            color: #888888;
        }
        .reply-bot{
            color: #888888;
        }
        .req-btn{
            position: absolute;
            right: 1px;
            color: #00c7ae;
            background-color: #eafaf9;
            border: 0;
            padding: .3125rem 0.5rem;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
        }
        .reply-writer{
            color: black;
            font-size: 17px;
            font-weight: 600;
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
                    <br><br><br>
                    <div class="img-area">
                        <div>
                            <img src="./resources/icon/LIKE.png" class="img" style="margin-bottom: 10px;">
                            <span>좋아요 39 ·</span>
                            <span>조회수 104</span>
                        </div>
                        <div>
                            어제
                        </div>
                    </div>
                </div>
                <div class="reply-area">
                    <div class="reply-align">
                        <div class="profile-area">
                            <img style="width: 45px; height: 45px; margin: 5px; border-radius: 15px;" src="./resources/icon/profileTest.png">
                        </div>
                        <div class="reply-info">
                            <div class="reply-top">
                                <div class="reply-writer">
                                    정훈 
                                </div>
                                <div>
                                    일러스트 디자인+8개서비스 고수 
                                </div>
                                <button class="req-btn">견적요청</button>
                            </div>
                            <div class="reply-cont">
                                뜯어져나갈 부분은 깔끔하게 뜯어내시고 가까운 철물점에서 퍼티랑 사포 사셔서 퍼티로 평평하게 바르시고 마르면 사포로 다듬으시고 시트지를 붙여야될 것 같아요 같은 시트지가 있을지 모르겠네요
                            </div>
                            <div class="reply-bot">
                                <span> 2시간 전 ·</span>
                                <img src="./resources/icon/LIKE.png" class="img" style="margin-bottom: 10px;">
                                <span>좋아요 39 ·</span>
                                <img src="./resources/icon/dislike.png" class="img" style="margin-top: 7px;">
                                <span>싫어요 -5</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="reply-area">
                    <div class="reply-align">
                        <div class="profile-area">
                            <img style="width: 45px; height: 45px; margin: 5px; border-radius: 15px;" src="./resources/icon/profileTest.png">
                        </div>
                        <div class="reply-info">
                            <div class="reply-top">
                                <div class="reply-writer">
                                    정훈 
                                </div>
                                <div>
                                    일러스트 디자인+8개서비스 고수 
                                </div>
                                <button class="req-btn">견적요청</button>
                            </div>
                            <div class="reply-cont">
                                뜯어져나갈 부분은 깔끔하게 뜯어내시고 가까운 철물점에서 퍼티랑 사포 사셔서 퍼티로 평평하게 바르시고 마르면 사포로 다듬으시고 시트지를 붙여야될 것 같아요 같은 시트지가 있을지 모르겠네요
                            </div>
                            <div class="reply-bot">
                                <span> 2시간 전 ·</span>
                                <img src="./resources/icon/LIKE.png" class="img" style="margin-bottom: 10px;">
                                <span>좋아요 39 ·</span>
                                <img src="./resources/icon/dislike.png" class="img" style="margin-top: 7px;">
                                <span>싫어요 -5</span>
                            </div>
                        </div>
                    </div>
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