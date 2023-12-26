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