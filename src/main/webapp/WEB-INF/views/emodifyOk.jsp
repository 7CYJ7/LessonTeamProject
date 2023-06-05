<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>레슨모아 전문가 정보 수정 완료</title>
</head>
<body>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 전문가 정보 수정 완료</span>
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
										<td colspan="2" class="content_text">${eMemberDto.eid}님 정보 수정이 완료되었습니다.</td>										
									</tr>
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="eid" value="${eMemberDto.eid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호 : </td>
										<td><input class="inputbox01" type="text" name="epw" value="${eMemberDto.epw }" readonly="readonly"></td>
									</tr>									
									<tr>
										<td class="content_text">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="ename" value="${eMemberDto.ename }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="eemail" value="${eMemberDto.eemail }" readonly="readonly"></td>
									</tr>		
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="emobile" value="${eMemberDto.emobile }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 : </td>
										<td><input class="inputbox01" type="text" name="egender" value="${eMemberDto.egender }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야 : </td>
										<td><input class="inputbox01" type="text" name="etype" value="${eMemberDto.etype }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역 : </td>
										<td><input class="inputbox01" type="text" name="earea" value="${eMemberDto.earea }" readonly="readonly"></td>
									</tr>							
									<tr>
										<td class="content_text">가 입 일 : </td>
										<td><input class="inputbox01" type="text" name="edate" value="${eMemberDto.edate }" readonly="readonly"></td>
									</tr>
									
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="정보수정" onclick="script:window.location.href='emodify'">&nbsp;&nbsp;
											<input class="content_btn01" type="button" value="수정취소" onclick="script:window.location.href='index'">
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