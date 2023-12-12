<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 상세보기</title>
<style>
.hu-content{
    height: 157px;
    width: 300px;
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
    }

.hu-cancle-btn{
    background-color: rgba(224, 224, 224, 0.5);
    border: 1px solid rgba(224, 224, 224, 0.5);
    border-radius: 4px;
    width: 100px;
    height: 30px;
    margin: 7px;
    text-align: center;
}

.hu-btn-area{
    display: flex;
    flex-direction: row;
    margin-top: 15px;
    justify-content: center;
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

</style>

</head>
<body>
<%@ include file="../common/header.jsp" %>

<div class="helpme-board">
    <div class="helpu-top-section">
            <p style="margin-bottom: 2rem;">도와줄게요 상세보기</p>
        <table>
            <tr>
            	<td><span class="span-num">카테고리 번호</span></td>
                <td colspan="2">${b.categoryNo}</td>
            </tr>
           
            <tr>
                <td><span class="span-num">제목</span></td>
                <td colspan="3">${b.boardTitle}</td>
            </tr>
            <tr>
                <td><span class="span-num">내용</span></td>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="4"><p class="hu-content">${b.boardContent}</p></td>
            </tr>
            <tr>
                <td><span class="span-num">파일첨부</span></td>
                <td colspan="3">${at.changeName}</td>
            </tr>
            <tr>
                <td><span class="span-num">희망가격</span></td>
                <td colspan="3">${b.price}</td>
            </tr>
            <tr>
                <td><span class="span-num">게시판</span></td>
                <td colspan="3">${b.boardType}</td>
            </tr>
        </table>
        <br>

        <div class="hu-btn-area">
            <a class="hu-submit-btn" onclick="postFormBtn(1)">수정</a>
            <a class="hu-cancle-btn" onclick="postFormBtn(2)">삭제</a>
        </div>
        
        <form method="post" id="form">
        	<input type="hidden" name="boardNo" value="${b.boardNo}">
        	<input type="hidden" name="filePath" value="${a.changeName}">
        </form>
        
        <script>
        	function postFormBtn(num) {
                if(num === 1) {
                    $("#form").attr('action', 'helpUpdateForm.bo');
                } else {
                    $("#form").attr('action', 'helpDelete.bo');
                }
                $("#form").submit();
            }
        </script>
    </div>
</div>

<%@ include file="../common/footer.jsp" %>


</body>
</html>