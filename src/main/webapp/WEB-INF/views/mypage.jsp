<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<title>레슨모아 관리자 페이지</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
		<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 MYPAGE</span>
			</td>
		</tr>
		
		</table>
		<table border="0"  cellspacing="0" cellpadding="0" width="40%">
		<tr>
			
		</table>
		<br><br>
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="정보수정" onclick="script:window.location.href='modify'">&nbsp;&nbsp;
					<input class="content_btn01" type="button" value="예약내역" onclick="script:window.location.href='reservationDetails'">&nbsp;&nbsp;
					<input class="content_btn01" type="button" value="예약하러가기" onclick="script:window.location.href='expert'">&nbsp;&nbsp;
					<input class="content_btn01" type="button" value="홈으로" onclick="script:window.location.href='index'">&nbsp;&nbsp;
				</td>										
			</tr>
	</center>
</body>
</html>