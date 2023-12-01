<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <style>
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
    </style>

	<title>모달 창 예제</title>
    <!-- 부트스트랩 링크 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	</head>
	
	<body>
	
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<!-- 부트스트랩 및 jQuery 스크립트 추가 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
	
    <div style="margin-top: 55px;">
        <!-- 버튼 클릭 시 모달 열기 -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        로그인  	
        </button>

        <!-- 첫번째 모달 -->
        <div class="modal" id="myModal" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body" >
                        <form action="" method="post">
                                <!--입력하면 값 넘어갈 수 있게끔-->
                                    <h2 class="modal-title" style="text-align: center; font-weight: bold; margin: 0 auto;">Login</h2>
                                        <div class="l-text1" style="font-weight: bold;">이메일</div>
                                        <input class="l-email-input" type="text" style="width: 100%;" placeholder="example@poomasi.com" >

                                        <div class="l-text" style="font-weight: bold;">비밀번호</div>
                                        <input class="l-pwd-input" type="password" style="width: 100%;" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요">


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
    </div>

	<script>
        function kakaoLogin() {
          // 여기에 카카오 로그인을 처리하는 코드 작성 필요
          // 카카오 API를 사용 -> 그에 맞는 함수를 호출하거나 필요한 동작을 수행
        }
      </script>


    </body>

	<jsp:include page="../common/footer.jsp"></jsp:include>

</html>



