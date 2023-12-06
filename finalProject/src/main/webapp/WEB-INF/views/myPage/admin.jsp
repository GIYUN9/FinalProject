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
            margin-top: 30px;
        }
        .ad-btn{
            width: 100%;
            border: none;
            color: white;
            background: rgb(218, 76, 60);
            border-radius: 4px;
            /* width: 30px; */
            height: 30px;
            margin-top: 30px;
            margin-bottom: -30px;
            cursor: pointer;
        }
        .src-mem{
            width: 467px;
            margin-bottom: 20px;
            border: 1px solid #3b3b3b5c;
            border-radius: 8px;
            padding-left: 10px;
        }
        .user-info2{
            width: 295px;
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-radius: 8px;
            position: relative;
        }
        .table-area{
            height: 300px;
            overflow-y: auto;
        }
        .table-area::-webkit-scrollbar {
			width: 0px; 
		}
        .src-area{
            position: absolute;
            width: 100%;
        }
        .ad-can{
            position: absolute;
            top: 343px;
            right: 0px;
            border: none;
            border-top: 1px solid black;
            border-radius: 0px 0px 8px 8px;
            width: 100%;
        }
        .sel-mem{
            border-top: 1px solid;
            border-bottom: 1px solid;
            width: 100%;
            height: 50px;
            padding: 10px;
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
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
            <a class="myPageSideBar" href=""  style="font-weight: bolder; 
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 관리</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">회원 관리</h3>
			<div class="pageBox" style="display: flex; flex-direction: row;">
				<div class="user-info">
                    <div class="table-area">
                        <table border="1" class="ad-table">
                            <thead>
                                <div class="src-area">                                
                                    <input class="src-mem" type="text" name="" id="" placeholder="검색">
                                </div>
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
                                <var>                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>1</td>
                                    <td>asd@navve.rcom</td>
                                    <td>김김김</td>
                                    <td>일반회원</td>
                                    <td>2023-12-05</td>
                                </tr>
                            </var>
                            </thead>
                        </table>
                    </div>
                    <button class="ad-btn">탈퇴</button>
				</div>
                <div class="user-info2">
                    <div class="sel-mem">asdadsadsd</div>
                    <button class="ad-can">취소</button>
                </div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
</body>
</html>