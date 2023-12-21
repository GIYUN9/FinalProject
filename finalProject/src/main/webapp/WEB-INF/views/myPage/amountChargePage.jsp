<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	
	<div>
		<input type="number" id="memberNo" name="memberNo" value="${loginUser.memberNo}" style="display: none;">
		<input type="number" id="price" name="price">충전 할 금액
		<button onclick="kakaopay()">카카오페이 결제하기</button>
		
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