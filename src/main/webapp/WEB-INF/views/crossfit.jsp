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
				<img src="../resources/img/crossfit1.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>박현석</p>
			</div>
		  	<div>
	     		<ul class="text">
		     		<li>로그짐 대치점 팀장</li>
		     		<li>CROSSFIT LV1</li>
		     		<li>CrossFit Kettlebell Trainer</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
     		</div>
	 	</div>
		<hr>
		<div class="container2">
	     	<div class="pic">
				<img src="../resources/img/crossfit2.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>KEVIN</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>CROSSFIT LV1</li>
		     		<li>크로스핏 오짐 대표</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <br><br><br><br>
		 <hr>
		 <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/crossfit3.jpeg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김대희</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>NASM-CES 교정운동전문가</li>
		     		<li>대한 체력코치협회 웨이트 리프팅 LV2</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <hr>
		  <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/crossfit4.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>전일환</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>생활체육지도자 2급</li>
		     		<li>숭실대학교 체육학과 졸업</li>
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