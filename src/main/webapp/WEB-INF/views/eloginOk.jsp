<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<title>전문가 로그인 성공</title>
</head>
<body>
	<%
		int e_checkIdPwFlag = Integer.parseInt(request.getAttribute("e_checkIdPwFlag").toString());
		
		if(e_checkIdPwFlag == 0) {
	%>
		<script type="text/javascript">
			alert("입력하신 아이디 또는 비밀번호가 일치하지 않습니다. 다시 입력해 주세요.");
			history.go(-1);
		</script>
	<%			
		}	
	%>

	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 전문가 로그인 성공</span>
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
									<tr>
										<td class="main_text">		
											${EMemberDto.ename } 님 로그인 하셨습니다. 반갑습니다!<br>
											${EMemberDto.eid } 님의 가입일은 ${EMemberDto.edate } 입니다.<br><br>											
										</td>										
									</tr>
								</table>
								<table>
									<tr>										
										<input class="content_btn02" type="button" value="홈으로" onclick="script:window.location.href='index'">
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