<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 게시글 수정</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/helpboder.css">

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
                                <input class="hu-price" type="number" id="price" name="price" min="1000" max="10000" placeholder="최대 1,000" value="${b.price}">
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
	// $(document).on('keyup','input[inputmode=numeric]',
	// 	function(event){
	// 		this.value = this.value.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
	// 		this.value = this.value.replace(/,/g,'');          // ,값 공백처리
	// 		this.value = this.value.replace(/\B(?=(\d{3})+(?!\d))/g, ","); // 정규식을 이용해서 3자리 마다 , 추가 	
	// });

</script>


<%@ include file="../common/footer.jsp" %>


</body>
</html>