<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/include.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
      
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
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
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
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
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
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
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
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
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
      
<%@ include file="include/footer.jsp" %>
</body>
</html>