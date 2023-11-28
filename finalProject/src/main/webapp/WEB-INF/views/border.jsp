<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판 전체</title>

<style>
    .list{
        list-style: none;
        
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        margin-bottom: 10px;
        font-size: 13px;
        /* color: white; */
    }

    .community-list {
        list-style: none;
        font-size: 20px;
        font-weight: bold;
        text-decoration: underline;
        margin-bottom: 10px;
        /* color: white; */
    }
</style>

</head>
<body>
    <div>
        <ul>
            <li class="community-list">커뮤니티</li>
            <li class="list"><button class="list-btn">전체</button></li>
            <li class="list"><button class="list-btn">궁금해요</button></li>
            <li class="list"><button class="list-btn">얼마예요</button></li>
            <li class="list"><button class="list-btn">함께해요</button></li>
            <li class="list"><button class="list-btn">공지사항</button></li>
        </ul>
    </div>

    <div>
        <span>궁금해요</span>
    </div>
    
</body>
</html>