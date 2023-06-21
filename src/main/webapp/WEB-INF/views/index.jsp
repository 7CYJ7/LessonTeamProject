<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<title>레슨모아 홈페이지</title>
</head>
<body>
<%@ include file="include/header.jsp" %>

      
      <main class="contens">
        <section id="aaa">
	        <div>
	        	<p>다양한 운동 전문가들이 있는<br>
	        	종합 커뮤니티 사이트입니다</p>
	        </div>
          <div class="detail">
            <img src="resources/img/center.jpeg">
          </div>
        </section><br><br>
        <section id="bbb">
          <h2></h2>
          <div class="detail2">
            <img src="resources/img/health.jpg">
            <img src="resources/img/pilates.png">
            <img src="resources/img/crossfit.jpg">
            <img src="resources/img/yoga.jpg">
          </div>
        </section>
      </main>
      
<%@ include file="include/footer.jsp" %>
</html>