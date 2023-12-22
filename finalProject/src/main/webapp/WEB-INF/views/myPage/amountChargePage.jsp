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
<style>
	.box{
		background-color: rgba(60, 59, 59, 0.27);
		display: flex;
		padding-left: 20px;
	}
	
	.kakao-pay-btn{
		border: none;
		background: rgb(58, 29, 0);
    	color: white;	
		border-radius: 8px;
		padding: 13px;
		font-weight: bold;
		margin-top: 30px;
	}
	.pay-box{
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		background: rgb(255,235,0);
    	border-radius: 8px;
		padding: 30px;
		margin-top: 100px;
		margin-bottom: 500px;
		width: 750px;
		height: max-content;
		position: relative;
	}
	#price{
		border-radius: 8px;
		border: 1px solid rgba(96, 96, 96, 0.5);
		text-align: end;
		height: 40px;
		width: 400px;
		margin-top: 10px;
		margin-bottom: 10px;
		padding-right: 45px;
	}
	.charging-Fee{
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		margin-top: 50px;
		font-weight: 600;
	}
	.pay-page{
		display: flex;
		width: 100%;
		align-items: center;
		justify-content: center;
	}
	.point{
		font-weight: bold;
		border-radius: 8px;
		height: 35px;
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 35px;
	}
	.owned-point{
		text-align: center;
		font-weight: bold;
		display: flex;
		justify-content: center;
		flex-direction: row;
		align-items: center;
	}
	.kakao-logo{
		height: 150px;
		width: 160px;
		margin: 15px;
		margin-top: -10px;
	}
	.text-kakaopay{
		align-items: center;
		text-align: center;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	.text-kakao{
		font-weight: 600;
		margin-right: 5px;
	}
	.text-pay{
		font-weight: bold;
	}
	.pay-close-btn{
		width: 12px;
		height: 12px;
		position: absolute;
		top: 12px;
		right: 12px;
		cursor: pointer;
	}
	.setprice-btn-area{
		display: flex;
		justify-content: space-between;
		width: 100%;
	}
	.setprice-btn{
		border: none;
		background: none;
		font-weight: 500;
		cursor: pointer;
		font-size: 14px;
	}
	.setprice-btn:focus{
		outline: none;
	}
	.price-measure{
		position: absolute;
		top: 19px;
		right: 26px;	
	}
	#price::-webkit-inner-spin-button {
		appearance: none;
		-moz-appearance: none;
		-webkit-appearance: none;
	}
</style>
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
						<button class="setprice-btn" value="1000">+1,000원</button>
						<button class="setprice-btn" value="5000">+5,000원</button>
						<button class="setprice-btn" value="10000">+10,000원</button>
						<button class="setprice-btn" value="50000">+50,000원</button>
						<button class="setprice-btn" value="100000">+100,000원</button>
					</div>
				</div>
				<button class="kakao-pay-btn" onclick="kakaopay()" value="">결제하기</button>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
<script>
	const loginUserAccount = "${loginUser.account}";
	$(document).ready(function() {
		// loginUser.account 값을 가져와서 포맷
		const formattedAccount = PriceComma(loginUserAccount);
		
		// 포맷된 값을 해당 요소에 출력
		$('.point').text(formattedAccount + 'P');
	});


	function kakaopay() {
		let priceValue = document.querySelector("#price").value.replace(/,/g, '');
		console.log( "payvalue = " + priceValue);
		
		$.ajax({
			url : 'kakaopay.me',
			dataType: 'json',
			data:{
				price : priceValue,
				memberNo : document.querySelector("#memberNo").value
			},
			success:function(data){
				var box = data.next_redirect_pc_url;
				location.href = box;
			},
			error:function(error){
				alert('결제시도 에러');
			}
		})
	}

	function prevAction(){
            history.go(-1);
    }

	$('.setprice-btn').on('click', (e) => {
		console.log(e.target.value);
		const setPriceValue = e.target.value;
		const commaPrice = PriceComma(setPriceValue);
		$('#price')[0].value = commaPrice;
		setButtonText();
	});
	function PriceComma(number) {
		return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	function setButtonText() {
        $('.kakao-pay-btn').text($('#price').val() + '원 결제하기');
    }
</script>
</html>