<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/loginChoice.css">
<title>레슨모아 회원 가입</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 회원 가입</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">레슨모아의 오신걸 환영합니다!</span>
			</td>
		</tr>
	</center>
		<table class="content_main" border="0" cellspacing="0" cellpadding="10">
			<!-- <form action="ejoin">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="전문가 회원 가입" onclick="script:window.location.href='ejoin'">					
				</td>										
			</tr>
			</form> -->
			<form action="join">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="회원 가입" onclick="script:window.location.href='join'">					
				</td>										
			</tr>
			</form>
			<form action="index">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="홈으로" onclick="script:window.location.href='index'">					
				</td>										
			</tr>
			</form>
		</table>		
	</center>
</body>
</html>