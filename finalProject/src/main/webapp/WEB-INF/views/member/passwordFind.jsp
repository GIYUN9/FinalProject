<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <style>
        .modal-content{
            margin: 80px 0px 0px 0px;
            width: 600px;
            height: 400px;
        }

        .modal-header{
        text-align: center;
        font-weight: bold;
        margin: 20px;
       }

       .modal-header> .modal-title{
        text-align: center;
        font-weight: bold;
       }

       .modal-body{
         margin: 20px 60px;
       }


       .btn {
            color: #fff;
            background-color: rgb(0, 199, 174);
            border-color: #6c757d;
        }

        .emailSend-btn{
            color: #fff;
            background-color: rgb(0, 199, 174);
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
	        비밀번호 찾기
	    </button>
	
	    <!-- 첫번째 모달 -->
	    <div class="modal" id="myModal" >
	        <div class="modal-dialog">
	            <div class="modal-content">
	
	                <!-- 모달 헤더 -->
	                <div class="modal-header">
	                    <h4 class="modal-title" style="text-align: center; font-weight: bold; margin: 0 auto;">비밀번호 찾기</h4>
	                </div>
	
	                <!-- 모달 본문 -->
	                <div class="modal-body">
	                    
	                  <table>
                        <tr>
                            <td>
                                <p>가입한 이메일 주소를 입력해주세요</p>
                                <p><input type="text" style="width: 100%;" placeholder="example@poomasi.com"></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>가입하신 이메일 주소를 입력해주시면
                                    새로운 비밀번호를 설정 가능한 링크를 보내드립니다.
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <button type="submit" class="emailSend-btn" onclick="emailSend()">이메일 전송하기</button>
                                </p>
                            </td>
                        </tr>
                      </table>  
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	


	<script>
        function emailSend() {
          // 여기에 이메일 인증을 처리하는 코드 작성 필요
          // 이메일 인증 API를 사용 -> 그에 맞는 함수를 호출하거나 필요한 동작을 수행
        }
      </script>

</body>



	
</html>



