<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="/finalProject/resources/js/naverEnrollForm.js"></script>
<meta charset="UTF-8">
<title>네이버 아이디 - 품앗이 추가입력</title>
<link rel="stylesheet" href="././resources/css/naverEnrollForm.css">
</head>
<body>
	<div class="naver-enroll-align">
		<div class="naver-enroll-bg">
			<form action="naverEnroll.me" method="post" class="naver-enroll-form">
				<div>
					<p>
						이름
						<span class="asterisk-red">*</span>
					</p>
					<p>
						<input class="enroll-input" id="memberName" name ="memberName" type="text" value="${naverId.memberName}" readonly="readonly">
					</p>
					<p>
						이메일
						<span class="asterisk-red">*</span>
					</p>
					<p> 
						<input class="enroll-input" id="memberEmail" name ="memberEmail" type="text" value="${naverId.memberEmail}" readonly="readonly">
					</p>
					<p>
						휴대폰번호
						<span class="asterisk-red">*</span>
					</p>   
					<p> 
						<input type="tel" class="form-control" id="phone" value="${naverId.phone}" name="phone"> <br>   
					</p>
					<p>
						관심사 선택
						<span class="asterisk-red">*</span>
					</p>
					<p>
						<div class="insert-category">	            
							<select name="all-category" id ="in-category">
								<option name = "music" value="music">음악</option>
								<option name = "cook" value="cook">요리</option>
								<option name = "health" value="health">운동</option>
							</select>
							<br>
						</div>
					</p>
					<div style="margin-bottom: 1.5rem;">
						<label for=""> &nbsp; 성별 : </label> &nbsp;&nbsp;
						<input type="radio" id="Male" value="M" name="memberGender" checked>
						<label for="Male">남자</label> &nbsp;&nbsp;
						<input type="radio" id="Female" value="F" name="memberGender">
						<label for="Female">여자</label> &nbsp;&nbsp;
					</div>
					<div class="checkbox-agree-all">
						<input type="checkbox" name="selectall" value="selectall" onclick='selectAll(this)'>
							전체 동의
					</div>
					<br>
					<div style="display: flex; flex-direction: column;">
						<label>
							<input type="checkbox" name="category" value="agree" onclick = "checkSelectAll()"> 
							(필수) 이용약관 동의
						</label>
						<label>
							<input type="checkbox" name="category" value="privateAgree" onclick = "checkSelectAll()"> 
							(필수) 개인정보 수집 및 이용 동의
						</label>
						<label><input type="checkbox" name="category" value="ageagree" onclick = "checkSelectAll()">
							(필수) 14세 이상입니다
						</label>                 
					</div>
					<button type="submit" class="sign-up-btn">회원가입</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>