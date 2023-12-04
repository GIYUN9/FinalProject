<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>결제완료 페이지</title>

<style>
    .complete-main{
        background-color: white;
        width: 500px;
        height: 263px;
        border-radius: 10px;
        position: absolute;
        top: 40%;
        left: 16%;
        padding: 10px;
    }

    .complete-finsh{
        color: white;
        position: absolute;
        top: 17%;
        left: 22%;
        text-align: center;
    }

    .big-font{
        font-size: 40px;
    }

    .small-font{
        font-weight: bold;
        font-size: 20px;
    }

    .complete-font1{
        font-size: 20px;
        font-weight: bold;
    }

    .complete-font2{
        font-size: 19px;
        font-weight: bold;
    }

    .complete-font3{
        font-size: 16px;
        font-weight: bold;
    }
    
    .complete-main-one{
        margin-left: 22px;
        margin-top: 15px;
    }

    .complete-main-two{
        line-height: 28px;
        margin-bottom: 50px;
    }

    .complete-main-three{
        line-height: 25px;
        position: absolute;
        top: 50%;
    }

    .complete-main-four{
        position: absolute;
        left: 28em;
        top: 19%;
        line-height: 26px;
        font-size: 13px;
        color: rgb(147,147,150);
    }

    .complete-main-five{
        margin-bottom: 16px;
    }
    
    .complete-btn{
        float: right;
        margin-right: 25px;
    }

    .complete-btn-main {
        background-color: rgb(195,244,238);
        color: black;
        border: none;
        width: 100px;
        height: 40px;
        border-radius: 4px;
        cursor: pointer;
        position: relative;
        top: 55px;
    }

    .complete-btn-my{
        background-color: rgb(0,199,174);
        color: white;
        border: none;
        width: 100px;
        height: 40px;
        border-radius: 4px;
        cursor: pointer;
        position: relative;
        top: 55px;
    }

    .complete-font4, .complete-font5 {
        font-size: 14px;
        color: rgb(147,147,150);
    }

    .community-big{
        margin-bottom: 686px;
    }

    .complete-img{
        width: 540px; height: 500px;
        position: absolute;
        top: 14%;
        left: 57%;
    }

    .logo-img{
        width: 70px;
        height: 70px;
        position: absolute;
        top: 0%;
        left: 0%;
    }
</style>

</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <div class="community-big">

    
        <div class="complete-finsh">
            <h2 class="big-font">주문 완료</h2><br>
            <img src="././resources/image/logobg.png" alt="로고" class="logo-img">
            <span class="small-font">주문번호 : 22305687458569</span><br>
            <span class="small-font">품앗이를 이용해주셔서 감사합니다.</span>
        </div>
    
        <div class="complete-main">
            <div class="complete-main-one">
                <div class="complete-main-two">
                    <span class="complete-font1">주문내역 - </span>
                    <span class="complete-font2">결제 정보</span><br>
                
                    <span class="complete-font3">홍길동</span><br>
                    <span class="complete-font4">010-1234-5678</span><br>
                </div>
    
                <div class="complete-main-three">
                    <span class="complete-font5">
                        서울 강남구 테헤란로14길 6 남도빌딩<br>
                        3층 I강의실<br>
                        (우)06234 <br>
                    </span>
                </div>
    
            </div>
    
            <div class="complete-main-four">
                <div class="complete-main-five">
                    <span>결제 수단</span><br>
                    <span>- 카카오 페이</span><br>
                </div>
    
                <div>
                    <span>결제금액</span><br>
                    <span>- 16,500원</span>
                </div>
            </div>
    
            <div class="complete-btn">
                <button type="button" class="complete-btn-main">메인으로</button>
                <button type="" class="complete-btn-my">마이페이지</button>
            </div>
            
        </div>
    </div>

    <img src="" alt="광고" class="complete-img">
   
    <jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>