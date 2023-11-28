<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>활동 지역 설정</title>

<style>
    .text{
        text-align: center;
    }

    .text-box {
        width: 400px; 
        border: none; 
        border-bottom: 1px solid black; 
        outline: none;
    }
    
    .input-box {
        text-align: center;
        padding-left: 33px;
    }

    .tip-box{
        margin: 20px 200px 40px 375px;
        font-size: 13px;
    }

    .btn-1{
        background-color: azure; 
        border: none; 
        width: 100px; 
        height: 30px;
    }

    .btn-2{
        background-color: red; 
        border: none; 
        color: white; 
        width: 100px; 
        height: 30px;
    }

    .btn-cs {
        text-align: right;
        margin: 0px 337px 0px 50px;
    }

    .main{
        padding: 50px 20px 20px 20px;
    }
</style>

</head>
<body>
    <div class="main">
        <div>
            <h2 class="text">활동지역을 설정해주세요</h2>
            <h2 class="text">더 확실한 고객을 연결해 드려요</h2>  
        </div>
        <div class="input-box">
            <input type="text" class="text-box" placeholder="예)판교역로 166, 분당 주공, 백현동 532">
        </div>
        <div class="tip-box">
            <h3>tip</h3>
            <p>아래와 같은 조합으로 검색을 하시면 더욱 정교한 결과가 검색됩니다.</p>
            <p>
	               도로명 + 건물번호<br>
	               예) 판교역로 166, 제주 첨단로 242
            </p>
            <p>
	                지역명(동/리) + 번지<br>
	                예) 백현동 532, 제주 영평동 2181
            </p>
            <p>
	                지역명(동/리) + 건물명(아파트명)<br>
	                예) 분동 주공, 연수동 주공 3차
            </p>
            <p>
	                사서함명 + 번호<br>
	                예) 분당우체국 사서함 1-100
            </p>            
        </div>
        <div class="btn-cs">
            <button class="btn-1">건너뛰기</button>
            <button class="btn-2">다음</button>
        </div>
            
    </div>
</body>
</html>