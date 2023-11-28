<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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

       .modal-header> .modal-title{
        text-align: center;
        font-weight: bold;
       }

       .modal-body{
         margin: 20px;
       }


       .btn {
            color: #fff;
            background-color: rgb(0, 199, 174);
            border-color: #6c757d;
        }
    </style>

	<title>모달 창 예제</title>
    <!-- 부트스트랩 링크 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 부트스트랩 및 jQuery 스크립트 추가 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
	
	
	<!-- 버튼 클릭 시 모달 열기 -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        회원 가입
    </button>

    <!-- 첫번째 모달 -->
    <div class="modal" id="myModal" >
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- 모달 헤더 -->
                <div class="modal-header">
                    <h4 class="modal-title" style="text-align: center; font-weight: bold;">품앗이에서 어떤 서비스를 이용하고 싶으신가요?</h4>
                </div>

                <!-- 모달 본문 -->
                <div class="modal-body" style="text-align: center;">
                    
                    <p>원하는 회원가입 유형을 선택하세요.</p>
                    <p>의뢰인으로 가입 후에도 아마추어 등록이 가능합니다.</p>

                    <br>

                    <p>서비스를 의뢰하고 싶다면</p>
                    <button type="submit" class="btn" onclick="openSecondModal()">의뢰인으로 가입</button>
                    

                    <br><br>
                    <p>서비스를 판매하고 싶다면</p>
                    <button type="submit" class="btn">아마추어로 가입</button>
                </div>
            </div>
        </div>
    </div>


</body>
</html>



