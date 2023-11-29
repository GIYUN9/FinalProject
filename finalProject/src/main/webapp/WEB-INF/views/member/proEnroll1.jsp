<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <style>
        .modal-content{
            margin: 80px 0px 0px 0px;
            width: 600px;
            height: 800px;
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
      아마추어로 가입  	
    </button>

    <!-- 첫번째 모달 -->
    <div class="modal" id="myModal" >
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- 모달 헤더 -->
                <div class="modal-header" style="text-align: center;">
                    <h4 class="modal-title" style="text-align: center; font-weight: bold;">활동 분야를 선택하세요</h4>
                </div>

                <!-- 모달 본문 -->
                <div class="modal-body" >
                    
                 
                    
                        <table>
                            <tr>
                                <td>
                                    <a href=""></a>
                                    <button type="button" class="navyBtn" onClick="location.href='#'">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                        <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
                                      </svg>
                                    레슨
                                </td>
                                <td>
                                    
                                    <img src="  " alt="  " height=100 width=100 >
                                    홈/리빙
                                </td>
                                <td>
                                    <img src="  " alt="  " height=100 width=100 >
                                    이벤트
                                </td>
                                
                            </tr>
                        </table>
                    



                    </div>

                    
                    
                </div>
            </div>
        </div>
    </div>
</div>





</body>

	<jsp:include page="../common/footer.jsp"></jsp:include>

</html>



