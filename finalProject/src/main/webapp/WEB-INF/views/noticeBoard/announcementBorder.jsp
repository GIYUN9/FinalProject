<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<title>커뮤니티 게시판 공지사항</title>

<style>
    .container{
        background-color: white;
        width: 40%;
        max-height: 20%;
        padding: 21px;
        margin-top: -495px;
        margin-right: 32%;
        border-radius: 15px;
        margin-bottom: 20px;
    }

    .community-ul{
        width: 190px;
        height: 500px;
        margin: 190px 5px 0px 253px;
        color: white;
    }

    .community-list {
        list-style: none;
        font-size: 27px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
    }

    .list{
        list-style: none;
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        font-size: 17px;
        color: white;
        margin: 15px;
    }

    .list-btn:hover {
        color: black
    }

    .date{
        float: right;
    }

    .card-link{
        color: black;
        font-weight: bold;
    }

    .card-list{
        list-style: none;
        margin-bottom: 15px;
    }

    #accordion{
        margin-left: -30px;
    }

    .container-h2{
        margin: 0px 8px 20px;
        font-size: 30px;
        color: black;
    }

    .arrow-img{
        width: 20px;
        height: 20px;
        float: right;
        margin-top: 10px;
    }

    .poom-span{
        margin-left: 20px;
    }
    
    .container-com{
        margin-bottom: 20px;
    }

    .card{
      margin-left: 26px;
    }
</style>

</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <ul class="community-ul">
        <li class="community-list">커뮤니티</li>
        <li class="list"><button class="list-btn">전체</button></li>
        <li class="list"><button class="list-btn">궁금해요</button></li>
        <li class="list"><button class="list-btn">얼마예요</button></li>
        <li class="list"><button class="list-btn">함께해요</button></li>
        <li class="list"><button class="list-btn">공지사항</button></li>
    </ul>

    <div class="container">
        <a href="">
            <div class="container-com">
                <span class="container-h2">공지사항</span>
                <img src="/finalProject/resources/borderImage/right-arrow-icon.png" alt="오른쪽 화살표" class="arrow-img">
            	     <button onclick="insertBoard()">글쓰기 버튼@@@@</button>
            </div>
        </a>
        
        <div id="accordion">
            <ul>
                <li class="card-list">
                    <div class="card">
                        <div class="card-header">
                          <a class="card-link" data-toggle="collapse" href="#collapseOne">
                      
                            <span>필독</span>
                           
                            <span class="poom-span">품앗이에 대하여</span>
                            <span class="date">2022-10-24</span>
                          </a>
                        </div>
                        <div id="collapseOne" class="collapse show" data-parent="#accordion">
                          <div class="card-body">
                            품앗이 사이트는 전문가 및 준전문가와 수요자의 매칭을 해주는 사이트입니다.
                          </div>
                        </div>
                      </div>
                </li>
            
                <li class="card-list">
                    <div class="card">
                        <div class="card-header">
                          <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
                            <span>필독</span>
                            <span class="poom-span">품앗이 채용 사칭 스미싱 문자 주의</span>
                            <span class="date">2021-12-24</span>
                        </a>
                        </div>
                        <div id="collapseTwo" class="collapse" data-parent="#accordion">
                          <div class="card-body">
                            다른 번호 외에 전화를 걸지 말아 주시고,<br>
                            소비자 보호를 위해 스미싱 사이트에 접속하지 말아주시길 당부 드립니다.
                          </div>
                        </div>
                      </div>
                </li>

                <li class="card-list">
                    <div class="card">
                        <div class="card-header">
                          <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
                            <span>공지</span>
                            <span class="poom-span">품앗이 서비스 점검안내</span>
                            <span class="date">2023-12-14</span>
                          </a>
                        </div>
                        <div id="collapseThree" class="collapse" data-parent="#accordion">
                          <div class="card-body">
                            사이트 및 서버 점검이 진행 될 예정입니다.<br>
                            점검시간 동안 품앗이 사이트 서비스 이용이 불가능하오니 양해 부탁드립니다.
                          </div>
                        </div>
                      </div>
                </li>

                <li class="card-list">
                    <div class="card">
                        <div class="card-header">
                          <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
                            <span>공지</span>
                            <span class="poom-span">품앗이 사기 당했을 경우</span>
                            <span class="date">2023-12-01</span>
                          </a>
                        </div>
                        <div id="collapseFour" class="collapse" data-parent="#accordion">
                          <div class="card-body">
                            사기 당했을 경우 신고바랍니다.
                          </div>
                        </div>
                      </div>
            
                </li>

                <li class="card-list"> 
                    <div class="card">
                        <div class="card-header">
                          <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
                            <span>공지</span>
                            <span class="poom-span">품앗이 현피뜰 경우</span>
                            <span class="date">2023-11-24</span>
                          </a>
                        </div>
                        <div id="collapseFive" class="collapse" data-parent="#accordion">
                          <div class="card-body">
                            2023-11-24 공지사항<br>
                            금일은 서비스 점검으로 인해 오후에 사용이 어려울 수 있습니다.<br>
                            고객놈들께서는 참고하시고 이용을 하든지 말든지 진짜 귀찮게 굴지 마시고<br>
                            알아서 하시길...
                          </div>
                        </div>
                      </div>
                </li>

                <li class="card-list">
                    <div class="card">
                        <div class="card-header">
                          <a class="collapsed card-link" data-toggle="collapse" href="#collapseSix">
                            <span>공지</span>
                            <span class="poom-span">품앗이생활은 감옥생활</span>
                            <span class="date">2023-10-06</span>
                          </a>
                        </div>
                        <div id="collapseSix" class="collapse" data-parent="#accordion">
                          <div class="card-body">
                            품앗이 생활 한번 시작하면은 못빠져나간다
                          </div>
                        </div>
                      </div>
                </li>

            </ul>

          </div>
      </div>

      <jsp:include page="../common/footer.jsp"></jsp:include>
      
</body>
<script>

	function insertBoard(){
		location.href = "insert.bo"
	}
</script>
</html>