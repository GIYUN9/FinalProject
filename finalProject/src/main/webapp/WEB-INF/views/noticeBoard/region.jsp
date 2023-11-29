<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>활동 지역 설정</title>

<style>
    .btn-1{
        background-color: azure; 
        border: none; 
        width: 100px; 
        height: 30px;
        margin-right: 10px;
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
        padding: 25px;
    }

    .input-box{
        width: 450px;
        height: 20px;
        border: none;
        border-bottom: 1px solid black;
        outline: none;
    }

    .region-area{
        background-color: white;
        margin: 200px 0px 0px 550px;
        width: 37%;
        height: 565px;
        border-radius: 10px;
    }

    .td-area{
        font-weight: bold;
        font-size: 20px;
        margin-left: 120px;
    }

    .td-text{
        font-size: 13px;
        margin-left: 120px;
    }

    .tr-header{
        text-align: center;
    }
</style>

</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <table class="region-area">
            <tr class="tr-header">
                <td class="td-header">
                    <h2>
                        활동지역을 설정해주세요<br>
                        더 확실한 고객을 연결해 드려요
                    </h2>
                </td>
            </tr>
            
            <tr class="tr-header">
                <td class="td-input">
                    <input type="text" class="input-box" placeholder="예)판교역로 166, 분당 주공, 백현동 532">
                </td>
            </tr>

                <tr class="tr-header">
                    <td class="td-area">tip</td>
                </tr>
                <tr class="tr-header">
                    <td class="td-text">
                        아래와 같은 조합으로 검색을 하시면 더욱 정교한 결과가 검색됩니다.
                    </td>
                </tr>
                <tr class="tr-header">
                    <td class="td-text">
                        도로명 + 건물번호<br>
                        예) 판교역로 166, 제주 첨단로 242
                    </td>
                </tr>
                <tr class="tr-header">
                    <td class="td-text">
                        지역명(동/리) + 번지<br>
                        예) 백현동 532, 제주 영평동 2181
                    </td>
                </tr>
                <tr class="tr-header">
                    <td class="td-text">
                        지역명(동/리) + 건물명(아파트명)<br>
                        예) 분동 주공, 연수동 주공 3차
                    </td>
                </tr>
                <tr class="tr-header">
                    <td class="td-text">
                        사서함명 + 번호<br>
                        예) 분당우체국 사서함 1-100
                    </td>
                </tr>
           
        <tr>
            <td class="btn-cs">
                <button class="btn-1">건너뛰기</button>
                <button class="btn-2">다음</button>
            </td>
        </tr>
    </table>
   
</body>
</html>