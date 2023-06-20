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
				<img src="../resources/img/pt1.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김종국</p>
			</div>
		  	<div>
	     		<ul class="text">
		     		<li>연예계 최고의 운동 매니아</li>
		     		<li>보디빌딩 경력 18년차</li>
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
	     		</ul>
     		</div>
	 	</div>
		<hr>
		<div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pt2.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김천호</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>생활체육 보디빌딩 2급 지도자</li>
		     		<li>서울시장배 일반부 1위</li>
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
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
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
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
		     		<li>NABBA 코리아 1위</li>
		     		<button class="w-btn w-btn-blue" type="button" id="reserve">상담예약</button>
	     		</ul>
			 </div>
		 </div>
     </main>
     <br><br><br><br>
     
<%@ include file="include/footer.jsp" %>
</body>
</html>