<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            height: 300px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-top: none;
            position: relative;
            overflow-y: auto;
        }
        .user-info2-top{
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-radius: 8px 8px 0px 0px;
            background: rgba(226, 226, 226, 0.4);
            font-size: 17px;
            height: 31px;
            text-align: center;
            font-weight: 600;
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
            right: 0px;
            border: none;
            width: 295px;
            height: 30px;
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-top: none;
            border-radius: 0px 0px 9px 9px;
            cursor: pointer;
        }
        .sel-mem{
            border-bottom: 1px solid rgba(96, 96, 96, 0.4);
            width: 100%;
            height: 50px;
            padding: 10px;  
            line-height: 1.0;
            display: flex;
            flex-direction: column;
        }
        .sel-mem2{
            border-bottom: 1px solid rgba(96, 96, 96, 0.4);
            width: 100%;
            height: 50px;
            padding: 10px;  
            line-height: 1.0;
            display: flex;
            flex-direction: column;
            align-items: end;
        }
        .user-info2::-webkit-scrollbar {
			width: 0px; 
		}
        .align-mem{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }
        .align-mem:hover{
            background: black;
            background-color: rgba(226, 226, 226, 0.4);
        }
        .upper-text{
            font-size: 9px; 
            margin-bottom: 10px; 
            margin-top: -8px; 
            margin-left: -5px; 
            color: rgba(147, 147, 150);
        }
        .lower-text{
            margin-top: 7px; 
            margin-left: -5px;
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
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
            <c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me"  style="font-weight: bolder; 
			    background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 관리</a>
            <a class="myPageSideBar" href="ask.me">신고 내역</a>
            </c:if>            
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
                    <button class="ad-btn">탈퇴</button>
				</div>
                <div>
                    <div class="user-info2-top">
                        회원관리
                    </div>
                    <div class="user-info2">
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">김김김</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 1</span>
                                <span class="lower-text">qweasd@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">이이이</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 2</span>
                                <span class="lower-text">dfchg@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">박박박</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 3</span>
                                <span class="lower-text">rey@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">최최최</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 4</span>
                                <span class="lower-text">cdfgh@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">구구구</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 5</span>
                                <span class="lower-text">xcv@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">광광광</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 6</span>
                                <span class="lower-text">tyu@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">조조조</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 7</span>
                                <span class="lower-text">xzdu@anver,com</span>
                            </div>
                        </div>
                        <div class="align-mem">                        
                            <div class="sel-mem">
                                <span class="upper-text">일반회원</span>
                                <span class="lower-text">윤윤윤</span>
                            </div>
                            <div class="sel-mem2">
                                <span class="upper-text">No. 8</span>
                                <span class="lower-text">sngf@anver,com</span>
                            </div>
                        </div>    
                    </div>
                    <button class="ad-can">취소</button>
                </div>
                

			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
</body>
</html>