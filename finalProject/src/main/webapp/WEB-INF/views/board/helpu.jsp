<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        height: 500px;
        margin-left: 30%;
        margin-top: 7%;
        margin-bottom: 10%;
        border-radius: 8px;
        display: flex;
        flex-direction: column;
	}
    .helpu-top-section{
        display: flex;
        padding: 15px;
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
        top: 4px;
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
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
    }
    .hu-upfile{
        width: 300px;
        height: 32px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
    }
    .hu-price{
        width: 300px;
        height: 27px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
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
        top: 208px;
    }
    .ee{
        position: absolute;
        left: -86px;
        top: 260px;
        font-size: 13px;
        font-weight: bolder;
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
                        <p>도와줄게요 게시글 작성</p>
                    </div>
                    <div class="hu-align">
                        <div class="hu-input-area">
                            <div class="aa">
                                <input class="hu-title" type="text">
                                    <div class="bb">
                                        제목
                                    </div>
                                </input>
                            </div>  
                            <div class="aa">
                                <input  class="hu-content" type="text">
                                    <div class="cc">
                                        내용
                                    </div>
                                </input>
                            </div>  
                            <div class="aa">
                                <input class="hu-upfile" type="text">
                                    <div class="dd">
                                        파일첨부
                                    </div>
                                </input>
                            </div>  
                            <div class="aa">
                                <input class="hu-price" type="text">
                                    <div class="ee">
                                        희망가격
                                    </div>
                                </input>
                            </div>  
                            <!-- <div class="hu-title">
                                <p class="hu-text">제목</p>
                            </div>
                            <div class="hu-content">
                                <p class="hu-text">내용</p>
                            </div>
                            <div class="hu-upfile">
                                <p class="hu-text">파일첨부</p>
                            </div>
                            <div class="hu-price">
                                <p class="hu-text">희망 가격</p>
                            </div> -->
                        </div>
                    </div>
                    <div class="hu-btn-area">
                        <button class="hu-cancle-btn">취소</button>
                        <button class="hu-submit-btn">등록</button>
                    </div>

            </div>
        </div>

    </div>
<%@ include file="../common/footer.jsp" %>




</body>
</html>