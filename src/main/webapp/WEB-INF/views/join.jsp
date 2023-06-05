<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 회원 가입</title>
</head>
<body>
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
		<tr>
			<td>
				<center>
				<table border="0" cellspacing="0" cellpadding="10" width="80%">
					<tr>
						<td class="contentbox">
							<center>
								<table border="0" cellspacing="0" cellpadding="10">
								<form action="joinOk" method="post" name="join_frm">
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="mid" autofocus="autofocus"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input  class="inputbox01" type="password" name="mpw" placeholder="문자 + 숫자 포함 8자리 이상"></td>
									</tr>
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="mname"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="memail"></td>
									</tr>
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="mmobile" placeholder="'-' 빼고 입력"></td>
									</tr>
									<br>
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="이전으로" onclick="script:window.location.href='joinChoice'">											
											<input class="content_btn01" type="submit" value="가입하기" onclick="joinCheck()">&nbsp;&nbsp;
										</td>
									</tr>
								</form>
								</table>
							</center>
						</td>
					</tr>					
				</table>
				</center>
			</td>
		</tr>	
	</table>
	</center>
</body>
</html>