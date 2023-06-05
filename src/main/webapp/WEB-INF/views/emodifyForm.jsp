<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 전문가 정보 수정</title>
</head>
<body>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 전문가 정보 수정</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">마이페이지</span>
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
									<form action="emodifyOk" method="post" name="e_join_frm">
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="eid" value="${EMemberDto.eid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input class="inputbox01" type="password" name="epw" autofocus="autofocus"></td>
									</tr>
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="ename" value="${EMemberDto.ename }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="eemail" value="${EMemberDto.eemail }" readonly="readonly"></td>
									</tr>
									
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="emobile" value="${EMemberDto.emobile }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 : </td>
										<td>
											<input class="inputbox02" type="radio" name="egender" id="남"><span style="font-family: Arial;font-size: 15px;color: #808080;">남</span>
											<input class="inputbox02" type="radio" name="egender" id="여"><span style="font-family: Arial;font-size: 15px;color: #808080;">여</span>											
										</td>
									</tr>
									<tr>
										<td class="content_text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야 : </td>
										<td>
											<select name='etype' id="etype"  style="width:250px;height:30px;border: 1px solid #c0c0c0;background-color: #ffffff;font-family: Arial;font-size: 20px;color: #808080;">
											  <option value='선택' selected>--- 선택 ---</option>
											  <option value='퍼스널트레이닝(PT)' name="퍼스널트레이닝(PT)" id="퍼스널트레이닝(PT)">퍼스널트레이닝(PT)</option>
											  <option value='크로스핏' name="크로스핏" id="크로스핏">크로스핏</option>
											  <option value='필라테스' name="필라테스" id="필라테스">필라테스</option>
											  <option value='요가' name="요가" id="요가">요가</option>
											</select>
										</td>
									</tr>	
									<tr>
										<td class="content_text">지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역 : </td>
										<td><input class="inputbox01" type="text" name="earea" value="${EMemberDto.earea }" readonly="readonly"></td>
									</tr>								
									<tr>
										<td class="content_text">가 입 일 : </td>
										<td><input class="inputbox01" type="text" name="edate" value="${EMemberDto.edate }" readonly="readonly"></td>
									</tr>
									
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="수정완료" onclick="e_joinCheck()">&nbsp;&nbsp;
											<input class="content_btn01" type="button" value="수정취소" onclick="script:window.location.href='index'">
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