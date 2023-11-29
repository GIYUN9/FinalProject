<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <style>
        .modal-content{
            margin: 80px 0px 0px 0px;
            width: 600px;
            height: 700px;
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
        }

        .btn-man{
            color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
			width: 80px;
			padding: 5px;
            width: 40%;
        }
        
        .btn-woman{
            color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
			width: 80px;
			padding: 5px;
            width: 40%;
        }

        .btn-before{
			color: black;
            background-color:rgb(158 171 169);
            border: none;
			width: 80px;
			padding: 5px;
		}

		.btn-next{
			color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
			width: 80px;
			padding: 5px;
		}

    </style>

	<title>모달 창 예제</title>
    <!-- 부트스트랩 링크 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	</head>
	
    <div>
        
        <jsp:include page="../common/header.jsp"></jsp:include>
        
        <!-- 부트스트랩 및 jQuery 스크립트 추가 -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        
        <div style="margin-top: 55px;">
            <!-- 버튼 클릭 시 모달 열기 -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            회원가입  	
            </button>

            <!-- 첫번째 모달 -->
            <div class="modal" id="myModal" >
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- 모달 헤더 -->
                        <div class="modal-header" style="text-align: center;">
                            <h4 class="modal-title" style="text-align: center; font-weight: bold;">마지막으로 필수 정보를 입력해주세요.</h4>
                        </div>

                        <!-- 모달 본문 -->
                        <div class="modal-body" >
                            <div>
                                <table>
                                    <tr>
                                        <td>
                                            <p style="font-weight: bold;">성별</p>
                                            <div>
                                                <button type="button" class="btn-man">남자</button>
                                                <span style="margin-right: 10px;"></span> 
                                                <button type="button" class="btn-woman">여자</button>
                                            </div>
                                        </td>
                                    </tr>       
                                    <tr>
                                        <td>
                                            <p></p>
                                        </td>
                                    </tr>            
                                    <tr>
                                        <td>
                                            <p style="font-weight: bold;">휴대전화 번호 인증</p>
                                            <p><input type="text" style="width: 100%;" placeholder="010-2222-2222 형식으로 입력하시오"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p style="font-weight: bold;">인증번호</p>
                                            <p><input type="text" style="width: 100%;" placeholder="인증번호를 입력하시오"></p>
                                        </td>
                                    </tr>                          
                                    <tr>
                                        <td>
                                            <p></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <form method="get" action="form-action.html">
                                                <p style="font-weight: bold;">
                                                    전체 동의
                                                </p>
                                            <label><input type="checkbox" name="category" value="agree"> (필수) 이용약관 동의</label>
                                            <label><input type="checkbox" name="category" value="privateAgree"> (필수) 개인정보 수집 및 이용 동의</label>
                                            <label><input type="checkbox" name="category" value="#"> (필수) 14세 이상입니다</label>
                                            </form>
                                        </td>
                                    </tr>                          
                                </table>                          
                            </div>

                            <br>

                            <div style="display: flex; justify-content: flex-end; margin-top: 10px;">
                                <button type="submit" class="btn-before">이전</button>
                                <span style="margin-right: 15px;"></span> 
                                <button type="submit" class="btn-next">다음</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>        


</body>
</html>



