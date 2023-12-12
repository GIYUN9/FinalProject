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
    .container{
        background-color: white;
        width: 40%;
        max-height: 20%;
        padding: 21px;
        margin-top: -495px;
        margin-right: 32%;
        border-radius: 15px;
        margin-bottom: 20px;
    }

    .community-ul{
        width: 190px;
        height: 500px;
        margin: 190px 5px 0px 253px;
        color: white;
    }

    .community-list {
        list-style: none;
        font-size: 27px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
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

    .date{
        float: right;
    }

    .card-link{
        color: black;
        font-weight: bold;
    }

    .card-list{
        list-style: none;
        margin-bottom: 15px;
    }

    #accordion{
        margin-left: -26px;
        padding: 4px;
        margin-right: 0px;    }

    .container-h2{
        margin: 0px 8px 20px;
        font-size: 30px;
        color: black;
    }

    .arrow-img{
        width: 20px;
        height: 20px;
        float: right;
        margin-top: 10px;
    }

    .poom-span{
        margin-left: 20px;
    }
    
    .container-com{
        margin-bottom: 20px;
    }

    .card{
      margin-left: 26px;
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
      color: white;
    }

    .card-header {
      padding: 0.75rem 1.25rem;
      margin-bottom: 0;
      background-color: rgb(255 171 72 / 3%);
      border-bottom: 1px solid rgba(224,224,224,0.5);
      border-radius: 5px;  
    }
    .collapse show{
      border-bottom: 1px solid rgba(224,224,224,0.5);

    }
/*
    a::after{
		display:block;
		content: '';
		border-bottom: solid 2px #ffffff;  
		transform: scaleX(0);  
		transition: transform 250ms ease-in-out;
	}
    a:hover::after{
        transform: scaleX(1);
    }
*/

	.centerTitle{
		display: flex;
	    flex-direction: row;
	    justify-content: space-between;
	}
	
	.createNotice-btn{
		align-self: end;
		width: 120px;
	    height: 35px;
	    padding-top: 10px;
	    cursor: pointer;
	    text-decoration: none;
	    color: white;
	}
	.createNotice-btn:hover {
        color: white;
	}
	.del-not{
        background: rgb(218, 76, 60);
        color: white;
        border: none;
        border-radius: 4px;
        padding: 5px;
        font-size: 13px;
    }
    .del-not:hover{
        scale: 0.98;
    }
    .write-icon{
        width: 20px;
        height: 20px;
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
				<h3 style="margin: 10px 0 0 20px;">공지사항</h3>
				<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
					<a class="createNotice-btn" href="noticeEnrollForm.co">
                        <img class="write-icon" src="././resources/icon/pencil.png" alt="">
                        공지 작성
                    </a>
				</c:if>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="community-big">   
                    <div id="accordion">
                        <ul>
                        <c:forEach var="n" items="${nList}">
                            <li class="card-list">
                                <div class="card">
                                    <div class="card-header">
                                      <a class="card-link" data-toggle="collapse" href="#collapse${n.noticeNo}" 
                                      style="color: black" 
                                      onmouseover="this.style.color='rgb(0, 199, 174)'" 
                                      onmouseout="this.style.color='black';">
                                        <span>${n.noticeType}</span>
                                        <span class="poom-span">${n.noticeTitle}</span>
                                        <span class="date">${n.createDate}</span>
                                      </a>
                                    </div>
                                    <div id="collapse${n.noticeNo}" class="collapse show" data-parent="#accordion">
                                      <div class="card-body">
                                        ${n.noticeContent}
                                      </div>
                                      <c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
	                                      <form action="deleteNotice.co" style="float: right; margin-right: 10px; margin-bottom: 10px;">
	                                      	<input type="hidden" name="noticeNo" value="${n.noticeNo}">
	                                      	<button class="del-not" type="submit">공지 삭제</button>
	                                      </form>
                                      </c:if>
                                      
                                    </div>
                                </div>
                            </li>
            			</c:forEach>
                        </ul>
            
                      </div>
                </div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>