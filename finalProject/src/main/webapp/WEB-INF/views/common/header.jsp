<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*,
	*::before,
	*::after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	}
	body{
		background: url('././resources/image/main.png') no-repeat center center fixed; 
  		background-size: cover;		
	}
    .hd-left-section{
        margin-left: 10px;
        font-size: 15px;
        font-weight: bold;
        color: white;
    }
    .hd-right-section{
        margin-right: 10px;
        font-size: 15px;
        font-weight: bold;  
        color: white;
    }
    .hd-searchbar{
        border: none;
        width: 500px;
        height: 36px;
        border-radius: 45px;
    }
    .hd-left-section{
        padding-left: 10px;
        display: flex;
    }
    .hd-right-section{
        display: flex;
        padding-right: 10px;
    }
    .hd-hu{
        padding-right: 10px;
    }
    .hd-re{
        padding-left: 10px;
    }
    ::placeholder{
        padding-left: 10px;
    }
    header{
        width: 100%;
        height: 55px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        top: 0;
        z-index: 199;    
    }
    .logowh{
        width: 60px;
        margin-right: 20px;
        cursor: pointer;
    }
    .logowh1{
        width: 60px;
        margin-left: 20px;
    }
    .hd-middle-section{
    	display: flex;
    	align-items: center;
    	margin-right: 40px;
    }
/*    
	p::after{
		display:block;
		content: '';
		border-bottom: solid 2px #ffffff;  
		transform: scaleX(0);  
		transition: transform 250ms ease-in-out;
	}
    p:hover::after{
        transform: scaleX(1);
    }
*/
</style>
</head>
<body>
   <header>
            <div class="hd-left-section">
                <p class="hd-hu">도와줄게요</p>
                <p class="hd-hm">도와주세요</p>  
            </div>    
            <div class="hd-middle-section">
                <img class="logowh" src="././resources/image/logowh.png" onclick="redirectToHome()">
                <input class="hd-searchbar" placeholder="검색"></input>        
				<img class="logowh1" src="">
            </div>
            <div class="hd-right-section">
                <p class="hd-login">로그인</p>
                <p class="hd-re">회원가입</p>
            </div>
    </header>
    
	<script>
		function redirectToHome() {  // 클릭 시 리다이렉션을 수행할 URL을 지정합니다.
		  var redirectUrl = '<%=request.getContextPath()%>/'; 
		  window.location.href = redirectUrl;
		}
	</script>
</body>
</html>