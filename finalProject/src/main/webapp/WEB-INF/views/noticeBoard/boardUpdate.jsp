<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시글 작성</title>
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
	.board{
        background-color: white;
        width: 700px;
        height: 500px;
        margin-left: 30%;
        margin-top: 7%;
        margin-bottom: 10%;
        border-radius: 8px;
        display: flex;
        flex-direction: column;
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
    .b-close-btn{
        width: 10px;
        right: 20px;
        position: absolute;
        cursor: pointer;
        top: 4px;
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
    .b-title{
        width: 450px;
        height: 30px;
        padding-left: 5px;
        padding-top: 3px;
        padding-bottom: 3px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
        resize: none;
        overflow: hidden;
        font-size: 12px;
    }
    .b-content{
        width: 450px;
        height: 225px;
        padding: 10px;
        padding-bottom: 130px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
        resize: none;
        overflow: hidden;
        font-size: 12px;
    }    
    .b-input-area{
        display: flex;
        flex-direction: column;
        position: relative;
    }
    .b-align{
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
    .b-top-section{
        font-size: 30px;
        font-weight: bold;
    }
    .b-btn-area{
        display: flex;
        flex-direction: row;
        margin-top: 15px;
    }
    .b-aa{

    }
    .b-bb{
        position: absolute;
        left: -71px;
        
        font-size: 13px;
        font-weight: bolder;
    }
    
    
    .b-cc{
        position: absolute;
        left: -71px;
        
        font-size: 13px;
        font-weight: bolder;
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
</style>

</head>
<body>
<%@ include file="../common/header.jsp" %>
 	<div>
        <div class="board">
            <div class="board-top-section">
                <img class="b-close-btn" src="././resources/icon/close.png">
                    <div class="b-top-section">
                        <p>커뮤니티 게시판 글쓰기</p>
                    </div>
                   
               <form method="post" action="updateBoard.co">
               <input type="hidden" name="memberNo" value="${loginUser.memberNo}">
               <input type="hidden" name="boardNo" value="${b.boardNo}">
                    <div class="b-align">                
                        <div class="b-input-area">
                        <div class="category-container">
                        	<label id = "category-label" for ="category">카테고리</label>
                        	<select name ="boardType" id ="category">
                        		<option value="3">궁금해요</option>
                        		<option value="4">얼마예요</option>
                        		<option value="5">함께해요</option>
                        	</select>
                        </div>
                            <div class="b-aa">
	                            <div class="b-bb">
	                                   	제목
	                            </div>                          
                                <textarea class="b-title" name="boardTitle" type="text">${b.boardTitle}</textarea>
                            </div>  
                            <div class="b-aa">
                                <div class="b-cc">
                                    	내용
                                </div>
                                <textarea class="b-content" name="boardContent" type="text">${b.boardContent}</textarea>
                            </div>     
                        </div>
                    </div>
                    <div class="b-btn-area" style="justify-content: center;">
                        <button type="reset" class="b-cancle-btn">취소</button>
                        <button type="submit" class="b-submit-btn">등록</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<script>
    const input = document.querySelector('#price');
    input.addEventListener('keyup', function(e) {
    let value = e.target.value;
    value = Number(value.replaceAll(',', ''));
    if(isNaN(value)) {
        input.value = 0;
    }else {
        const formatValue = value.toLocaleString('ko-KR');
        input.value = formatValue;
    }
    })
</script>


<%@ include file="../common/footer.jsp" %>




</body>
</html>