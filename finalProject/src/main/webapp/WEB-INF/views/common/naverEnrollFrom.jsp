<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 아이디 - 품앗이 추가입력</title>
</head>
<body>
	<div>
		<form action="naverEnroll.me" method="post">
			<p>이름 
				<input class="en-input" id="memberName" name ="memberName" type="text" value="${naverId.memberName}" readonly="readonly">
			</p>
			<p>이메일 
				<input class="en-input" id="memberEmail" name ="memberEmail" type="text" value="${naverId.memberEmail}" readonly="readonly">
			</p>
			<p> 휴대전화
				<input type="tel" class="form-control" id="phone" value="${naverId.phone}" name="phone"> <br>   
			</p>
			<p>관심사
				<div class="insert-category">	            
					<select name="all-category" id ="in-category">
					    <option name = "music" value="music">음악</option>
					    <option name = "cook" value="cook">요리</option>
					    <option name = "health" value="health">운동</option>
					</select>
					<br>
	            </div>
			</p>
			<label for=""> &nbsp; 성별 : </label> &nbsp;&nbsp;
            <input type="radio" id="Male" value="M" name="memberGender" checked>
            <label for="Male">남자</label> &nbsp;&nbsp;
            <input type="radio" id="Female" value="F" name="memberGender">
            <label for="Female">여자</label> &nbsp;&nbsp;
            <div class="cb-agree-all">
                                <input type="checkbox" name="selectall" value="selectall" onclick='selectAll(this)'>
                                전체 동의
                            </div>
                            <br>
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
            <button type="submit" class="sign-up-btn">회원가입</button>
		</form>
	</div>
</body>
<script>
	function checkSelectAll()  {
		  // 전체 체크박스
		  const checkboxes 
		    = document.querySelectorAll('input[name="category"]');
		  // 선택된 체크박스
		  const checked 
		    = document.querySelectorAll('input[name="category"]:checked');
		  // select all 체크박스
		  const selectAll 
		    = document.querySelector('input[name="selectall"]');
		  
		  if(checkboxes.length === checked.length)  {
		    selectAll.checked = true;
		  }else {
		    selectAll.checked = false;
		  }
	
	}
</script>
</html>