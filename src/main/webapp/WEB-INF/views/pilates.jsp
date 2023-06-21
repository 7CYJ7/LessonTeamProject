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
				<img src="../resources/img/pilates1.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>김세은</p>
			</div>
		  	<div>
	     		<ul class="text">
		     		<li>Mat pilates Teaching Certificate</li>
		     		<li>Refomer Teaching Certificate</li>
		     		<li>전) 다빛 필라테스 강사</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
     		</div>
	 	</div>
	 	<br><br><br><br><br>
		<hr>
		<div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pilates2.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>박수지</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>Muscle Care Pilates 지도자 과정 수료</li>
		     		<li>고릴라짐 필라테스 강사</li>
		     		<li>Knee Anatomy&Injuries 세미나 수료</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <br>
		 <hr>
		 <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pilates3.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>이지혜</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>Manual Therapy Certificate</li>
		     		<li>Knee Anatomy&Injuries 세미나 수료</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
		 <hr>
		  <div class="container2">
	     	<div class="pic">
				<img src="../resources/img/pilates4.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
				<p>정민주</p>
			</div>
		  	<div>
		     	<ul class="text">
		     		<li>운동학교 기능해부학 교육이수</li>
		     		<li>대한기능재활협회 통증재활운동과정</li>
		     		<li>ABC필라테스 강사</li>
		     		<input class="w-btn w-btn-blue" id="reserve" type="button" value="상담예약신청" onclick="script:window.location.href='reservation'">
	     		</ul>
			 </div>
		 </div>
     </main>
     <br><br><br><br>
     
     
<%@ include file="include/footer.jsp" %>
</body>
</html>