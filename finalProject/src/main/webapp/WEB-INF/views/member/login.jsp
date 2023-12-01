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

       .login-btn {
            color: black;
            background-color: yellow;
            border: none;
            width: 100%;
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

                    <!-- 모달 헤더 -->
                    <div class="modal-header" style="text-align: center;">
                        <h4 class="modal-title" style="text-align: center; font-weight: bold; margin: 0 auto;">Login</h4>
                    </div>

                    <!-- 모달 본문 -->
                    <div class="modal-body" >
                        <form action="" method="post">
                            <table>
                                <!--입력하면 값 넘어갈 수 있게끔-->
                                <tr>
                                    <td colspan="2" >
                                        <p style="font-weight: bold;">이메일</p>
                                        <p><input type="text" style="width: 100%;" placeholder="example@poomasi.com" ></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" >
                                        <p></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" >
                                        <p style="font-weight: bold;">비밀번호</p>
                                        <p><input type="password" style="width: 100%;" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" justify-content: space-between;>
                                        <p></p>
                                    </td>
                                </tr>
                                <tr style="display: flex; justify-content: space-around;">
                                    <td> 
                                        <a class="loginSearch" href="#" style="color: black;"> 비밀번호 찾기</a>
                                    </td>
                                    <td>
                                        <a class="loginSearch" href="#" style="color: black;"> 회원가입</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" >
                                        <p></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" >
                                        <p></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class= "d-grid gap-2 col-6 mx-auto" >
                                        <button  type="submit" class="login-btn" style="width: 100%;" onclick="kakaoLogin()" >카카오 로그인</button>
                                    </td>
                                </tr>
                            </table>                 
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



