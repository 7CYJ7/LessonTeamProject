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
				<img src="../resources/img/yoga1.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김세은</p>
			</div>
		  	<div>
	     		<ul class="text">
		     		<li>요가지도자 2급</li>
		     		<li>임산부 요가 자격증 수료</li>
		     		<li>요가정원 요가원 요가 강사</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
     		</div>
	 	</div>
	 	<br><br>
		<hr>
		<div class="container2">
	     	<div class="pic">
				<img src="../resources/img/yoga2.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>박수지</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>PURE YOGA healing yoga, Power yoga 수료</li>
		     		<li>국제 크리스빅 에어로빅 지도자 과정 수료</li>
		     		<li>스포애니피트니스 요가 강사</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <br><br>
		 <hr>
		 <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/yoga3.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>이지혜</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>강동구 문화센터 키즈요가 강의</li>
		     		<li>임산부 요가 자격증 수료</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <hr>
		  <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/yoga4.png">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>정민주</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>요가코리아 국제요가 자격증 취득</li>
		     		<li>요가지도자 2급</li>
		     		<li>망원 휘트니스 요가강사</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
     </main>
     <br><br>
     
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