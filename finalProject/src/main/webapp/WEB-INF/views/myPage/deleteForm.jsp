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
	</style>
</head>
<body>
	<div class="box">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 280px;">
		
			<a class="myPageSideBar" href="#">나의 정보</a>
			<a class="myPageSideBar" href="#">전문가 정보</a>
			<a class="myPageSideBar" href="#">비밀번호 변경</a>
			<a class="myPageSideBar" href="#" style="font-weight: bolder; font-size: 1.1em;">회원 탈퇴</a>
			<a class="myPageSideBar" href="#">문의 내역</a>
		</div>
		<div>
			<h3 style="margin: 10px 0 0 20px;">회원 탈퇴</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<form action="">
						<h4>떠나시는 이유를 알려주세요.</h4>
						<div class="reason-box">
							<div><input type="radio" name="reason" value="1">이용하고 싶은 서비스가 없어요</div>
							<div><input type="radio" name="reason" value="2">서비스 퀄리티가 낮아요</div>
							<div><input type="radio" name="reason" value="3">비매너 회원을 만났어요</div>
							<div><input type="radio" name="reason" value="4">잦은 오류가 발생해요</div>
							<div><input type="radio" name="reason" value="5">대체할만한 서비스를 찾았어요</div>
							<div><input type="radio" name="reason" value="6">쿠폰 . 적립금등 혜택이 적어요</div>
						</div>
					</form>
				</div>
			</div>		
		</div>
	</div>
	
</body>
</html>