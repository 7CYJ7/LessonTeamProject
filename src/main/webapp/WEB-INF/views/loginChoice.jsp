<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/loginChoice.css">
<title>레슨모아 로그인</title>
</head>
<body>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 로그인 선택</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">레슨모아의 오신걸 환영합니다!</span>
			</td>
		</tr>
	</center>
		<table class="content_main" border="0" cellspacing="0" cellpadding="10">
			<form action="elogin">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="전문가 로그인" onclick="script:window.location.href='elogin'">					
				</td>										
			</tr>
			</form>
			<form action="login">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="일반 회원 로그인" onclick="script:window.location.href='login'">					
				</td>										
			</tr>
			</form>
		</table>		
	</center>
</body>
</html>