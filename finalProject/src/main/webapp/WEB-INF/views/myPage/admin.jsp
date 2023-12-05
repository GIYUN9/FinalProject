<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
    <style>
        p::after{
            display:block;
            content: '';
            border-bottom: solid 2px #ffffff;  
            transform: scaleX(0);  
            transition: transform 250ms ease-in-out;
        }
        p:hover::after{
            transform: scaleX(1);
        }
        .user-info{
            display: flex;
            align-items: center;
            margin-bottom: 40px;
            margin-top: 0px;
            flex-direction: column;
            justify-content: space-evenly;
            margin-left: 0px;
        }
        .pageBox{
            border-radius: 13px;
            border: 1px solid rgba(226, 226, 226, 0.4);
            padding: 15px;
            margin-bottom: 100px;
            position: relative;
        }
        .top-center{
            margin-bottom: -15px;
        }

        .close-btn{
            width: 10px;
            position: absolute;
            right: 12px;
            top: 11px;
            cursor: pointer;
        }
        .ad-table{
            border-collapse: collapse;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        td{
            padding: 10px;
        }
        .ad-table{
            border: none;
        }
        .ad-btn{
            width: 61%;
            border: none;
            color: white;
            background: red;
            border-radius: 4px;
            /* width: 30px; */
            height: 30px;
            margin-top: 30px;
            margin-bottom: -30px;
        }
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="ask.me" style="font-weight: bolder; 
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">문의 내역</a>
            <a class="myPageSideBar" href="">회원 관리</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">문의 내역</h3>
			<br>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
                    <div>
                        <table border="1" class="ad-table">
                            <thead>
                                <input type="text" name="" id="" placeholder="검색">
                                <tr>
                                    <th>선택</th>
                                    <th>번호</th>
                                    <th>이메일</th>
                                    <th>이름</th>
                                    <th>구분</th>
                                    <th>가입일</th>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <button>탈퇴</button>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
</body>
</html>