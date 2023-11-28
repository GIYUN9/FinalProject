<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .modal-content{
            margin: 80px 0px 0px 0px;
            width: 600px;
            height: 600px;
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

        .line-break {
        white-space: pre-line;
        }

    </style>




</head>

<body>
<!-- 부트스트랩 및 jQuery 스크립트 추가 -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



<!-- 버튼 클릭 시 모달 열기 -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
  비밀번호 찾기
</button>





    <!-- 첫번째 모달 -->
    <div class="modal" id="myModal" >
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- 모달 헤더 -->
                <div class="modal-header" style="text-align: center;">
                    <h4 class="modal-title" style="text-align: center; font-weight: bold;">Login</h4>
                </div>

                <!-- 모달 본문 -->
                <div class="modal-body" >
                    <table>
                        <tr>
                            <td colspan="3" >
                                <p>이메일</p>
                                <p><input type="text" style="width: 100%;" placeholder="example@poomasi.com"></p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" >
                                <p>비밀번호</p>
                                <p><input type="text" style="width: 100%;" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요"></p>
                         
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" >
                                <p></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a class="loginSearch" href="#" style=""> 아이디 찾기</a>
                            </td>
                            
                            <td>
                                <a class="loginSearch" href="#" style=""> 비밀번호 찾기</a>
                            </td>
                            
                            <td>
                                <a class="loginSearch" href="#" style=""> 회원가입</a>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="3" >
                                <p></p>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="3" class= "d-grid gap-2 col-6 mx-auto">
                                <button type="submit" class="login-btn">카카오 로그인</button>
                            </td>
                        </tr>
                    </table>                 
                </div>
            </div>
        </div>
    </div>
</body>
</html>