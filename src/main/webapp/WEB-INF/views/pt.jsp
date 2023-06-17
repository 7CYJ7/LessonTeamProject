<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/list.css">
<link rel="stylesheet" href="/resources/css/include.css">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
      <header>
        <div id="logo">
          <a>
            <h1><a href="index">레슨모아</h1>
          </a>
        </div>
        <nav>
          <ul id="topMenu">
            <li><a href="expert">전문가</a></li>
            <li><a href="comunity">커뮤니티</a></li>
            <li><a href="qanda">Q&A</a></li>
            <li><a href="login">로그인</a></li>
            <li><a href="join">회원가입</a></li>
          </ul>
        </nav>
      </header>
     <main>
     	<div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pt1.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김종국</p>
			</div>
		  	<div>
	     		<ul class="text">
		     		<li>연예계 최고의 운동 매니아</li>
		     		<li>보디빌딩 경력 18년차</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
     		</div>
	 	</div>
		<hr>
		<div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pt2.jpeg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김천호</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>생활체육 보디빌딩 2급 지도자</li>
		     		<li>서울시장배 일반부 1위</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <hr>
		 <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pt3.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>박민수</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>17' 부산시장배 보디빌딩 -70kg 3위</li>
		     		<li>스포랙스 퍼스널 트레이너</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <hr>
		  <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pt4.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김준호</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>대한 선수트레이닝 자격증</li>
		     		<li>미스터 유니버스 -75kg급 2위</li>
		     		<li>NABBA 코리아 1위...</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
     </main>
     <br><br><br><br>
     
     <footer>
        <section id="bottomMenu">
          <ul>
            <li><a href="#">회사 소개</a></li>
            <li><a href="#">개인정보 처리방침</a></li>
            <li><a href="#">여행 약관</a></li>
            <li><a href="#">사이트맵</a></li>
          </ul>
        </section>
      </footer>
    </div>
</body>
</html>