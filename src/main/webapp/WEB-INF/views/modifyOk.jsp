<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 회원 정보 수정 완료</title>
</head>
<body>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 회원 정보 수정 완료</span>
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
									<tr>
										<td colspan="2" class="content_text">${MemberDto.mid}님 정보 수정이 완료되었습니다.</td>										
									</tr>
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="mid" value="${MemberDto.mid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input class="inputbox01" type="text" name="mpw" value="${MemberDto.mpw }" readonly="readonly"></td>
									</tr>									
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="mname" value="${MemberDto.mname }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="memail" value="${MemberDto.memail }" readonly="readonly"></td>
									</tr>		
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="mmobile" value="${MemberDto.mmobile }" readonly="readonly"></td>
									</tr>							
									<tr>
										<td class="content_text">가 입 일 : </td>
										<td><input class="inputbox01" type="text" name="mdate" value="${MemberDto.mdate }" readonly="readonly"></td>
									</tr>
									
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn02" type="submit" value="홈으로" onclick="script:window.location.href='index'">
										</td>										
									</tr>
									
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