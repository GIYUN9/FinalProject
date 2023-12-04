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
            background-color:rgba(224, 224, 224, 0.5);
			font-weight: bold;
            border: none;
			width: 100px;
			height: 40px;
			border-radius: 4px;
			padding: 5px;
		}

		.btn-next{
			color: #fff;
			font-weight: bold;
            background-color: rgb(0, 199, 174);
            border: none;
			width: 100px;
			height: 40px;
			border-radius: 4px;
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

		.progress{
			min-width: 75%
		}

		.progress-bar {
			min-width: 100%
			
		}

		td{
			padding: 10px;
			border:1px solid rgba(0,0,0,.125);
		}
		.pe-pg-bar{
			background-color: rgb(241, 240, 240);
			width: 400px;
			height: 5px;
			margin-top: 5px;
			border-radius: 8px;
			position: relative;
			margin-bottom: 30px;
		}
		.pe-pg-bar-per{
			position: absolute;
			color: rgb(87, 212, 197);
			font-size: 12px;
			right: -25px;
			top: -7px;
		}
		.pe-pg-bar-fill{
			background: rgb(87, 212, 197);
			width: 200px;
			height: 5px;
			position: absolute;
			right: 225px;
			top: 7px;
			border-radius: 8px;
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
	        다음
	    </button>
	
	    <!-- 첫번째 모달 -->
	    <div class="modal" id="myModal" >
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <!-- 모달 본문 -->

	                <div class="modal-body" >
						<div class="pe-pg-bar">
							<div class="pe-pg-bar-per">50%
								<div class="pe-pg-bar-fill"></div>
							</div>
						</div>
						<div id="selectBox" class="list-group">
							<div>
								<h5 style="text-align: center; font-weight: bold;">어떤 서비스를 제공할 수 있나요?</h5>

								<br>

								<table style="border:1px solid rgba(0,0,0,.125); width: 100%; border-collapse: collapse;">

									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="casting" type="checkbox" name="category"> 
											<label for="casting">웨딩</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="mc" type="checkbox" name="category"> 
											<label for="mc">촬영 및 편집</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="dance" type="checkbox" name="category"> 
											<label for="dance">뮤직/엔터테인먼트</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="vocal" type="checkbox" name="category"> 
											<label for="vocal">음식</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="band" type="checkbox" name="category"> 
											<label for="band">뷰티/미용</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="classic" type="checkbox" name="category"> 
											<label for="classic">기획 및 장식</label>
										</td>
									</tr>
									<tr style="border:1px solid rgba(0,0,0,.125);">
										<td>
											<input id="DJ" type="checkbox" name="category"> 
										<label for="DJ">장비 및 자동차 대여</label>
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