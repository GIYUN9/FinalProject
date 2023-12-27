<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 상세보기</title>
<style>

*,
	*::before,
	*::after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
	
body{
	background: url('././resources/image/main.png') no-repeat center center fixed; 
	background-size: cover;		
}
	
.helpme-board{
	background-color: white;
	width: 700px;
	height: 100%;
	margin-left: 30%;
	margin-top: 7%;
	margin-bottom: 10%;
	border-radius: 8px;
	display: flex;
	flex-direction: column;
}
	
.helpu-top-section{
	display: flex;
	padding: 10px;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	position: relative;
	margin-top: 15px;
}
    
.hu-close-btn{
	width: 10px;
	right: 20px;
	position: absolute;
	cursor: pointer;
	top: 0px;
}
	
.hu-submit-btn{
	background: rgb(218, 76, 60);
	border: none;
	border-radius: 4px;
	width: 100px;
	height: 30px;
	color: white;
	cursor: pointer;
	margin: 7px;
	text-align: center;
	align-items: center;
    display: flex;
    justify-content: center;
}

.hu-cancle-btn{
	background-color: rgba(224, 224, 224, 0.5);
	border: 1px solid rgba(224, 224, 224, 0.5);
	border-radius: 4px;
	width: 100px;
	height: 30px;
	margin: 7px;
	cursor: pointer;
	text-align: center;
	align-items: center;
    display: flex;
    justify-content: center;
}
    
.hu-title{
	width: 300px;
	height: 20px;
	border: 1px solid rgba(96, 96, 96, 0.5);
	border-radius: 8px;
	margin-bottom: 15px;
}
    
.hu-content{
	width: 300px;
	height: 157px;
	padding: 10px;
	padding-bottom: 130px;
	border: none;
	border-radius: 8px;
	margin-bottom: 15px;
	resize: none;
	overflow: hidden;
}
    
.hu-upfile{
	width: 300px;
	height: 32px;
	border: 1px solid rgba(96, 96, 96, 0.5);
	border-radius: 8px;
	margin-bottom: 0px;
	display: flex;
	font-size: 14px;
	align-items: center;
	justify-content: center;
	cursor: pointer;
}
    
input[type=file]::file-selector-button {
	width: 150px;
	height: 30px;
	background: #fff;
	border: 0px solid rgb(77,77,77);
	margin-left: 70px;
	border-radius: 10px;
	cursor: pointer;
	font-size: 12px;
}
    
.hu-price{
	width: 300px;
	height: 27px;
	border: 1px solid rgba(96, 96, 96, 0.5);
	border-radius: 8px;
	margin-bottom: 15px;
	text-align: end;
	padding-right: 26px;    
}

.hu-input-area{
	display: flex;
	flex-direction: column;
	position: relative;
}

.hu-align{
	display: flex;
	flex-direction: row;
}

.hu-text{
	position: relative;
	text-align: center;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	left: -202px;
	font-weight: bold;
	display: flex;
}
    
.hu-top-section{
	margin-bottom: 30px;
}
    
.hu-btn-area{
	display: flex;
	flex-direction: row;
	margin-top: 15px;
}

.bb{
	position: absolute;
	left: -71px;
	top: 1px;
	font-size: 13px;
	font-weight: bolder;
}
    
.cc{
	position: absolute;
	left: -71px;
	top: 37px;
	font-size: 13px;
	font-weight: bolder;
}
    
.dd{
	position: absolute;
	left: -86px;
	font-size: 13px;
	font-weight: bolder;
	top: 219px;
}
    
.ee{
	position: absolute;
	left: -86px;
	top: 287px;
	font-size: 13px;
	font-weight: bolder;
}
    
.clip-img{
	width: 30px;
	position: absolute;
	left: 96px;
    height: 30px;
    bottom: 100px;
    }
    
.upfile-text{
	width: 100%;
}
    
.hu-uploaded{
	margin-bottom: 18px;
	font-size: 12px;
}
    
.price-measure2{
	position: absolute;
	right: 12px;
	font-size: 13px;
	top: 284px;
	font-weight: bold;
}
    
.hu-filename{
	border: none;
}
    
.cate-no{
	position: absolute;
	top: -35px;
	left: -100px;
	font-weight: bold;
	font-size: 13px;
}
    
.hu-category{
	width: 300px;
	height: 20px;
	border: 1px solid rgba(96, 96, 96, 0.5);
	border-radius: 8px;
	position: absolute;
	top: -36px;
}
    
#category-check{
	width: 100%;
	position: absolute;
	top: -36px;
	border-radius: 8px;
	height: 21px;
}
    
.helpr-text{
    resize:none; 
    width:100%;
}

.img{
	width:50px;
	height: 50px;
}
</style>
<script src="${pageContext.request.contextPath}/resources/js/helpmeboder.js"></script>
</head>
<body>
<%@ include file="../common/header.jsp" %>

<div class="helpme-board">
    <div class="helpu-top-section">
        <img class="hu-close-btn" src="././resources/icon/close.png" onclick="resetList()">
            <div class="hu-top-section">
                <p style="margin-bottom: 2rem; font-weight: bold; font-size: 16px;">도와주세요 상세보기</p>
            </div>
        
        <div class="hu-align">
            <div class="hu-input-area">
            
      <table class="table">
		  <tbody>
		  
		    <tr>
		      <th scope="row">카테고리 번호</th>
		      <td>
		      <td>
		      <td>
		      <td>
		      <td>${b.categoryNo}</td>
		    </tr>
		    
		    <tr>
		      <th scope="row">제목</th>
		      <td>
		      <td>
		      <td>
		      <td>
		      <td>${b.boardTitle}</td>
		    </tr>
		    
		    <tr>
		      <th scope="row">내용</th>
		      <td>
		      <td>
		      <td>
		      <td>
		      <td>${b.boardContent}</td>
		    </tr>
		    
		    <tr>
		      <th scope="row">파일첨부</th>
		      <td>
		      <td>
		      <td>
		      <td>
		      <td>
		      <input type="hidden" value="${b.changeName}">
		      <img class="img" src="${b.changeName}">
		      </td>
		    </tr>
		    
		    <tr>
		      <th scope="row">희망가격</th>
		      <td>
		      <td>
		      <td>
		      <td>
		      <td>${b.price}</td>
		    </tr>
		    
		    <tr>
		      <th scope="row">게시판 번호</th>
		      <td>
		      <td>
		      <td>
		      <td>
		      <td>${b.boardType}</td>
		    </tr>
		    
		    <tr>
		    	<th scope="row">조회 수</th>
		    	<td>
		        <td>
		        <td>
		        <td>
		    	<td><span>${b.viewCount}</span></td>
		    </tr>
		    
		  </tbody>
	 </table>
            </div>
        </div>

    
        <br>

        <div class="hu-btn-area">
            <a class="hu-cancle-btn" onclick="postBtn(2)">삭제</a>
            <a class="hu-submit-btn" style="color: white;" onclick="postBtn(1)">수정</a>
        </div>
        
        <form action="" method="post" id="form">
        	<input type="hidden" name="boardNo" value="${b.boardNo}">
        	<input type="hidden" name="filePath" value="${b.changeName}">
        </form>
        
        
        <!-- <script>
        	function postBtn(num) {
                if(num === 1) {
                    $("#form").attr('action', 'helpmeUpdateForm.bo');
                } else {
                    $("#form").attr('action', 'helpmeDelete.bo');
                }
                $("#form").submit();
            } 	
        	
        	function resetList() {
        		location.href = "helpmeList.bo";
        	}
        </script> -->

    </div>

</div>

<%@ include file="../common/footer.jsp" %>


</body>
</html>