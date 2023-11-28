<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.reason-box{
			display: flex;
	  		flex-direction: column;
		}
		
		.emailInput{
			width: 280px;
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
		
		label {
			cursor: pointer;
		}
		
		탈퇴버튼
		.retire {
			float: right;
			width: 100px;
			height: 28px;
			background-color: rgb(218, 76, 60);
			color: white;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 55px;">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 280px;">
		
			<a class="myPageSideBar" href="#">나의 정보</a>
			<a class="myPageSideBar" href="#">전문가 정보</a>
			<a class="myPageSideBar" href="#">비밀번호 변경</a>
			<a class="myPageSideBar" href="#" style="font-weight: bolder; font-size: 1.1em;">회원 탈퇴</a>
			<a class="myPageSideBar" href="#">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">회원 탈퇴</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<form action="">
						<h4 style="margin-bottom: 5px;">떠나시는 이유를 알려주세요.</h4>
						<div class="reason-box">
							<label><input type="radio" name="reason" value="1">이용하고 싶은 서비스가 없어요</label>
							<label><input type="radio" name="reason" value="2">서비스 퀄리티가 낮아요</label>
							<label><input type="radio" name="reason" value="3">비매너 회원을 만났어요</label>
							<label><input type="radio" name="reason" value="4">잦은 오류가 발생해요</label>
							<label><input type="radio" name="reason" value="5">대체할만한 서비스를 찾았어요</label>
							<label><input type="radio" name="reason" value="6">쿠폰 &middot; 적립금등 혜택이 적어요</label>
						</div>
						<h4 style="margin-bottom: 5px;">이메일 확인</h4>
						<input class="emailInput" placeholder="가입하신 이메일을 입력해주세요.">
						<h4 style="margin-bottom: 5px;">주의 사항</h4>
						<textarea rows="15" cols="96%" style="resize: none; text-align: left;" readonly="readonly">
1. 현재 사용 중인 계정 정보는~~~
2. 진행 중인 거래 건이 있거나~~
3. 탈퇴 후 ~~
4. 현재 보유 중인~~
5. 구매후기~~

110. 충전캐시~~
						</textarea><br>
						<label><input id="cT" type="checkbox">주의사항을 모두 확인하였습니다.</label>
						<br>
						<button class="retire" type="submit" disabled>탈퇴하기</button>
					</form>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />

	<script>
		const cT = document.querySelector('#cT');
        cT.addEventListener('change', function(){
            if(cT.checked){
                document.querySelector('.retire').disabled = false;
            }
        });
	</script>
</body>
</html>