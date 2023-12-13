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
        font-size: 13px;
        font-weight: bold;
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
        font-size: 13px;
         font-weight: bold;
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
        justify-content: space-evenly;
    }
    .aa{

    }
    .re-content2 {
    position: absolute;
    left: -77px;
    font-size: 13px;
    font-weight: bolder;
    }

    .re-content1{
        position: absolute;
        left: -70px;
        top: 1px;
        font-size: 13px;
        font-weight: bolder;
    }
    .re-content3{
        position: absolute;
        left: -70px;
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
        height: 32px;
        align-items: center;
        display: flex;
        text-align: start;
    }

    #file-upload-btn{
        width: 600px;
    }
    .clip-img{
        width: 30px;
        position: absolute;
        left: 96px;
        height: 30px;
        bottom: 95px;
    }
    .upfile-text{
        width: 100%;
    }
    .hu-uploaded{
        margin-bottom: 18px;
        font-size: 12px;
    }
    .hu-filename{
        border: none;
    }
    .dd{
        position: absolute;
        left: -86px;
        font-size: 13px;
        font-weight: bolder;
        top: 419px;
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
    .ar-report{
        width: 300px;
        height: 157px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        resize: none;
        font-size: 13px;
        padding: 10px;
    }
    .ar-text4{
        position: absolute;
        left: -90px;
        font-size: 13px;
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
                        <p>신고글 상세</p>
                    </div>
                    
                        <div class="report-input-area">
                            <div class="report-line">
                                <div class="re-title" type="text" readonly>
                                    '헬스'이제 시작해보자구! (게시물 번호 1)게시글
                                    <div class="re-content1">
                                        제목
                                    </div>
                                </div>
                            </div>  
                            <div class="report-line">
                                <div class="re-title" type="text" readonly>
                                        aaa(asdasd@naver.com)
                                    <div class="re-content2">
                                        작성자
                                    </div>
                                </div>
                            </div>  
                            <div class="report-line">
                                <div  class="re-content" type="text">
                                    바보 같아서 
                                    <div class="re-content3">
                                        내용
                                    </div>
                                </div>
                            </div>  
                            <div class="report-line">
                                    <div class="ar-text4">
                                        신고 내용
                                    </div>
                                    <textarea class="ar-report" name=" id="" cols="30" rows="10" readonly>"바보 같아서"라고 욕설사용함</textarea>
                            <div class="aa">
                                <label class="hu-upfile" for="hu-upfile">
                                    파일첨부
                                    <img class="clip-img" src="././resources/icon/paperclip.png">
                                </label>
                                <div class="hu-uploaded">
                                    <input class="hu-filename" type="text" id="fileName" name="upfile">
                                </div>
                                <div class="dd">
                                    파일첨부
                                </div>
                                <input id="hu-upfile" class="hu-upfile" type="file" name="upfile" style="display: none;" onchange="javascript:document.getElementById('fileName').value = this.value">
                            </div>  
                        </div>                    <div class="re-btn-area">
                        <button class="re-submit-btn">답변하기</button>
                        <button class="re-cancle-btn">취소</button>
                    </div>

            </div>
        </div>

    </div>
<%@ include file="../common/footer.jsp" %>




</body>
</html>