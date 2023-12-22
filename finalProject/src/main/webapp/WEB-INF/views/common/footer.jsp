<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .ft-info{
        font-size: 12px;
        color: rgb(127, 127, 127);
        width: 600px;
        align-items: center;
        display: flex;
        flex-direction: column;
    }
    .footers{
        background: rgba(224, 224, 224, 0.8);
        width: 100%;
        height: 16%;
        display: flex;
        justify-content: space-between;
        padding-top: 15px;
    }
    .footers p{
        margin-top: -5px;
        margin-bottom: 5px;
        text-align: center;
    }
    .ft-contact{
        display: flex;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .ft-phone{
        color: rgb(0, 199, 174);
        font-size: 16px;
        font-weight: bold;
        margin-right: 20px;
    }
    .ft-time{
        font-size: 11px;
        color: rgb(147, 147, 150);
    }
    .ft-tb{
        font-size: 16px;
        text-align: center;
        margin-right: 150px;
        border-collapse: separate;
        border-spacing: 20px 10px;
    }
	.ft-category{
        display: flex;
        padding-right: 100px;
    }
    .ft-pd{
        padding-left: 300px;
    }
	.ft-logo{
        width: 200px;
        height: 200px;
        display: flex;
        margin-right: 150px;
        margin-left: -80px;
    }
</style>
</head>
<body>
    <footer class="footers">
        <div class="ft-pd">
            <div class="ft-contact">
                <div class="ft-phone">
                    <p>대표전화</p> 
                    <p>1544-9970 </p>
                </div>
                <div class="ft-time">
                    <p>(09:00 ~ 19:00)</p>
                    <p>주말 및 공휴일에도 </p>
                    <p>상담 및 접수 가능합니다.</p>
                </div>
            </div>
            <div class="ft-info">
                <p>품앗이는 통신판매 중개자로서 통신판매의 당사자가 아니며 개별 판매자가 제공하는 서비스에 대한 이행, 계약사항 등과 관련된 의무와 책임은 거래 당사자에게 있습니다.</p>
                <br>
                <p>상호명: 품앗이 · 조장,이슈관리: 나기윤 · 형상관리: 최창영 · DB관리: 김경보  · 일정관리 : 이지혜</p>
                <p>강남지원 1관 : 서울특별시 강남구 테헤란로14로길 6 남도빌딩 2F, 3F, 4F, 5F, 6F ·</p>
                <P>사업자등록 번호 888-88888-88888888 · 직업정보제공사업</P>
                <P>Copyright @ Poom At yee Inc. All Rights Reserved</P>
            </div>
        </div>

        <div class="ft-category">
            <table class="ft-tb">
                <th>카테고리</th>
                <th>공지사항</th>
                <th>고객서비스</th>
                <th>회원</th>
                <tr>
                    <td>영상</td>
                    <td>공지사항</td>
                    <td><a href="chat.ch">챗봇</a></td>
                    <td>로그인</td>
                </tr>
                <tr>
                    <td>사진</td>
                </tr>
                <tr>
                    <td>음악</td>
                </tr>
                <tr>
                    <td>운동</td>
                </tr>
                <tr>
                    <td>밥</td>
                </tr>
            </table>
            <img class="ft-logo" src="././resources/image/logobg.png">
        </div>
    </footer>
</body>
</html>