<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/finalProject/resources/js/careMember.js"></script>
<meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
    <link rel="stylesheet" href="././resources/css/careMember.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">요청 관리</a>
			<a class="myPageSideBar" href="ask3.me">문의 내역</a>
            <c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me"  style="font-weight: bolder; 
			    background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 관리</a>
            <a class="myPageSideBar" href="reportList.rp">신고 내역</a>
            </c:if>            
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">회원 관리</h3>
			<div class="pageBox" style="display: flex; flex-direction: row;">
				<div class="user-info">
                    <div class="table-area">
                        <table border="1" class="ad-table" id="memberTable">
                            <thead style="font-size: 15px;">
                                <div class="src-area">                                
                                    <input class="src-mem" type="text" name="" id="searchInput" placeholder="검색">
                                    <img class="src-img" src="././resources/icon/glass-icon.png" alt="">
                                </div>
                                <tr>
                                    <th style="width: 8%;">선택</th>
                                    <th style="width: 8%;">번호</th>
                                    <th style="width: 33%;">이메일</th>
                                    <th style="width: 14%;">이름</th>
                                    <th style="width: 17%;">구분</th>
                                    <th style="width: 23%;">가입일</th>
                                </tr>							                         
                            </thead>
                            <tbody>
                            	<c:forEach var="m" items="${mList}">		
									<tr>
	                                    <td><input type="checkbox" value="${m.memberNo}"></td>
	                                    <td>${m.memberNo}</td>
	                                    <td>${m.memberEmail}</td>
	                                    <td>${m.memberName}</td>
	                                    <td>
											<c:choose>
												<c:when test="${m.status == 'Y'}">
													일반회원
												</c:when>
												<c:when test="${m.status == 'N'}">
													탈퇴회원
												</c:when>
											</c:choose>
	                                    </td>
	                                    <td>${m.enrollDate}</td>
	                                </tr>
								</c:forEach> 	
                            </tbody>
                        </table>
                    </div>
                    <button class="ad-btn" onclick="resign()">탈퇴</button>
				</div>
                <div>
                    <div class="user-info2-top">
						회원관리
                    </div>
                    <div class="user-info2">

                    </div>
                    <button class="ad-can">취소</button>
                </div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>