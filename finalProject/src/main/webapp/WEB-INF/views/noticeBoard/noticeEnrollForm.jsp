<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-bottom: 100px;
		}
        .a-click {
            text-decoration-line: none;
            color: black;
        }
        body{
            line-height: 1.5;
        }
        h3{
            font-size: 1.75rem;
        }
        a:hover{
            color: white;
            text-decoration: none;
        }
        .SideBar-text{
            color: white;
        }
        .SideBar-text:hover{
            border-bottom: 2px solid white;
        }
        .enroll-style{
            display: flex;
            flex-direction: column;
            padding: 20px;
        }

        .b-close-btn{
            width: 10px;
            right: 0px;
            position: absolute;
            cursor: pointer;
            top: -15px;
        }
        .b-top-section{
            font-size: 30px;
            font-weight: bold;
        }
        .b-bb{
            position: absolute;
            left: 120px;
            font-size: 13px;
            font-weight: bolder;
        }
        .b-cc{
            position: absolute;
            left: 120px;   
            font-size: 13px;
            font-weight: bolder;
        }
        .board-top-section{
            display: flex;
            padding: 15px;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            position: relative;
            margin-top: 15px;
        }
        .b-title{
            width: 350px;
            height: 30px;
            padding-left: 5px;
            padding-bottom: 2px;
            border: 1px solid rgba(96, 96, 96, 0.5);
            border-radius: 8px;
            margin-bottom: 15px;
            resize: none;
            overflow: hidden;
        }
        .b-content{
            width: 350px;
            height: 225px;
            padding: 10px;
            padding-bottom: 130px;
            border: 1px solid rgba(96, 96, 96, 0.5);
            border-radius: 8px;
            margin-bottom: 15px;
            resize: none;
            overflow: hidden;
        }
        .category-container{
            display: flex;
            justify-content: flex-end;
        }
        #category-label{
            font-size : 12px;
            font-weight : bold
        }
        #category{
            font-size : 12px;
            width : 80px;
            height : 20px;
            margin-left: 10px;
        }
        .b-submit-btn{
            background: rgb(218, 76, 60);
            border: none;
            border-radius: 4px;
            width: 100px;
            height: 30px;
            color: white;
            cursor: pointer;
            margin: 7px;
        }
        .b-cancle-btn{
            background-color: rgba(224, 224, 224, 0.5);
            border: 1px solid rgba(224, 224, 224, 0.5);
            border-radius: 4px;
            width: 100px;
            height: 30px;
            margin: 7px;
        }
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<div class="myPageSideBar"><a class="SideBar-text" href="list.co">전체보기</a></div>
			<a class="myPageSideBar" href="curious.co">궁금해요</a>
			<a class="myPageSideBar" href="much.co">얼마예요</a>
			<a class="myPageSideBar" href="together.co">함께해요</a>
			<a class="myPageSideBar" href="notice.co" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">공지사항</a>
		</div>
		<div class="main-box">
			<div class="centerTitle">
				<h3 style="margin: 10px 0 0 20px;">공지사항 글작성</h3>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="community-big">
					<div>
						<form class="enroll-style" action="insertNotice.co">
                            <div class="board">
                                <div class="board-top-section">
                                    <img class="b-close-btn" src="././resources/icon/close.png">
                                    <div class="b-top-section">
                                        <p>공지사항 글쓰기</p>
                                    </div>
                                    <div class="b-align">                
                                        <div class="b-input-area">
                                        <div class="category-container">
                                            <label id = "category-label" for ="category" name="noticeType">카테고리</label>
                                            <select name ="noticeType" id ="category">
                                                <option value="필독">필독</option>
                                                <option value="공지">공지</option>
                                            </select>
                                        </div>
                                            <div class="b-aa">
                                                <div class="b-bb">
                                                    제목
                                                </div>
                                                <input class="b-title" required="required" name="noticeTitle" type="text"/>
                                            </div>  
                                            <div class="b-aa">
                                                <div class="b-cc">
                                                    내용
                                                </div>
                                                <textarea class="b-content" name="noticeContent" type="text" required="required"></textarea>
                                            </div>     
                                        </div>
                                    </div>
                                    <div class="b-btn-area" style="justify-content: center;">
                                        <button type="reset" class="b-cancle-btn">취소</button>
                                        <button type="submit" id="insertBtn" class="b-submit-btn">등록</button>
                                    </div>
                                </div>
                            </div>
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	<script>
		document.getElementById("insertBtn").addEventListener("click", function() {
		  alert("등록이 완료되었습니다.");
		});
	</script>
</body>
</html>