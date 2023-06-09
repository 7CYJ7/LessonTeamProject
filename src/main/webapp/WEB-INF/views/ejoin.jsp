<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 전문가 가입</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
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
								<form action="ejoinOk" method="post" name="e_join_frm">
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="eid" autofocus="autofocus" placeholder="아이디를 입력해 주세요."></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input  class="inputbox01" type="password" name="epw" placeholder="비밀번호 4~12자리 입력해 주세요."></td>
									</tr>
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="ename" placeholder="이름을 입력해 주세요."></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="eemail" placeholder="(ex:abc@abc.com)"></td>
									</tr>
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="emobile" placeholder="(ex:01012345678)"></td>
									</tr>
										<tr>
										<td class="content_text">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 : </td>
										<td style="font-family: Arial;font-size: 15px;color: #808080;">
											<input class="inputbox02" type="radio" name="egender" id="egender" value="남" checked="checked">남
											<input class="inputbox02" type="radio" name="egender" id="egender" value="여">여
										</td>
									</tr>
										<tr>
										<td class="content_text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야 : </td>
										<td>
											<select name='etype' id="etype"  style="width:250px;height:30px;border: 1px solid #c0c0c0;background-color: #ffffff;font-family: Arial;font-size: 20px;color: #808080;">
											  <option value='선택' selected>-- 선택 --</option>
											  <option value='퍼스널트레이닝(PT)' name="퍼스널트레이닝(PT)" id="퍼스널트레이닝(PT)">퍼스널트레이닝(PT)</option>
											  <option value='크로스핏' name="크로스핏" id="크로스핏">크로스핏</option>
											  <option value='필라테스' name="필라테스" id="필라테스">필라테스</option>
											  <option value='요가' name="요가" id="요가">요가</option>
											</select>
										</td>										
									</tr>
									<tr>
										<td class="content_text">지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역 : </td>
										<td><input class="inputbox01" type="text" name="earea" placeholder="주소(지역 구까지 입력해 주세요.)"></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="이전으로" onclick="script:window.location.href='joinChoice'">&nbsp;&nbsp;
											<input class="content_btn01" type="button" value="가입하기" onclick="e_joinCheck()">
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