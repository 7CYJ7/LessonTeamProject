<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 전문가 가입</title>
</head>
<body>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 전문가 가입</span>
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
										<td><input class="inputbox01" type="text" name="eid"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input  class="inputbox01" type="password" name="epw" placeholder="문자+숫자 포함 8자리 이상"></td>
									</tr>
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="ename"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="eemail"></td>
									</tr>
									<tr>
										<td class="content_text">전화번호 : </td>
										<td><input class="inputbox01" type="text" name="emobile" placeholder="'-'빼고 입력"></td>
									</tr>
										<tr>
										<td class="content_text">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 : </td>
										<td>
											<input class="inputbox01" type="radio" name="egender" id="남">남&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="inputbox01" type="radio" name="egender" id="여">여
										</td>
									</tr>
										<tr>
										<td class="content_text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야 : </td>
										<td>
											<select name='type'>
											  <option value='' selected>-- 선택 --</option>
											  <option value='PT1'>퍼스널트레이닝(PT)</option>
											  <option value='PT2'>크로스핏</option>
											  <option value='PT3'>필라테스</option>
											  <option value='PT4'>요가</option>
											</select>
										</td>										
									</tr>
										<tr>
										<td class="content_text">지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역 : </td>
										<td><input class="inputbox01" type="text" name="earea"></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="이전으로" onclick="script:window.location.href='login'">
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