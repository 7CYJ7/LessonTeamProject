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
				<span class="title01">레슨모아 관리자 페이지</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">예약내역</span>
			</td>
		</tr>
		<table border="1"  cellspacing="0" cellpadding="20" width="60%">
			<form action="">
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
					<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</form>
		</table>
		</table>
		<br><br>
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="submit" value="수정완료" onclick="joinCheck()">&nbsp;&nbsp;
					<input class="content_btn01" type="button" value="수정취소" onclick="script:window.location.href='index'">
				</td>										
			</tr>
	</center>
</body>
</html>