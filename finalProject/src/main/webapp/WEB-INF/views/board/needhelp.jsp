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
        height: 400px;
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
    }
    .nh-button{
        border: 1px solid rgba(96, 96, 96, 0.5);
        width: 150px;
        height: 40px;
        border-radius: 8px;
        padding-left: 5px;
        font-size: 12px;
    }
    .nh-button2{
        border: 1px solid rgba(96, 96, 96, 0.5);
        width: 310px;
        height: 40px;
        font-size: 13px;
        border-radius: 8px;
        padding-left: 10px;
        position: relative;
        font-weight: bold;
    }
    .nh-button2::placeholder{
        color: rgb(26, 188, 156);
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
    .nh-text{
        font-size: 13px;
        padding-bottom: 10px;
    }
    .nh-text2{
        font-size: 13px;
        padding-bottom: 10px;
        padding-top: 10px;
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
    .nh-type-limit{
        position: absolute;
        right: 1px;
        font-size: 11px;
    }
    .nh-btn-area{
        position: relative;
    }
    .nh-type-text{
        color: rgb(26, 188, 156);
        font-weight: bold;
    }
    .nh-btn3{
        position: absolute;
        width: 100px;
        height: 30px;
        background-color: rgb(0, 199, 174);
        border: none;
        color: white;
        font-size: 14px;
        border-radius: 4px;
        right: 0px;
        bottom: -245px;
        cursor: pointer;
    }

    .close-btn{
        width: 10px;
        right: 11px;
        position: absolute;
        cursor: pointer;
        top: 11px;
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
                        <div class="pg-bar-per">0%</div>
                    </div>
                </div>
            </div>
            <div class="nh-bottom-section">
                <div class="nh-left-section">
                    <div class="nh-text">
                        관련 분야를 선택해주세요. 
                    </div>
                    <div>
                        <select class="nh-button" name="" id="" >
                            <option value="">상위 카테고리</option>
                        </select>
                        <select class="nh-button" name="" id="">
                            <option value="">하위 카테고리</option>
                        </select>
                    </div>
                    <div class="nh-text2">
                        필요한 서비스의 제목을 작성해주세요.
                    </div>
                    <div class="nh-btn-area">
                        <input class="nh-button2" type="text" name="" id="" placeholder="예) OOO분야의 솔루션 요청드립니다.">
                        <p class="nh-type-limit"><span class="nh-type-text">0</span>/30</p>
                    </div>
                    <button class="nh-btn3">다음</button>

                </div>
                <div>
                    <div class="ver-line"></div>
                </div>
                <div class="nh-right-section">
                    <div class="nh-info">
                        <p class="nh-category">상위 카테고리 <span class="as-re">*</span></p>
                        <p>하위 카테고리 <span class="as-re">*</span></p>
                        <p>업무의 제목 <span class="as-re">*</span></p>
                    </div>
                </div>
            </div>
        </div>

    </div>
<%@ include file="../common/footer.jsp" %>




</body>
</html>