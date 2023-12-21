<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.kakao-pay-btn{
		border: none;
		background: rgb(247, 228, 0);
		color: rgb(58, 29, 29);		
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
		background: white;
		border-radius: 25px;
		padding: 30px;
		margin-top: 100px;
		margin-bottom: 500px;
		width: 750px;
		height: 300px;
	}
	#price{
		border-radius: 8px;
    	border: 1px solid rgba(96, 96, 96, 0.5);
		text-align: end;
	}
	.charging-Fee{
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	.pay-page{
		display: flex;
		width: 100%;
		align-items: center;
		justify-content: center;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<div class="pay-page">
		<div class="pay-box">
			<div>
				보유중인 포인트 
				<div class="point">
					
				</div>
			</div>
			<input type="number" id="memberNo" name="memberNo" value="${loginUser.memberNo}" style="display: none;">
			<div class="charging-Fee">
				<input type="number" id="price" name="price" placeholder="원">
				충전 할 금액
			</div>
			<button class="kakao-pay-btn" onclick="kakaopay()">카카오페이 결제하기</button>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />
</body>
<script>
	function kakaopay() {
		$.ajax({
			url : 'kakaopay.me',
			dataType: 'json',
			data:{
				price : document.querySelector("#price").value,
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
</script>
</html>