<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<title>레슨모아 전문가 회원 가입 성공</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
<%
		int e_checkId = Integer.parseInt(request.getAttribute("e_checkId").toString());
	
		if(e_checkId == 1) {
	%>
		<script type="text/javascript">
			alert("입력하신 아이디는 이미 가입된 아이디 입니다. 다시 입력해 주세요.");
			history.go(-1);
		</script>
	<%
		}
	%>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">** 레슨모아 전문가 가입 성공 **</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">레슨모아 전문가 가입을 환영합니다!</span>
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
										<td class="main_text02">											
											${ememberName }님 회원가입을 축하드립니다!<br>
											가입하신 아이디는 ${ememberId }입니다.<br><br>
											<input class="content_btn01" type="button" value="로그인 바로가기" onclick="script:window.location.href='elogin'">
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