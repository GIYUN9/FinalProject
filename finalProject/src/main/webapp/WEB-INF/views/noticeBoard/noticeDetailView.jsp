<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-상세보기</title>
<link rel="stylesheet" href="././resources/css/myPgae.css">
<style>
.main-box {
	position: relative;
}

.pageBox {
	margin-bottom: 100px;
	min-height: 721px;
	padding: 20px;
}

.com-title {
	font-weight: bold;
}

.com-service {
	font-size: 14px;
	color: rgb(147, 147, 150);
	font-weight: bold;
}

.com-loca {
	font-size: 14px;
	color: rgb(147, 147, 150);
	font-weight: bold;
}

.com-thum {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: flex-start;
}

.board-info {
	font-size: 14px;
	color: rgb(147, 147, 150);
}

.cont-area {
	width: 100%;
	border-top: 1px solid rgba(226, 226, 226, 0.4);
	border-bottom: 1px solid rgba(226, 226, 226, 0.4);
	min-height: 200px;
	position: relative;
	padding: 30px;
}

.img {
	width: 20px;
	height: 20px;
	cursor: pointer;
}

.img-area {
	position: absolute;
	bottom: 1px;
	margin-bottom: -35px;
	color: #888888;
	margin-top: 10px;
	display: flex;
	width: 95%;
	flex-direction: row;
	justify-content: space-between;
	font-size: 14px;
}

.reply-align {
	display: flex;
	flex-direction: row;
	padding: 10px;
}

.reply-info {
	width: 100%;
}

.reply-top {
	display: flex;
	position: relative;
	flex-direction: column;
	margin-bottom: 10px;
	color: #888888;
}

.reply-bot {
	color: #888888;
}

.req-btn {
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

#replydelete {
	color: #00c7ae;
	font-size: 12px;
	border: 0;
	background-color: white;
	cursor: pointer;
	padding-left: 3px;
}

.reply-writer {
	color: black;
	font-size: 17px;
	font-weight: 600;
}

.re-input-btn {
	background: rgb(0, 199, 174);
	cursor: pointer;
	font-weight: bold;
	color: white;
	border: none;
	border-radius: 4px;
	width: 70px;
	height: 35px;
}

.re-input-btn:hover {
	opacity: 0.5;
}

.comment_section {
	display: table;
	width: 100%;
	position: relative;
	padding: 19px 0 16px;
	table-layout: fixed;
	box-sizing: border-box;
}

.reply-input {
	width: 100%;
	padding-left: 16px;
}

.reply-content {
	width: 80%;
	height: 35px;
	border-radius: 8px;
	border: 1px solid rgba(96, 96, 96, 0.6);
}

#comment-write {
	display: flex;
	align-items: center;
	padding: 30px;
	justify-content: center;
	margin-bottom: 10px;
}

.pfs-align {
	display: flex;
	flex-direction: column-reverse;
}

.likeyYBtn:hover {
	opacity: 0.5;
}
.likeyYBtn{
	border : 0px;
	background-color: white; 
	outline: none;
}
.likeyYBtn:focus{
	scale: 1.1;
	outline: none;
}

.reply-likey-btn:hover{
	opacity : 0.5;
}
.reply-likey-btn{
	border : 0px;
	background-color: white; 
	outline: none;
}
.reply-likey-btn:focus{
	scale: 1.1;
	outline: none;
}


</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr
				style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<a class="myPageSideBar" href="list.co"
				style="font-weight: bolder; background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">전체보기</a>
			<a class="myPageSideBar" href="curious.co">궁금해요</a> <a
				class="myPageSideBar" href="much.co">얼마예요</a> <a
				class="myPageSideBar" href="together.co">함께해요</a> <a
				class="myPageSideBar" href="notice.co">공지사항</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">상세보기</h3>
			<div class="pageBox"
				style="display: flex; flex-direction: column; position: relative;">
				<div class="title-area">
					<p class="com-service">${b.boardType == 3 ? '궁금해요' : b.boardType == 4 ? '얼마예요' : '함께해요'}
					</p>
					<h4 class="com-title">${b.boardTitle}</h4>
					<c:choose>
						<c:when test="${b.location == null}">
							<p class="com-loca">주소 알 수 없음</p>
						</c:when>
						<c:otherwise>
							<p class="com-loca">${b.location}</p>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="com-thum">
					<div>
						<img
							style="width: 70px; height: 70px; margin: 15px; border-radius: 15px;"
							src="${b.filePath }">
					</div>
					<div>
						<div style="margin-bottom: 5px;">${b.memberName}</div>
						<div class="board-info">${b.createDate }·조회수  ${b.viewCount}</div>
					</div>
				</div>

				<div class="cont-area">
					${b.boardContent } <br> <br> <br>
					<div class="img-area">
						<div>
							<button class="likeyYBtn" onclick="insertLikey()">
								<img id = "likeyImg" src="./resources/icon/LIKE.png" class="img"
									style="margin-bottom: 10px;"> <span id="likeyNum"
									class="likeyNum">${b.likeyCount }</span>
							</button>

							<span>·</span> <span id="viewNum" class="viewNum">조회수
								${b.viewCount} </span>
						</div>
						<div class="pfs-align">
							<div>
								<c:if
									test="${loginUser.memberName eq b.memberName || loginUser.memberName=='관리자'}">
									<div align="center">
										<a class="" onclick="postFormSubmit(1)"
											style="font-size: 11px; cursor: pointer;">수정하기</a> <a
											class="" onclick="postFormSubmit(2)"
											style="font-size: 11px; cursor: pointer;">삭제하기</a>
									</div>
									<br>
									<br>
								</c:if>
								<form action="" method="post" id="postForm">
									<input type="hidden" name="boardNo" value="${b.boardNo}">
								</form>
							</div>
							<div style="text-align: end;">${b.createDate }</div>
						</div>
					</div>
				</div>

				<div class="reply-input">
					<c:choose>
						<c:when test="${loginUser !=null }">
							<div id="comment-write">
								<input id="reply-boardNo" type="hidden" value="${b.boardNo}">
								<input id="WriterNo" type="hidden" value="${loginUser.memberNo}">
								<input id="reply-content" class="reply-content"
									name="replyContent" type="text" placeholder="댓글을 입력해주세요">
								<button id="comment-write-btn" class="re-input-btn"
									onclick="insertReply()">등록</button>
							</div>
						</c:when>
						<c:otherwise>
							<input class="reply-input" name="replyContent" type="text"
								style="width: 80%;" readonly placeholder="로그인 후 댓글작성이 가능합니다.">
						</c:otherwise>
					</c:choose>
				</div>
				<div class="reply-area"></div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	<script>
		let likeyImg = document.getElementById('likeyImg');

		let isClick = false;
		likeyImg.addEventListener('click', function(){

			isClick = !isClick;
			
			if(isClick){
				likeyImg.src = "./resources/icon/LIKE.png";
			}else{
				likeyImg.src = "./resources/icon/likelocked.png";
			}
		})

    	
    	
        function postFormSubmit(num){
            if(num === 1){
                $("#postForm").attr('action', 'updatePage.co');
                // document.querySelector('#postForm').setAttribute('action', 'updateForm.bo');
            } else{
                $("#postForm").attr('action', 'deletePage.co');
                // document.querySelector('#postForm').setAttribute('action', 'deleteForm.bo');
            }
            $("#postForm").submit();
            // document.querySelector('#postForm').submit();
        }
        
        window.onload = function(){
            //댓글 가져와서 그려주기
            selectReplyList();
            
        }
        
    
        
        
        //댓글 Enter 입력 시 댓글 등록기능
        //$("#comment-write-btn").click(function() {
            //insertReply();
        //});
        
        $("#reply-content").keypress(function(e) {
            if (e.key === "Enter") {
                insertReply();
            }
        });
        
        function insertReplyLikey(replyNo){
        	console.log(replyNo)
        	const boardNo = document.getElementById("reply-boardNo").value;
        	const memberNo = document.getElementById("WriterNo").value;      	
			
        	console.log("댓글 좋아요 => 보드넘버 : "  + boardNo + "멤버 넘버 : " +  memberNo + "댓글 넘버 : "+ replyNo);
        	
        	$.ajax({
        		type : "post",
        		url : "insertReply.li",
        		data : {
        			 "memberNo" : memberNo,
        			 "boardNo" : boardNo,
        			 "replyNo" : replyNo
        		},
        		success : function(result){	
        			var data = JSON.parse(result);
        			if(data.result1 > 0){//좋아요 insert 성공
        				console.log("댓글에 좋아요 인설트 성공");
        				increaseReplyLikey(replyNo);	
        				
        				document.getElementById("relikeyNum" + replyNo).innerHTML = data.likeyCount;
        			}else if (data.result2 > 0){
        				console.log("댓글에 좋아요에 NNNNN값이 있네?");
        				document.getElementById("relikeyNum" + replyNo).innerHTML = data.likeyCount;
        				
        			}else{
        				console.log("댓글에 좋아요가 있네?");	
        				document.getElementById("relikeyNum" + replyNo).innerHTML = data.likeyCount;
        			}
        			
        		},
        		error: function(){
                    console.log("요청 실패");
                }	
        	});
        }

     
        
        function increaseReplyLikey(replyNo){
        	const boardNo = document.getElementById("reply-boardNo").value;
        	const memberNo = document.getElementById("WriterNo").value;
       		console.log("asdfsadfsdfsadf  replyNo : " + replyNo);
        	
        	$.ajax({
        		type : "post",
                url : "increaseReply.li",
               
                data : {
                	 "memberNo" : memberNo,
        			 "boardNo" : boardNo,
        			 "replyNo" : replyNo
                },
                success: function(result){ 
                	var data = JSON.parse(result);

               		console.log("increaseReplyLikey +1증가 성공!! ");	
               		console.log("increaseReplyLikey 과연 값이 올까요?"+ data.reLikeyCount);		
               		document.getElementById("relikeyNum" + replyNo).innerHTML = data.reLikeyCount;
                
                },
                error:function(){
                    console.log("요청 실패");
                }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        function insertLikey(){
        	const boardNo = document.getElementById("reply-boardNo").value;
        	const memberNo = document.getElementById("WriterNo").value;
        	console.log(boardNo + "    " + memberNo);
        	
        	$.ajax({
        		type : "post",
        		url : "insert.li",
        		data : {
        			 "memberNo" : memberNo,
        			 "boardNo" : boardNo
        		},
        		success : function(result){	
        			var data = JSON.parse(result);
        			if(data.result1 > 0){//좋아요 insert 성공
        				console.log("좋아요 인설트 성공");
        				increaseLikey();	
        				
        				document.getElementById("likeyNum").innerHTML = data.likeyCount;
        			}else if (data.result2 > 0){
        				console.log("좋아요에 NNNNN값이 있네?");
        				document.getElementById("likeyNum").innerHTML = data.likeyCount;
        				
        			}else{
        				console.log("좋아요가 있네?");	
        				document.getElementById("likeyNum").innerHTML = data.likeyCount;
        			}
        			
        		},
        		error: function(){
                    console.log("요청 실패");
                }	
        	});
        }
        
        
        function increaseLikey(){
        	const boardNo = document.getElementById("reply-boardNo").value;
        	const memberNo = document.getElementById("WriterNo").value;
        	$.ajax({
        		type : "post",
                url : "increase.li",
               
                data : {
                	 "memberNo" : memberNo,
        			 "boardNo" : boardNo
                },
                success: function(result){ 
                	var data = JSON.parse(result);
               
          
               		console.log("+1증가 성공!! ");	
               		console.log("과연 값이 올까요?"+ data.likeyCount);		
               		document.getElementById("likeyNum").innerHTML = data.likeyCount;
                
                },
                error:function(){
                    console.log("요청 실패");
                }
            });
        }
        
        
        //댓글 등록 기능
        function insertReply(){
            const boardNo = document.getElementById("reply-boardNo").value;
            const memberNo = document.getElementById("WriterNo").value;
            const contents = document.getElementById("reply-content").value;

            $.ajax({
                type : "post",
                url : "insert.re",
                data : {
                    "memberNo" : memberNo,
                    "replyContent" : contents,
                    "boardNo" : boardNo
                },
                success: function(result){                    
                    
                    if(result >0){ //댓글 작성성공
                        console.log("인설트 성공!! ");
                        document.getElementById("reply-content").value = "";
                        selectReplyList();	
                    }
                },
                error:function(){
                    console.log("요청 실패");
                }
            });
        }
        
      //댓글 리스트 그리기
        function selectReplyList() {
            $.ajax({
                url: "list.re",
                data: {
                    boardNo: document.getElementById("reply-boardNo").value
                },
                success: function(res) {
                    
                    let str = "";
                    for (let reply of res) {
                        console.log(reply);
                        str += 
                      
                            "<div class=\"reply-align\" id=\"reply-align\">" +
                            "<div class=\"profile-area\">" +
                            "<img style=\"width: 45px; height: 45px; margin: 5px; border-radius: 15px;\" src="+ reply.filePath +">" +
                            "</div>" +
                            "<div class=\"reply-info\">" +
                            "<div class=\"reply-top\">" +
                            "<div class=\"reply-writer\" id = \"reply-writer\">" +                              
                            reply.memberName;					                
                            if("${loginUser.memberName}" == reply.memberName || "${loginUser.memberName}" == "관리자"){
                                str += "<button id = 'replydelete' onclick='replydelete("+reply.replyNo+")'>" + 
                                    "삭제하기" + 
                                   "</button>";
                            }
        
                            str += "</div>" +					               
                            "<div>" +
                            "일러스트 디자인+8개서비스 고수" +
                            "</div>" +
                            "<button class=\"req-btn\">견적요청</button>" +
                            "</div>" +
                            "<div class=\"reply-cont\">" +
                            reply.replyContent +
                        "</div>" +
                        "<div class=\"reply-bot\">" +
                        "<span>" + reply.createDate + " </span>" +
                        "<button class= \"reply-likey-btn\" onclick= \"insertReplyLikey("+reply.replyNo+")\">"+
                        "<img src=\"./resources/icon/LIKE.png\" class=\"img\" style=\"margin-bottom: 10px;\">" +
                        "<span id=\"relikeyNum"+reply.replyNo+"\" class=\"relikeyNum\">"+ reply.reLikeyCount + "</span>" +
                        "</button>"+      
                        "<span>·</span>"+
                        "<img src=\"./resources/icon/dislike.png\" class=\"img\" style=\"margin-top: 7px;\">" +
                        "<span>싫어요 -5</span>" +
                        "</div>" +
                        "</div>" +
                        "<input name = \"replyNo\" id=\"replyNo\" type=\"hidden\" value=\"${reply.replyNo}\">"+
                        "</div>";
                    }
                    document.querySelector('.reply-area').innerHTML = str;
                },
                error: function() {
                    console.log("댓글 목록 조회 실패");
                }
            });
        }
        
        //댓글 삭제하기 기능
        function replydelete(replyNo) {
            console.log("삭제를 시작해볼까? :" + replyNo);
               
            $.ajax({
                type : "post",
                url :"delete.re",
                data : {
                    "replyNo" : replyNo
                },
                success:function(result){
                    if(result >0){ //댓글 작성성공
                        console.log("DELETEM 성공!! ");                                   
                        selectReplyList();	
                    }
                },
                error:function(){
                    console.log("요청 실패");
                }
                });
        }
        
        $("#comment-write-btn").keypress(function(ev) {
              if (ev.keyCode === 13) {
                ev.insertReply();
                // do something
              }
            });
            
    </script>
</body>
</html>