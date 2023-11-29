<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>


<title>결제 페이지</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
    .wares-page{
        background-color: white;
        width: 340px;
        height: 150px;
        position: absolute;
        top: 27%;
        left: 15%;
        border-radius: 10px;
    }

    .order-page{
        background-color: white;
        width: 340px;
        height: 150px;
        position: absolute;
        top: 46%;
        left: 15%;
        border-radius: 10px;
    }

    .delivery-page{
        background-color: white;
        width: 340px;
        height: 400px;
        position: absolute;
        top: 27%;
        left: 42%;
        border-radius: 10px;
    }

    .final-pay-page{
        background-color: white;
        width: 340px;
        height: 150px;
        position: absolute;
        top: 27%;
        left: 69%;
        border-radius: 10px;
    }

    .pay-page{
        background-color: white;
        width: 340px;
        height: 150px;
        position: absolute;
        top: 46%;
        left: 69%;
        border-radius: 10px;
    }

    .check-page{
        background-color: white;
        width: 340px;
        height: 120px;
        position: absolute;
        top: 65%;
        left: 69%;
        border-radius: 10px;
    }

    .title{
        font-size: 17px;
        margin-left: 25px;
        display: block;
        margin-top: 13px;
        font-weight: bold;
    }

    .big-title{
        float: right;
        margin-right: 33px;
    }

    .small-title{
        font-size: 20px;
        font-weight: bold;
    }

    .price{
        font-size: 20px;
        line-height: 2;
    }

    .name{
        font-size: 20px;
        font-weight: bold;
    }

    .order, .name, .one{
        margin-left: 12px;
        margin-top: 3px;
    }

    .retouch-btn{
        border-radius: 10px;
        position: absolute;
        top: 55px;
        right: 20px;
        width: 66px;
        height: 35px;
        font-size: 16px;
    }

    .delivery-text{
        margin-left: 24px;
        margin-top: 10px;
    }

    .delivery-btn{
        margin-top: 6px;
        margin-bottom: 10px;
        width: 91%;
        height: 45px;
        border-radius: 10px;
    }

    .delivery-input{
        margin-left: 16px;
        width: 91%;
        height: 15%;
        max-height: 50%;
    }

    .pay{
        margin: 20px 0px 0px 26px;
    }
</style>

</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <div class="wares-page">
        <span class="title">주문 상품 정보</span>
        <div class="big-title">
            <span class="small-title">핸드메이드 쿠키</span><br>
            <span class="number">[필수] 용량 : 80g-7개</span><br>
            <span class="price">2,000원</span>
        </div>
    </div>

    <div class="order-page">
            <span class="title">주문자 정보</span>
        <div class="order">
            <span class="name">홍길동</span><br>
            <span class="one">010-1234-5678</span><br>
            <span class="one">hong@kh.com</span>
            <button class="retouch-btn">수정</button>
        </div>
        
    </div>

    <div class="delivery-page">
        <span class="title">배송 정보</span>
        <div class="delivery-text">
            <span>홍길동</span><br>
            <span>010-1234-5678</span><br>
            <span>서울 강남구 테헤란로14길 6 남도빌딩<br>
                  3층 I강의실<br>
                  (우)06234
            </span><br>
            <button class="delivery-btn">배송 정보 수정</button><br>
            <span>배송 메모</span><br>
        </div>
            <div class="container mt-3">
                <form action="/action_page.php">
                <select name="cars" class="custom-select mb-3">
                    <option selected>배송 메모를 선택해주세요</option>
                    <option value="volvo">문 앞에 놔주세요</option>
                    <option value="fiat">택배함에 놔주세요</option>
                    <option value="zig">경비실에 맡겨주세요</option>
                    <option value="audi">직접입력</option>
                </select>
                </form>
            </div>
          
          <textarea placeholder="내용을 입력해주세요" class="delivery-input"></textarea>
    </div>


    <div class="final-pay-page">
        <span class="title">최종 결제 금액</span>
    </div>

    <div class="pay-page">
        <span class="title">결제 방법</span>
        <div class="pay">
            <input type="radio">카카오페이
            <input type="radio">신용카드
            <input type="radio">가상계좌
        </div>
        <div class="pay">
            <input type="radio">무통장 입금
        </div>
    </div>

    <div class="check-page">
        <span><input type="checkbox">구매 조건 확인 및 결제진행에 동의</span>
        <button type="submit">결제하기</button>
    </div>
   
</body>
</html>