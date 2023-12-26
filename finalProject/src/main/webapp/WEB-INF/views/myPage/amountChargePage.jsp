<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="././resources/css/amountChargePage.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="pay-page">
			<div class="pay-box">
				<img class="pay-close-btn" src="./resources/icon/close.png" alt="" onclick="prevAction()">
				<div>
					<div class="text-kakaopay">
						<h2 class="text-kakao">kakao</h2>
						<h2 class="text-pay">pay</h2>
					</div>
					<img class="kakao-logo" src="./resources/icon/kakaochatbox.png" alt="">
				</div>
				<div>
					<div class="owned-point">
						<div style="font-size: 18px;">${loginUser.memberName}</div>
						<div>님이 보유중인 포인트 </div>
					</div>
					<div class="point">
						${loginUser.account}P
					</div>
				</div>
				<input type="number" id="memberNo" name="memberNo" value="${loginUser.memberNo}" style="display: none;">
				<div class="charging-Fee">
					
					충전 할 금액
					<div style="position: relative;">
						<input type="text" id="price" name="price">
						<div class="price-measure">
							원
						</div>
					</div>
					<div class="setprice-btn-area">
						<button class="setprice-btn" value="1000">1,000원</button>
						<button class="setprice-btn" value="5000">5,000원</button>
						<button class="setprice-btn" value="10000">10,000원</button>
						<button class="setprice-btn" value="50000">50,000원</button>
						<button class="setprice-btn" value="100000">100,000원</button>
					</div>
				</div>
				<button class="kakao-pay-btn" onclick="kakaopay()" value="">결제하기</button>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
<script src="/finalProject/resources/js/amountChargePage.js">
		const loginUserAccount = "${loginUser.account}";
	$(document).ready(function() {
		// loginUser.account 값을 가져와서 포맷
		const formattedAccount = PriceComma(loginUserAccount);
		
		// 포맷된 값을 해당 요소에 출력
		$('.point').text(formattedAccount + 'P');
	});

</script>
</body>
</html>
