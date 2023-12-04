<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*,
	*::before,
	*::after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	}
	body{
		background: url('././resources/image/main.png') no-repeat center center fixed; 
  		background-size: cover;		
	}
	.helpme-board{
        background-color: white;
        width: 700px;
        height: 500px;
        margin-left: 30%;
        margin-top: 7%;
        margin-bottom: 10%;
        border-radius: 8px;
        display: flex;
        flex-direction: column;
	}
    .helpu-top-section{
        display: flex;
        padding: 15px;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        position: relative;
        margin-top: 15px;
    }
    .hu-close-btn{
        width: 10px;
        right: 20px;
        position: absolute;
        cursor: pointer;
        top: 4px;
	}
    .hu-submit-btn{
        background: rgb(218, 76, 60);
        border: none;
        border-radius: 4px;
        width: 100px;
        height: 30px;
        color: white;
        cursor: pointer;
        margin: 7px;
    }
    .hu-cancle-btn{
        background-color: rgba(224, 224, 224, 0.5);
        border: 1px solid rgba(224, 224, 224, 0.5);
        border-radius: 4px;
        width: 100px;
        height: 30px;
        margin: 7px;
    }
    .hu-title{
        width: 300px;
        height: 20px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
    }
    .hu-content{
        width: 300px;
        height: 157px;
        padding: 10px;
        padding-bottom: 130px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
        resize: none;
        overflow: hidden;
    }
    .hu-upfile{
        width: 300px;
        height: 32px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 0px;
        display: flex;
        font-size: 14px;
        align-items: center;
        justify-content: center;
        cursor: pointer;
    }
    input[type=file]::file-selector-button {
        width: 150px;
        height: 30px;
        background: #fff;
        border: 0px solid rgb(77,77,77);
        margin-left: 70px;
        border-radius: 10px;
        cursor: pointer;
        font-size: 12px;
    }
    .hu-price{
        width: 300px;
        height: 27px;
        border: 1px solid rgba(96, 96, 96, 0.5);
        border-radius: 8px;
        margin-bottom: 15px;
        text-align: end;
        padding-right: 26px;    
    }
    .hu-input-area{
        display: flex;
        flex-direction: column;
        position: relative;
    }
    .hu-align{
        display: flex;
        flex-direction: row;
    }
    .hu-text{
        position: relative;
        text-align: center;
        align-items: center;
        justify-content: center;
        font-size: 14px;
        left: -202px;
        font-weight: bold;
        display: flex;
    }
    .hu-top-section{
        margin-bottom: 30px;
    }
    .hu-btn-area{
        display: flex;
        flex-direction: row;
        margin-top: 15px;
    }
    .aa{

    }
    .bb{
        position: absolute;
        left: -71px;
        top: 1px;
        font-size: 13px;
        font-weight: bolder;
    }
    .cc{
        position: absolute;
        left: -71px;
        top: 37px;
        font-size: 13px;
        font-weight: bolder;
    }
    .dd{
        position: absolute;
        left: -86px;
        font-size: 13px;
        font-weight: bolder;
        top: 214px;
    }
    .ee{
        position: absolute;
        left: -86px;
        top: 280px;
        font-size: 13px;
        font-weight: bolder;
    }
    .clip-img{
        width: 30px;
        position: absolute;
        left: 96px;
        height: 30px;
        bottom: 76px;
    }
    .upfile-text{
        width: 100%;
    }
    .hu-uploaded{
        margin-bottom: 18px;
        font-size: 12px;
    }
    .price-measure2{
        position: absolute;
        right: 12px;
        font-size: 13px;
        top: 284px;
        font-weight: bold;
    }
    .hu-filename{
        border: none;
    }
</style>

</head>
<body>
<%@ include file="../common/header.jsp" %>
 	<div>
        <div class="helpme-board">
            <div class="helpu-top-section">
                <img class="hu-close-btn" src="././resources/icon/close.png">
                    <div class="hu-top-section">
                        <p>도와줄게요 게시글 작성</p>
                    </div>
                  <from id="helpu" method="post" action="">
                    <div class="hu-align">
                        <div class="hu-input-area">
                            <div class="aa">
                                <div class="bb">
                                    제목
                                </div>
                                <input class="hu-title" type="text"/>
                            </div>  
                            <div class="aa">
                                <div class="cc">
                                    내용
                                </div>
                                <textarea class="hu-content" type="text"></textarea>
                            </div>  
                            <div class="aa">
                                <label class="hu-upfile" className="input-file-button" for="hu-upfile">
                                    파일첨부
                                    <img class="clip-img" src="././resources/icon/paperclip.png" for="hu-upfile">
                                </label>
                                <div class="hu-uploaded">
                                    <input class="hu-filename" type="text" id="fileName"  name="fileName">
                                </div>
                                <div class="dd">
                                    파일첨부
                                </div>
                                <input id="hu-upfile" class="hu-upfile" type="file" style="display: none;"  onchange="javascript:document.getElementById('fileName').value = this.value">
                            </div>  
                            <div class="aa">
                                <input class="hu-price" type="text" id="price" placeholder="최소 1,000">
                                <p class="price-measure2">원</p>
                                    <div class="ee">
                                        희망가격
                                    </div>
                                </input>
                            </div>  
                        </div>
                    </div>
                    <div class="hu-btn-area">
                        <button type="reset" class="hu-cancle-btn">취소</button>
                        <button type="submit" class="hu-submit-btn">등록</button>
                    </div>
            </div>
        </div>
    </div>
<script>
    const input = document.querySelector('#price');
    input.addEventListener('keyup', function(e) {
    let value = e.target.value;
    value = Number(value.replaceAll(',', ''));
    if(isNaN(value)) {
        input.value = 0;
    }else {
        const formatValue = value.toLocaleString('ko-KR');
        input.value = formatValue;
    }
    })
</script>


<%@ include file="../common/footer.jsp" %>




</body>
</html>