<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 회원 정보 수정</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 회원 정보 수정</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02"></span>
			</td>
		</tr>
		<tr>
			<td>			
		</table>
		<br><br>
				<center>
				<table border="0" cellspacing="0" cellpadding="10" width="80%">
					<tr>
						<td class="contentbox">
							<center>
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="modifyOk" method="post" name="join_frm">
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="mid" value="${MemberDto.mid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input class="inputbox01" type="password" name="mpw" autofocus="autofocus"></td>
									</tr>
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="mname" value="${MemberDto.mname }" placeholder="${MemberDto.mname }"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="memail" value="${MemberDto.memail }" placeholder="${MemberDto.memail }"></td>
									</tr>
									
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="mmobile" value="${MemberDto.mmobile }" placeholder="${MemberDto.mmobile }"></td>
									</tr>									
									<tr>
										<td class="content_text">가 입 일 : </td>
										<td><input class="inputbox01" type="text" name="mdate" value="${MemberDto.mdate }" readonly="readonly"></td>
									</tr>
								</table>
								<br><br>									
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="이전으로" onclick="history.back()">&nbsp;&nbsp;
											<input class="content_btn01" type="button" value="수정완료" onclick="joinCheck()">
										</td>										
									</tr>
									</form>
							</center>
						</td>
					</tr>
				</center>
			</td>
		</tr>	
	</table>
	</center>
</body>
</html>