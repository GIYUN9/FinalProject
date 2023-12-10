<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-상세보기</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
        .main-box{
            position: relative;
        }
		.pageBox{
			margin-bottom: 100px;
            min-height: 721px;
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
            color: black
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

        .img {
            width: 0.8em;
            height: auto;
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
            z-index: 1;
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
				<div class="community-big">
					 <div class="de-title">
                        <div class="title-a">
                               	제목
                        </div>
                        <div class = "title-b">
                            ${b.boardTitle }
                        </div>  
                     </div>  
                     <br>
                     <div class="de-name">
                        <div class="name-a">
                                	작성자 
                        </div>
                        <div class="name-b">
                            ${b.memberName}
                        </div>              
                     </div> 
                     <br>
                     <div class="de-content">
                        <div class="content-a">
                            	내용
                        </div>
                        <div class="content-b">
                            ${b.boardContent } 
                        	
                        </div>
                     </div> 
					
                    
                    

                    <!-- 수정하기 삭제하기는 관리자 혹은 작성자에게만 보이게 조건걸어주기 -->
                    <c:if test="${loginUser.memberName eq b.memberName || loginUser.memberName=='관리자'}">
					    <div align="center">
					        <a class="" onclick="postFormSubmit(1)">수정하기</a>
					        <a class="" onclick="postFormSubmit(2)">삭제하기</a>				
					    </div>
					    <br><br>
					</c:if>
					
					 <form action="" method="post" id="postForm">
		           		<input type="hidden" name="boardNo" value="${b.boardNo}">	      
		             </form>
		             
					<script>
						function postFormSubmit(num){
							if(num === 1){
		                        $("#postForm").attr('action', '수정은 어디로 갈까');
								// document.querySelector('#postForm').setAttribute('action', 'updateForm.bo');
							} else{
		                        $("#postForm").attr('action', '삭제는 어디로 갈까');
								// document.querySelector('#postForm').setAttribute('action', 'deleteForm.bo');
							}
		                    $("#postForm").submit();
		                    // document.querySelector('#postForm').submit();
						}
					</script>
                </div>
			</div>		
		</div>
	</div>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>