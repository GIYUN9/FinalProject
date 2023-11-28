<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
    .hd-pr{
        padding-right: 10px;
    }
    .hd-pl{
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
        position: absolute;
        width: 60px;
        left: 10%;
    }
</style>
</head>
<body>
   <header>
            <div class="hd-left-section">
                <p class="hd-pr">도와줄게요</p>
                <p>도와주세요</p>  
                <img class="logowh" src="././resources/image/logowh.png">
            </div>    
            <div class="hd-middle-section">
                <input class="hd-searchbar" placeholder="검색"></input>        
            </div>
            <div class="hd-right-section">
                <p>로그인</p>
                <p class="hd-pl">회원가입</p>
            </div>
    </header>
</body>
</html>