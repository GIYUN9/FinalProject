<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="././resources/css/amountChargePage.css">
<style>
	.box-one1,
	.box-one2,
	.box-two1,
	.box-three1,
	.box-three2,
	.box-three3{
		width: 340px;
		border: 1px solid white;
		border-radius: 8px;
		background-color: white;
		margin: 50px 30px 30px 30px;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="pay-page">
			<div>
				<div class="box-one1">
					<span style="font-weight: bold;">주문 상품 정보</span>
				</div>
				<div class="box-one2">
					<span style="font-weight: bold;">주문자 정보</span>
				</div>
			</div>
			<div class="box-two1">			
					<span style="font-weight: bold;">배송 정보</span>
			</div>
			<div>
				<div class="box-three1">
					<span style="font-weight: bold;">최종 결제 금액</span>
				</div>
				<div class="box-three2">
					<span style="font-weight: bold;">결제 방법</span>
				</div>
				<div class="box-three3">
					<span style="font-weight: bold;">구매 조건 확인 및 결제진행에 동의</span>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
