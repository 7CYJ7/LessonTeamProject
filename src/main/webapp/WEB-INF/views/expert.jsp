<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/expert.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<title>레슨모아 홈페이지</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
     
     <div class="ex">
	     <div>
        	<p>여러 분야의 전문가들에게 상담받고<br>
        	여러분들이 원하는 운동을 시작해보세요!</p>
         </div>
	     <table border="1" width="75%" height="300" bgcolor=#11a9c1 bordercolor="white" cellspacing="5" align="center"
	     style="margin-left:auto;margin-right:auto;">
	     	<tr align="center" bgcolor="white" class="ex2">
	     		<th><a href="pt">퍼스널 트레이닝(PT)</th>
	     		<th><a href="pilates">필라테스</th>
	     		<th><a href="crossfit">크로스핏</th>
	     		<th><a href="yoga">요가</th>
	     	</tr>
	     	<tr align="center" bgcolor="white">
	     		<td>김종국</td>
	     		<td>김세은</td>
	     		<td>박현석</td>
	     		<td>이가영</td>
	     	</tr>
	     	<tr align="center" bgcolor="white">
	     		<td>김천호</td>
	     		<td>박수지</td>
	     		<td>KEVIN</td>
	     		<td>최나은</td>
	     	</tr>
	     	<tr align="center" bgcolor="white">
	     		<td>박민수</td>
	     		<td>이지혜</td>
	     		<td>김대희</td>
	     		<td>윤아영</td>
	     	</tr>
	     	<tr align="center" bgcolor="white">
	     		<td>김준호</td>
	     		<td>정민주</td>
	     		<td>전일환</td>
	     		<td>김선혜</td>
	     	</tr>
	     </table>
     </div>
     

<%@ include file="include/footer.jsp" %>
</body>
</html>