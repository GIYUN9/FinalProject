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
         margin: 20px auto;
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

        .horizontal-align-container {
            display: flex;
            align-items: center;
            justify-content: center; /* 중앙 정렬을 위해 추가 */
            flex-direction: column; /* 세로 정렬을 위해 추가 */
            text-align: center;
            padding: 10px;
        }

        .horizontal-align-row {
            display: flex;
            justify-content: space-around; /* 가로 정렬을 위해 추가 */
        }

        .categoryArea{
            display: flex;
            flex-direction: column;
            align-items: center; /* 수직 정렬을 위해 추가 */
            text-align: center; /* 텍스트 가운데 정렬을 위해 추가 */
        }

        .categoryArea a {
            display: block; /* a 태그를 블록 수준 요소로 만들어 전체 영역을 클릭 가능하게 함 */
            width: 100%; /* 너비를 100%로 설정하여 수직으로 정렬된 요소를 클릭 가능하게 함 */
            text-decoration: none; /* 링크에 기본적으로 적용되는 밑줄 제거 */
            color: inherit; /* 링크 색상을 부모로부터 상속 */
        }

        .category-img {
            height: 100px;
            width: 100px;
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
                                <tr class="horizontal-align-row">
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            레슨
                                        </a>
                                    </td>
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            홈/리빙
                                        </a>
                                    </td>
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            이벤트
                                        </a>
                                    </td>
                                </tr>
                                <tr class="horizontal-align-row">
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            비즈니스
                                        </a>
                                    </td>
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            디자인/개발
                                        </a>
                                    </td>
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            건강/미용
                                        </a>
                                    </td>
                                </tr>
                                <tr class="horizontal-align-row">
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            알바
                                        </a>
                                    </td>
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            기타
                                        </a>
                                    </td>
                                    <td class="horizontal-align-container">
                                        <a href="" class="categoryArea">
                                            <img src="/finalProject/resources/icon/학사모.png" alt="학사모 사진" class="category-img">
                                            기타
                                        </a>
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



