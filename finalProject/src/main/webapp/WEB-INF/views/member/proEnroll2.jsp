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

		.category2 {
            width: 100%; /* 테이블의 가로 길이를 100%로 설정 */
            border-collapse: collapse; /* 테이블 셀 간의 간격을 없애기 위해 사용 */
        }

        .category2, .category2 tr, .category2 td {
            border: 1px solid black; /* 테이블과 셀에 테두리를 추가 */
        }

        .category2 tr, .category2 td {
            padding: 10px; /* 셀 내용과 테두리 간의 여백 설정 */
        }

		.list-group{
			display: flex;
			flex-direction: column;
			padding-left: 0;
		}

		.list-group-item {
			border: 1px solid #ccc; /* 테두리 스타일과 색상을 지정합니다. */
			padding: 10px; /* 선택적으로 내부 여백을 지정할 수 있습니다. */
			margin: 5px 0; /* 선택적으로 외부 여백을 지정할 수 있습니다. */
		}

		.progress{
			min-width: 50%
		}

		.progress-bar {
			min-width: 100%
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
	        회원 가입
	    </button>
	
	    <!-- 첫번째 모달 -->
	    <div class="modal" id="myModal" >
	        <div class="modal-dialog">
	            <div class="modal-content">
	
	                <!-- 모달 헤더 -->
	                <div class="modal-header">
	                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
							<div class="progress-bar" style="width: 50%">50%</div>
						</div>


	                </div>
	
	                <!-- 모달 본문 -->
	                <div class="modal-body" >

						<div id="selectBox" class="list-group">
							<div >
								<h4 style="text-align: center; font-weight: bold;">어떤 서비스를 제공할 수 있나요?</h4>

								<br>

								<table style="border:1px solid rgba(0,0,0,.125); width: 100%;" cellpadding="10">

									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="wedding" type="checkbox" name="category"> 
											<label for="wedding">웨딩</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="photograph" type="checkbox" name="category"> 
											<label for="photograph">촬영 및 편집</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="music" type="checkbox" name="category"> 
											<label for="music">뮤직/엔터테인먼트</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="cook" type="checkbox" name="category"> 
											<label for="cook">음식</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="beauty" type="checkbox" name="category"> 
											<label for="beauty">뷰티/미용</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="planning" type="checkbox" name="category"> 
											<label for="planning">기획 및 장식</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="equipment" type="checkbox" name="category"> 
										<label for="equipment">장비 및 자동차 대여</label>
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
     
</body>
</html>