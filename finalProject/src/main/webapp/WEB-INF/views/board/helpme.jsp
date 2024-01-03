<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와주세요 게시글 등록</title>

<link rel="stylesheet" type="text/css" href="././resources/css/helpmeboder.css">

</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="outer">
    <br>
    <h2 align="center">도와주세요 등록</h2>
    <br>

    <form method="post" action="helpmeInsert.bo" enctype="multipart/form-data">
      
        <input type="hidden" value="${loginUser.memberNo}" name="memberNo">
        <table align="center">
          
            <tr colspan="3">
                <th>카테고리</th>
                <td>                  
                    <select name="categoryNo" id="categoryNo">
                        <option value="200">200</option>
                        <option value="201">201</option>
                        <option value="202">202</option>
                        <option value="203">203</option>
                        <option value="204">204</option>
                        <option value="205">205</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th width="100">제목</th>
                <td colspan="3">
                    <input type="text" name="boardTitle" value="" >
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3">
                    <textarea name="boardContent" rows="5"  style="resize: none;" ></textarea>
                </td>
            </tr>
            <tr>
                <th>대표이미지</th>
                <td colspan="3">
                    <img id="title-img" width="250" height="170" onclick="chooseFile(1);">
                </td>
            </tr>
            <tr>
                <th>상세이미지</th>
                <td><img id="content-img1" width="150" height="120" onclick="chooseFile(2);"></td>
                <td><img id="content-img2" width="150" height="120" onclick="chooseFile(3);"></td>
                <td><img id="content-img3" width="150" height="120" onclick="chooseFile(4);"></td>
                <td><img id="content-img4" width="150" height="120" onclick="chooseFile(5);"></td>
                <td><img id="content-img5" width="150" height="120" onclick="chooseFile(6);"></td>
                <td><img id="content-img6" width="150" height="120" onclick="chooseFile(7);"></td>
            </tr>
            <tr>
                <th>희망가격</th>
                <td colspan="2">
                    <input class="hu-price" type="number" id="price" name="price" placeholder="최소 1,000" value="" oninput="money()">
                </td>
                <td>원</td>
            </tr>
            <tr>
                <th>게시판</th>
                <td>
                    <select name="boardType" id="boardType">
                        <option value="2">도와주세요</option>
                        <option value="1">도와줄게요</option>                
                    </select>
                </td>  
            </tr>
           
        </table>

        <div style="display: none;">
            <input type="file" name="upfile" id="file1" required onchange="loadImg(this,1)">
            <input type="file" name="upfile" id="file2" onchange="loadImg(this,2)">
            <input type="file" name="upfile" id="file3" onchange="loadImg(this,3)">
            <input type="file" name="upfile" id="file4" onchange="loadImg(this,4)">
            <input type="file" name="upfile" id="file5" onchange="loadImg(this,5)">
            <input type="file" name="upfile" id="file6" onchange="loadImg(this,6)">
            <input type="file" name="upfile" id="file7" onchange="loadImg(this,7)">
        </div>

        <script>
            function loadImg(inputFile, num){
                console.log(inputFile)
                //inputFile : 현재 변화가 생긴 input type=file 요소객체
                // num : 몇번째 input요소인지 확인하기위한 파라미터
              
                //inputFile.files[0]에 선택된 파일이 담겨있을 것이다.
                //inputFile.files.length => 1일 것이다.

                if(inputFile.files.length == 1) { // 파일이 선택된 경우 => 미리보기 나타나게
                    //파일을 읽어들일 FileReader객체 생성
                    const reader = new FileReader();
                    
                    //파일을 읽어들이는 메소드
                    //해당파일을 읽어들이는 순간 해당 파일만의 고유한 url부여
                    reader.readAsDataURL(inputFile.files[0]);
                 
                    //파일 읽어들이기 완료했을 때 실행할 함수 정의
                    reader.onload = function(ev){          
                        //ev.target.result => 읽어들인 파일의 고유한 url
                        switch(num){
                            case 1: document.getElementById('title-img').src = ev.target.result; break;
                            case 2: document.getElementById('content-img1').src = ev.target.result; break;
                            case 3: $("#content-img2").attr("src", ev.target.result); break;
                            case 4: $("#content-img3").attr("src", ev.target.result); break;
                            case 5: $("#content-img4").attr("src", ev.target.result); break;
                            case 6: $("#content-img5").attr("src", ev.target.result); break;
                            case 7: $("#content-img6").attr("src", ev.target.result); 
                        }
                    }

                } else { // 선택된 파일이 취소된 경우 => 미리보기 사라지게
                    switch(num){
                        case 1: document.getElementById('title-img').src = null; break;
                        case 2: document.getElementById('content-img1').src = null; break;
                        case 3: $("#content-img2").attr("src", null); break;
                        case 4: $("#content-img3").attr("src", null); break;
                        case 5: $("#content-img4").attr("src", null); break;
                        case 6: $("#content-img5").attr("src", null); break;
                        case 7: $("#content-img6").attr("src", null); 
                    }
                }
            }
            
            function chooseFile(num){
                $("#file" + num).click();
            }
            
            function submitForm() {
                // 필요한 로직 추가
                document.forms[0].submit(); // 양식 제출
                return false; // 기본 제출 동작 막기
            }
            
          //금액제한 스크립트
            function money() {
                var inputField = document.getElementById('price');
                var price = inputField.value;

                if (price < 1000) {
                    inputField.setCustomValidity('최소 1,000원 이상 입력해주세요.');
                }else {
                    inputField.setCustomValidity('');
                }
            }
        </script>

        <br>

        <div align="center">
            <button type="reset" class="hu-cancle-btn">취소</button>
            <button type="submit" class="hu-submit-btn">등록</button>
        </div>

    </form>
</div>

<%@ include file="../common/footer.jsp" %>


</body>
</html>