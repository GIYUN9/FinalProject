<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>


<title>결제 페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
.wares-page {
	background-color: white;
	width: 340px;
	height: 150px;
	position: absolute;
	top: 27%;
	left: 15%;
	top: 22%;
	left: 17%;
	border-radius: 10px;
}

.order-page {
	background-color: white;
	width: 340px;
	height: 150px;
	position: absolute;
	top: 46%;
	left: 15%;
	top: 45%;
	left: 17%;
	border-radius: 10px;
}

.delivery-page {
	background-color: white;
	width: 340px;
	height: 400px;
	height: 415px;
	position: absolute;
	top: 27%;
	left: 42%;
	top: 20%;
	left: 41%;
	border-radius: 10px;
}

.final-pay-page {
	background-color: white;
	width: 340px;
	height: 150px;
	position: absolute;
	top: 27%;
	left: 69%;
	top: 14%;
	left: 64%;
	border-radius: 10px;
}

.pay-page {
	background-color: white;
	width: 340px;
	height: 150px;
	position: absolute;
	top: 46%;
	left: 69%;
	top: 34%;
	left: 64%;
	border-radius: 10px;
}

.check-page {
	background-color: white;
	width: 340px;
	height: 120px;
	position: absolute;
	top: 65%;
	left: 69%;
	top: 54%;
	left: 64%;
	border-radius: 10px;
}

.title {
	font-size: 17px;
	margin-left: 25px;
	display: block;
	margin-top: 13px;
	font-weight: bold;
}

.big-title {
	float: right;
	margin-right: 33px;
}

.small-title {
	font-size: 20px;
	font-weight: bold;
}

.price {
	font-size: 20px;
	line-height: 2;
}

.pay-name {
	font-size: 20px;
	font-weight: bold;
}

.order, .pay-name, .one {
	margin-left: 12px;
	margin-top: 3px;
}

.retouch-btn {
	border-radius: 10px;
	position: absolute;
	top: 55px;
	right: 20px;
	width: 66px;
	height: 35px;
	font-size: 16px;
	background-color: rgb(0, 199, 174);
	border: none;
	color: white;
}

.delivery-text {
	margin-left: 24px;
	margin-top: 10px;
}

.delivery-btn {
	margin-top: 6px;
	margin-top: 10px;
	margin-bottom: 10px;
	width: 91%;
	height: 45px;
	border-radius: 10px;
	background-color: rgb(0, 199, 174);
	border: none;
	color: white;
}

.delivery-input {
	margin-left: 16px;
	width: 91%;
	height: 15%;
	max-height: 50%;
}

.pay {
	margin: 20px 0px 0px 26px;
	padding: 0.2em 0.4em;
}

.cash-btn {
	width: 100%;
	height: 40px;
	background-color: rgb(0, 199, 174);
	margin-top: 57px;
	border-radius: 5px;
	border: none;
	color: white;
}

.check-font {
	font-size: 18px;
	position: absolute;
	top: 25px;
	left: 15px;
}

.checkbox {
	width: 17px;
	height: 16px;
	margin-right: 5px;
}

.pay-div {
	margin-left: 23px;
	font-size: 14px;
	margin-top: 7px;
	color: rgb(147, 147, 150);
}

.pay-span {
	float: right;
	margin-right: 10px;
}

.total-pay {
	font-weight: bold;
	position: absolute;
	left: 22px;
	top: 115px;
}

.total-price {
	margin-left: 160px;
}

.pay-line {
	width: 96%;
	margin-left: 8px;
	background-color: black;
}

.pay-radio {
	margin-right: 5px;
}

.cookie-img {
	width: 32%;
	height: 59%;
	margin-left: 26px;
}

.pay-one {
	font-size: 13px;
	color: rgb(147, 147, 150);
	margin-left: 14px;
}

.pay-div-one {
	margin-top: 3px;
}

.community-big {
	margin-bottom: 660px;
}
</style>

</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="community-big">
		<div class="wares-page">
			<span class="title">주문 상품 정보</span>
			<img src="/finalProject/resources/borderImage/cookie.jpg" alt="쿠키" class="cookie-img">
			<div class="big-title">
				<span class="small-title">핸드메이드 쿠키</span>
				<br> 
				<span class="number">[필수] 용량 : 80g-7개</span>
				<br>
				<span class="price">2,000원</span>
			</div>
		</div>
	</div>
	<div class="order-page">
		<span class="title">주문자 정보</span>
		<div class="order">
			<span class="pay-name">홍길동</span>
			<br>
			<span class="pay-one">010-1234-5678</span>
			<br>
			<span class="pay-one">hong@kh.com</span>
			<button class="retouch-btn">수정</button>
		</div>
	</div>

	<div class="delivery-page">
		<span class="title">배송 정보</span>
		<div class="delivery-text">
			<span class="pay-name">홍길동</span>
			<br>
			<span class="pay-one">010-1234-5678</span>
			<br>
			<span class="pay-one">서울 강남구 테헤란로14길 6 남도빌딩</span>
			<br> 
			<span class="pay-one">3층 I강의실</span>
			<br>
			<span class="pay-one">(우)06234</span>
			<br>
			<button class="delivery-btn">배송 정보 수정</button>
			<br>
			<span>배송 메모</span>
			<br>
		</div>
		<!-- 직접입력하기 추가 -->
		<textarea placeholder="내용을 입력해주세요" class="delivery-input"></textarea>
	</div>
	<div class="pay">
		<div class="pay-pages">
			<div class="final-pay-page">
				<span class="title">최종 결제 금액</span>
				<div class="pay-div">
					<span>상품가격</span>
					<span class="pay-span">14,000원</span>
					<div class="pay-div-one">
						<span>배송비</span>
						<span class="pay-span">+2,500원</span>
					</div>
				</div>
				<hr class="pay-line">
				<div class="total-pay">
					<span>총 결제금액</span>
					<span class="total-price">16,500원</span>
				</div>
			</div>
			<div class="pay-page">
				<span class="title">결제 방법</span>
				<div class="pay">
					<input type="radio" class="pay-radio">카카오페이 
					<input type="radio" class="pay-radio">신용카드
					<input type="radio" class="pay-radio">가상계좌
					<input type="radio" class="pay-radio">무통장 입금
				</div>
			</div>

			<div class="check-page">
				<span class="check-font">
					<input type="checkbox" class="checkbox">구매 조건 확인 및 결제진행에 동의
				</span>
				<br>
				<button type="submit" class="cash-btn">결제하기</button>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>