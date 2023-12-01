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
	.report-board{
        background-color: white;
        width: 600px;
        height: 700px;
        margin-left: 34%;
        margin-top: 7%;
        margin-bottom: 10%;
        border-radius: 8px;
        display: flex;
        flex-direction: column;
	}
    .report-top-section{
        display: flex;
        padding: 15px;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        position: relative;
        margin-top: 6px;
        font-size: 19px;
        font-weight: bold;
    }
    .report-close-btn{
        width: 10px;
        right: 20px;
        position: absolute;
        cursor: pointer;
        top: 4px;
	}

    .report-close-btn:hover{
        cursor: pointer;
        opacity: 0.5;
    }
    .re-submit-btn{
        background: rgb(218, 76, 60);
        border: none;
        border-radius: 4px;
        width: 100px;
        height: 30px;
        color: white;
        margin: 7px;
    }

    .re-submit-btn:hover{
        cursor: pointer;
        opacity: 0.6;
    }
    .re-cancle-btn{
        background-color: rgba(224, 224, 224, 0.5);
        border: 1px solid rgba(224, 224, 224, 0.5);
        border-radius: 4px;
        width: 100px;
        height: 30px;
        margin: 7px;
    }

    .re-cancle-btn{
        cursor: pointer;
        opacity: 0.5;
    }
    .re-title{
        width: 300px;
        height: 20px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
    }
    .re-content{
        width: 300px;
        height: 157px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
        padding: 10px;
        padding-bottom: 130px;
    }

    .re-content-cl{
        width: 300px;
        height: 157px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
        padding: 10px;
        padding-bottom: 130px;
    }
    .re-upfile{
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
    .report-input-area{
        display: flex;
        flex-direction: column;
        position: relative;
    }
    .report-align{
        display: flex;
        flex-direction: row;
    }
    
    .report-top-section{
        margin-bottom: 30px;
    }
    .re-btn-area{
        display: flex;
        flex-direction: row;
        margin-top: 15px;
    }
    .aa{

    }
    .re-content2 {
    position: absolute;
    left: -103px;
    top: 36px;
    font-size: 13px;
    font-weight: bolder;
    }

    .re-content1{
        position: absolute;
        left: -94px;
        top: 1px;
        font-size: 13px;
        font-weight: bolder;
    }
    .re-content3{
        position: absolute;
        left: -94px;
        top: 72px;
        font-size: 13px;
        font-weight: bolder;
    }
    .re-content5{
        position: absolute;
        left: -86px;
        font-size: 13px;
        font-weight: bolder;
        top: 420px;
    }
    .ee{
        position: absolute;
        left: -86px;
        top: 260px;
        font-size: 13px;
        font-weight: bolder;
    }
    .re-content4{
        position: absolute;
        left: -106px;
        top: 246px;
        font-size: 13px;
        font-weight: bolder;
    }
    .report-line > .re-title,
    .re-content{
        background-color: rgb(224, 224, 224);
        font-size: 12px;
        font-weight: bold;
        padding-left: 10px;
    }

    #file-upload-btn{
        width: 600px;
    }
</style>

</head>
<body>
<%@ include file="../common/header.jsp" %>
 	<div>
        <div class="report-board">
            <div class="report-top-section">
                <img class="report-close-btn" src="././resources/icon/close.png">
                    <div class="report-top-section">
                        <p>신고하기</p>
                    </div>
                    
                    <div class="report-align">
                        <div class="report-input-area">
                            <div class="report-line">
                                <div class="re-title" type="text" readonly>
                                    '헬스'이제 시작해보자구!
                                    <div class="re-content1">
                                        신고글 제목
                                    </div>
                                </div>
                            </div>  
                            <div class="report-line">
                                <div class="re-title" type="text" readonly>
                                        김경보님
                                    <div class="re-content2">
                                        신고글 작성자
                                    </div>
                                </div>
                            </div>  
                            <div class="report-line">
                                <div  class="re-content" type="text">
                                    이렇게 괜찮은 걸 왜 나는
                                    <div class="re-content3">
                                        신고글 내용
                                    </div>
                                </div>
                            </div>  
                            <div class="report-line">
                                <input  class="re-content-cl" type="text">
                                    <div class="re-content4">
                                        신고하는 내용
                                    </div>
                                </input>
                            </div>  
                            <div class="report-line">
                                <input type = "file" class="re-upfile">
                                    <div class="re-content5">
                                        파일첨부
                                    </div>
                                </input>
                            </div>  
                           
                          
                        </div>
                    </div>
                    <div class="re-btn-area">
                        <button class="re-cancle-btn">취소</button>
                        <button class="re-submit-btn">신고하기</button>
                    </div>

            </div>
        </div>

    </div>
<%@ include file="../common/footer.jsp" %>




</body>
</html>