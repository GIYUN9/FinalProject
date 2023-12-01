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
    .nh-help-section{
        display: flex;
        flex-direction: column;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        width: 345px;
        height: 355px;
        font-size: 12px;
        font-weight: bolder;
        padding: 7px;
    }
    .nh-top-section{
        display: flex;
        padding: 15px;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        position: relative;
    }
    .nh-desc-section{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding-left: 10px;
        padding-right: 10px;
        position: relative;
    }
    .nh-pg-bar{
        background-color: rgb(87, 212, 197);
        width: 400px;
        height: 5px;
        margin-top: 5px;
        border-radius: 8px;
        position: relative;
    }
    .pg-bar-per{
        position: absolute;
        color: rgb(87, 212, 197);
        font-size: 12px;
        right: -30px;
        top: -7px;
    }
    .hb-title{
        font-size: 14px;    
        font-weight: bolder;
        text-align: center;
        margin-bottom: 10px;
    }
    .as-re{
        color: rgb(231, 76, 60);
    }
    .nh-btn4{
        position: absolute;
        width: 100px;
        height: 30px;
        background-color: rgb(0, 199, 174);
        border: none;
        color: white;
        font-size: 14px;
        border-radius: 4px;
        right: 0px;
        bottom: -226px;
        cursor: pointer;
    }
    .nh-btn5{
        position: absolute;
        width: 100px;
        height: 30px;
        background-color: rgba(0, 199, 172, 0);
        border: none;
        color: black;
        font-size: 14px;
        border-radius: 4px;
        right: 217px;
        bottom: -231px;
        cursor: pointer;
        display: flex;
    }
    .close-btn{
        width: 10px;
        right: 11px;
        position: absolute;
        cursor: pointer;
        top: 11px;
	}
    .prev-img{
        width: 20px;
        height: 20px;
    }
    .nh-service{
        font-size: 11px;
        font-weight: normal;
        margin-bottom: 5px;
        margin-top: 3px;
    }
    .nh-category{
        font-size: 11px;
        font-weight: normal;
        margin-bottom: 5px;
        margin-top: 3px;
    }
    .nh-title{
        font-size: 11px;
        font-weight: normal;
        margin-bottom: 5px;
        margin-top: 3px;
    }
    .nh-submit-btn{
        background: rgb(218, 76, 60);
        border: none;
        border-radius: 4px;
        width: 100px;
        height: 30px;
        color: white;
        margin-top: 15px;
        cursor: pointer;
    }
    .nh-prev-btn{
        justify-content: center;
        display: flex;
        position: absolute;
        background: transparent;
        border: none;
        left: 13px;
        bottom: 4px;
        cursor: pointer;
    }
</style>

</head>
<body>
<%@ include file="../common/header.jsp" %>
 	<div>
        <div class="helpme-board">
            <div class="nh-top-section">
                <img class="close-btn" src="././resources/icon/close.png">
                <div class="hb-title">
                    도움받을 준비 완료!<br>
                    확인 부탁드려요!!
                </div>  
                <div>
                    <div class="nh-pg-bar">
                        <div class="pg-bar-per">100%
                        </div>
                    </div>
                </div>
            </div>
            <div class="nh-desc-section">
                <div class="nh-help-section">
                    <div class="nh-info">
                        <p>
                            상위 카테고리 
                            <span class="as-re">
                                *
                            </span>
                            <div class="nh-category">
                                IT · 프로그래밍
                            </div>
                        </p>
                        <p>
                            하위 카테고리 
                            <span class="as-re">
                                *
                            </span>
                            <div class="nh-service">
                                프로그램 개발
                            </div>
                        </p>
                        <p>
                            업무의 제목 
                            <span class="as-re">
                                *
                            </span>
                            <div class="nh-title">
                                고수님들 에러 좀 잡아주세요 ㅜㅜ
                            </div>
                        </p>
                        <p>
                            구체적인 내용 설명
                            <span class="as-re">
                                *
                            </span>
                            <div class="nh-title">
                                <p>아니 if 문을 썼는데 왜 반복문이 동작하는 거죠?</p>
                                <p>if(i  < 10){</p>
                                <p>while(i){</p>
                                <p>System.out.println(*);</p>
                                <p>}</p>
                                <p>}</p>
                            </div>
                        </p>
                    </div>
                </div>
                <button class="nh-submit-btn">등록</button>
                <div>
                    <button class="nh-prev-btn"><img class="prev-img" src="././resources/icon/left-chevron.png"> 이전</button>
                </div>
            </div>
        </div>

    </div>
<%@ include file="../common/footer.jsp" %>




</body>
</html>