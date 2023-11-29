<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="WEB-INF/views/board/boardDetailView.jsp"></jsp:forward>
	<%-- <jsp:forward page="WEB-INF/views/board/helpBoardList.jsp"></jsp:forward>--%>
	<%--<jsp:forward page="WEB-INF/views/myPage/userInfo.jsp"/> --%>
	
	<%-- <jsp:forward page="WEB-INF/views/myPage/deleteForm.jsp"></jsp:forward> 마이 페이지--%>
	<%-- <jsp:forward page="WEB-INF/views/common/main.jsp"></jsp:forward> 메인페이지--%> 
	 <%--<jsp:forward page="WEB-INF/views/common/main.jsp"></jsp:forward> 메인페이지 --%>

		<jsp:forward page="WEB-INF/views/myPage/userInfo.jsp"/>
		
	<%--
		김경보
		<jsp:forward page="WEB-INF/views/common/main.jsp"/> 메인페이지 
		<jsp:forward page="WEB-INF/views/chatting/chat.jsp"/> 채팅 페이지
		<jsp:forward page="WEB-INF/views/myPage/qna.jsp"/>
		<jsp:forward page="WEB-INF/views/myPage/qna1.jsp"/>
		<jsp:forward page="WEB-INF/views/myPage/qna2.jsp"/>
		나기윤
		<jsp:forward page="WEB-INF/views/myPage/deleteForm.jsp"/> 마이 페이지
		<jsp:forward page="WEB-INF/views/myPage/userInfo.jsp"/> 유저정보
		최창영
		<jsp:forward page="WEB-INF/views/board/helpBoardList.jsp"/> 도와줄게요
	--%> 

</body>
</html>
