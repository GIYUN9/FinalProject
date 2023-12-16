<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 게시글 수정</title>
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
    }
    .hu-cancle-btn{
        background-color: rgba(224, 224, 224, 0.5);
        border: 1px solid rgba(224, 224, 224, 0.5);
        border-radius: 4px;
        width: 100px;
        height: 30px;
        margin: 7px;
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
        border: 1px solid rgba(96, 96, 96, 0.5);
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
    .aa{
	
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
    
    #boardType-check{
    }

    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
    }

</style>

</head>
<body>
<%@ include file="../common/header.jsp" %>
 	<div>
        <div class="helpme-board">
            <div class="helpu-top-section">
                <img class="hu-close-btn" src="././resources/icon/close.png">
                    <div class="hu-top-section">
                        <p style="margin-bottom: 2rem;">도와줄게요 수정</p>
                    </div>
               <form method="post" action="helpUpdate.bo" enctype="multipart/form-data">
               	<input type="hidden" value="${b.boardNo}" name="boardNo">
                    <div class="hu-align">
                        <div class="hu-input-area">                   
                           <div class="category">
                               <div class="cate-no">
                                   카테고리 번호
                               </div>
                               <select name="categoryNo" id="category-check">
                               		<option value="200">200</option>
                               		<option value="201">201</option>
                               		<option value="202">202</option>
                               		<option value="203">203</option>
                               		<option value="204">204</option>
                               		<option value="205">205</option>
                               </select>
                           </div> 
                   
                            <div class="aa">
                                <div class="bb">
                                    제목
                                </div>
                                <input class="hu-title" type="text" name="boardTitle" value="${b.boardTitle }">
                            </div>  
                            <div class="aa">
                                <div class="cc">
                                    내용
                                </div>
                                <textarea class="hu-content" type="text" name="boardContent">${b.boardContent}</textarea>
                            </div>  
                      		<div class="aa">
                                <label class="hu-upfile" for="hu-upfile">
                                    파일첨부
                                    <img class="clip-img" src="././resources/icon/paperclip.png">
                                </label>
                                <div class="hu-uploaded">
                                    <input class="hu-filename" type=text id="fileName" name="reupfile">
                                    <div class="dd">
                                        파일첨부
                                    </div>
                                    <input id="hu-upfile" class="hu-upfile" type="file" name="reupfile" style="display: none;" onchange="javascript:document.getElementById('fileName').value = this.value">
                                </div>
                                
                            </div>   
                       
                            <div class="aa">
                                <input class="hu-price" type="text" id="price" name="price" min="1000" maxlength="10000" inputmode="numeric" placeholder="최대 1,000" value="${b.price}">
                                <p class="price-measure2">원</p>
                                    <div class="ee">
                                        희망가격
                                    </div>
                            </div> 
                             <div class="category">
                               <div class="cate-no" style="top: 328px; left: -77px;">
                                   게시판
                               </div>
                               <select name="boardType" id="boardType-check" value="${b.boardType }">
                               		<option value="1">도와줄게요</option>
                               		<option value="2">도와주세요</option>
                               </select>
                           </div>
                        </div>
                    </div>
                    <div class="hu-btn-area">
                        <button type="reset" class="hu-cancle-btn">취소</button>
                        <button type="submit" class="hu-submit-btn">수정</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<script>
	$(document).on('keyup','input[inputmode=numeric]',
		function(event){
			this.value = this.value.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
			this.value = this.value.replace(/,/g,'');          // ,값 공백처리
			this.value = this.value.replace(/\B(?=(\d{3})+(?!\d))/g, ","); // 정규식을 이용해서 3자리 마다 , 추가 	
	});

</script>


<%@ include file="../common/footer.jsp" %>


</body>
</html>