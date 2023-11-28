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
        <section>
            <ul>
                <li class="community-list">커뮤니티</li>
                <li class="list"><button class="list-btn">전체</button></li>
                <li class="list"><button class="list-btn">궁금해요</button></li>
                <li class="list"><button class="list-btn">얼마예요</button></li>
                <li class="list"><button class="list-btn">함께해요</button></li>
                <li class="list"><button class="list-btn">공지사항</button></li>
            </ul>
        </section>
        
    </div>

    <div>
        <span>궁금해요</span>
        <span>품앗이 가이드라인</span><br>
        <button><span>서비스</span></button>
        <button><span>지역</span></button>
      
                
                    <p>궁금해요 수학 과외</p>
                    <div>
                        <h3>품앗이 무료견적에 대해 궁금합니다!</h3>
                        <p style="font-size: 14px;">무료견적이 시간이 지나면 가격혐의로 발송된다던데 시간이 얼마나 지나야 하나요?</p>
                        <p style="font-size: 12px;">전국</p>
                        <span><img src="/src/main/webapp/WEB-INF/image/good-icon.png" alt="좋아요아이콘"></span>
                    </div>
                    
         
    </div>
    
</body>
</html>