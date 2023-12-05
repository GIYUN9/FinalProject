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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

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
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    .hd-hm{
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    .hd-re{
        padding-left: 10px;
        cursor: pointer;
        text-decoration: none;
        color: white;
    }
    .hd-login{
        cursor: pointer;
        text-decoration: none;
        color: white;
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
    a:hover{
        color: white;
        text-decoration: none;
    }

/*    
    login 합본
*/
.modal-content{
            margin: 80px 0px 0px 0px;
            width: 600px;
            height: 500px;
        }

        .modal-header{
            text-align: center;
            font-weight: bold;
            margin: 20px;
       }

       .modal-title{
            text-align: center;
            font-weight: bold;
       }

       .modal-body {
            position: relative;
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 1rem;
            margin: 20px 60px;
        }

       .login-email-btn {
            color: white;
            background-color: rgb(3, 199, 90);
            border: none;
            width: 300px;
            height: 40px;
            font-weight: bold;
            margin-bottom: 10px;
            border-radius: 4px;
        }

       .login-kakao-btn {
            color: black;
            background-color: rgb(250, 225, 0);
            border: none;
            width: 300px;
            height: 40px;
            font-weight: bold;
            border-radius: 4px;
        }
        .l-ver-line{
            width: 1px;
            height: 13px;
            margin-left: 10px;
            border: 1px solid rgb(224, 224, 224);
            margin-right: 10px;
        }
        .l-align{
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
        }
        .l-email-input{
            width: 300px;
            height: 40px;
            border: 1px solid rgba(96, 96, 96, 0.5);
            border-radius: 4px;
            margin-bottom: 20px;
        }
        .l-pwd-input{
            width: 300px;
            height: 40px;
            border: 1px solid rgba(96, 96, 96, 0.5);
            border-radius: 4px;
            margin-bottom: 20px;
        }
        .l-text{
            margin-bottom: 10px;
            font-weight: bold;
        }
        .l-text1{
            margin-bottom: 10px;
            font-weight: bold;
            margin-top: 35px;
        }
        .loginSearch{
            font-size: 12px;
        }
        .btn-area{
            margin-top: 10px;
        }
        .close-btn-login{
            width: 10px;
            right: -40px;
            position: absolute;
            cursor: pointer;
            top: 0px;
        }
        


        /*
        회원가입
        */
        .modal-content{
            margin: 80px 0px 0px 0px;
            width: 594px;
        }

        .modal-header{
        text-align: center;
        font-weight: bold;
        margin: 20px;
       }

       .modal-title{
        text-align: center;
        font-weight: bold;
       }

       .modal-body{
         margin: 20px 80px;
       }


       .login-btn {
            color: black;
            background-color: yellow;
            border: none;
            width: 100%;
        }

        .emailSend-btn{
            color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
            width: 100%;
        }

        .sign-up-btn{
            color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
            width: 100%;
            height: 40px;
            border-radius: 4px;
            margin-top: 30px;
        }
        .as-re{
            color: red;
        }
        .en-input{
            border: 1px solid rgba(96, 96, 96, 0.5);;
            border-radius: 8px;
            height: 45px;
            width: 400px;
        }
        .cb-agree-all{
            padding-bottom: 15px;
            border-bottom: 2px solid rgba(96, 96, 96, 0.5);
        }
</style>
</head>
<body>
   <header>
            <div class="hd-left-section">
                <a href="#" class="hd-hu">도와줄게요</a>
                <a href="#" class="hd-hm">도와주세요</a>  
            </div>    
            <div class="hd-middle-section">
                <img class="logowh" src="././resources/image/logowh.png" onclick="redirectToHome()">
                <input class="hd-searchbar" placeholder="검색"></input>        
				<img class="logowh1" src="">
            </div>
            <div class="hd-right-section">
                <a class="hd-login" data-toggle="modal" data-target="#myModal">로그인</a>
                <a class="hd-re" data-toggle="modal" data-target="#myModal1">회원가입</a>
            </div>
    </header>
    
        <!-- 첫번째 모달 -->
        <div class="modal" id="myModal" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body" >
                        <form action="login.me" method="post">
                            <button style="border: none; background-color: transparent;"><img class="close-btn-login" class="close-btn-login" src="././resources/icon/close.png" onclick="aa()" ></button>
                        <!--입력하면 값 넘어갈 수 있게끔-->
                            <h2 class="modal-title" style="text-align: center; font-weight: bold; margin: 0 auto;">Login</h2>
                                <div class="l-text1" style="font-weight: bold;">이메일</div>
                                <input class="l-email-input" name="memberEmail" type="text" style="width: 100%;" placeholder="example@poomasi.com" >

                                <div class="l-text" style="font-weight: bold;">비밀번호</div>
                                <input class="l-pwd-input" name="memberPwd" type="password" style="width: 100%;" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요">


                            <div class="l-align">
                                <a class="loginSearch" href="#" style="color: black;"> 비밀번호 찾기</a>
                                <div class="l-ver-line"></div>
                                <a class="loginSearch" href="#" style="color: black;"> 회원가입</a>
                            </div>
                            <div class="btn-area">
                                <button type="submit" class="login-email-btn" style="width: 100%;"> 이메일 로그인</button>

                                <button type="submit" class="login-kakao-btn" style="width: 100%;" onclick="kakaoLogin()" >카카오 로그인</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- 첫번째 모달 -->
        <div class="modal" id="myModal1" >
            <div class="modal-dialog">
                <h4 class="modal-title" style="text-align: center; color: white; font-weight: bold; margin: 0 auto;">품앗이에 오신걸 환영합니다</h4>
                <div class="modal-content" style="height: 800px;">
                    <div class="modal-body" >
                        <form action="insert.me" method="post">
                            <div>
                                <p>
                                    	이름
                                    <span class="as-re">*</span>
                                </p>
                                <p>
                                    <input class="en-input" id="memberName" name ="memberName" type="text" placeholder="이름(실명)을 입력해주세요">
                                </p>
                                <p>
                                   	 이메일
                                    <span class="as-re">*</span>
                                </p>
                                <p>
                                    <input class="en-input" id="memberEmail" name ="memberEmail" type="text" placeholder="example@poomasi.com">
                                </p>
                                <p>
                                   	 비밀번호
                                    <span class="as-re">*</span>
                                </p>
                                <p>
                                    <input class="en-input" id="memberPwd" name ="memberPwd" type="password" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요">
                                </p>
                                <p>
                                    	관심사 선택(중복 선택 가능)
                                    <span class="as-re">*</span>
                                </p>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" 
                                    style="width: 100%;"  data-bs-toggle="dropdown" aria-expanded="false">
                                    	관심사를 선택해주세요
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1" style="width: 100%;">
                                        <li><a class="dropdown-item" href="#">이사</a></li>
                                        <li><a class="dropdown-item" href="#">청소/정리</a></li>
                                        <li><a class="dropdown-item" href="#">취미/자기계발</a></li>
                                    </ul>
                                </div>
                                 <div class ="">                                   
	                               
	                    			<input type="tel" class="form-control" id="phone" placeholder="Please Enter Phone" name="phone"> <br>               
	                                <label for=""> &nbsp; Gender : </label> &nbsp;&nbsp;
				                    <input type="radio" id="Male" value="M" name="memberGender" checked>
				                    <label for="Male">남자</label> &nbsp;&nbsp;
				                    <input type="radio" id="Female" value="F" name="memberGender">
				                    <label for="Female">여자</label> &nbsp;&nbsp;
                                </div> 
                                <form method="get" action="form-action.html">
                                <br>
                                <div class="cb-agree-all">전체 동의</div>
                                <br>
                                <label><input type="checkbox" name="category" value="agree"> (필수) 이용약관 동의</label>
                                <label><input type="checkbox" name="category" value="privateAgree"> (필수) 개인정보 수집 및 이용 동의</label>
                                <label><input type="checkbox" name="category" value="#"> (필수) 14세 이상입니다</label>
                                </form>
                                <button type="submit" class="sign-up-btn" onclick="signUp()">회원가입</button>
                            </div>                 
                        </form>
                    </div>
                </div>
            </div>
        </div>



	<script>
        
        $(document).ready(function(){
            $('.dropdown-toggle').dropdown();
        });

        function signUp() {
            // 여기에 회원가입을 처리하는 코드 작성 필요
            // 그에 맞는 함수를 호출하거나 필요한 동작을 수행
        }

        function kakaoLogin() {
          // 여기에 카카오 로그인을 처리하는 코드 작성 필요
          // 카카오 API를 사용 -> 그에 맞는 함수를 호출하거나 필요한 동작을 수행
        }
        
        function aa() {
            $('#modal').modal('hide');
        }

		function redirectToHome() {  // 클릭 시 리다이렉션을 수행할 URL을 지정합니다.
		  var redirectUrl = '<%=request.getContextPath()%>/'; 
		  window.location.href = redirectUrl;
		}
	</script>
</body>
</html>