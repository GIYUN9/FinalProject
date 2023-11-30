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
    .nh-right-section{
        display: flex;
        flex-direction: column;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        width: 300px;
        height: 395px;
        font-size: 12px;
        font-weight: bolder;
        padding: 7px;
    }
    .nh-left-section{
        position: relative;
    }
    .nh-top-section{
        display: flex;
        padding: 15px;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        position: relative;
    }
    .nh-bottom-section{
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        justify-content: space-around;
        padding-left: 10px;
        padding-right: 10px;
    }
    .nh-pg-bar{
        background-color: rgb(241, 240, 240);
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
        right: -25px;
        top: -7px;
    }
    .pg-bar-fill{
        background: rgb(87, 212, 197);
        width: 264px;
        height: 5px;
        position: absolute;
        right: 161px;
        top: 7px;
        border-radius: 8px;
    }
    .nh-text{
        font-size: 13px;
        padding-bottom: 10px;
    }
    .ver-line{
        width: 2px;
        height: 400px;
        background: rgba(96, 96, 96, 0.8);
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
        font-weight: normal;
        border-bottom: 1px solid black;
    }
    .nh-category{
        font-weight: normal;
        border-bottom: 1px solid black;
    }
    .nh-title{
        font-weight: normal;
        border-bottom: 1px solid black;
    }
    .nh-text-limit{
        font-weight: bold;
    }
    .nh-price-outer{
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        background: rgb(224, 224, 224);
        width: 310px;
        height: 110px;
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
    }
    .nh-input-price{
        border: 1px solid rgba(93, 93, 93, 0.61);
        border-radius: 8px;
        width: 193px;
        height: 40px;
        text-align: end;
        padding-right: 25px;
    }
    .nh-checkbox{
        font-size: 12px;
        align-items: center;
        justify-content: center;
        display: flex;
        font-weight: bold;
        padding-top: 20px;
    }
    .price-measure{
        position: absolute;
        right: 70px;
        font-size: 13px;
        top: 45px;
        font-weight: bold;
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
                    빠른 도움받기를 위해<br>
                    도움이 필요한 정보를 입력해주세요!
                </div>  
                <div>
                    <div class="nh-pg-bar">
                        <div class="pg-bar-per">66%
                            <div class="pg-bar-fill"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nh-bottom-section">
                <div class="nh-left-section">
                    <div class="nh-text">
                        희망 의뢰 가격을 적어주세요.                  
                    </div>
                    <div class="">
                        <div class="nh-price-outer">
                            <input class="nh-input-price" type="text" placeholder="최소 1,000">
                            <p class="price-measure">원</p>
                        </div>
                        <div>
                            <p class="nh-checkbox">
                                <input type="checkbox">
                                세금계산서 발행 필요시, 체크해주세요.
                            </p>
                        </div>
                    </div>
                    <button class="nh-btn5">
                        <img class="prev-img" src="././resources/icon/left-chevron.png">
                        <div>이전</div>
                    </button>
                    <button class="nh-btn4">다음</button>
                </div>
                <div>
                    <div class="ver-line"></div>
                </div>
                <div class="nh-right-section">
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
            </div>
        </div>

    </div>
<%@ include file="../common/footer.jsp" %>




</body>
</html>