<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<title>레슨모아 관리자 로그인 성공</title>
</head>
<body>
	<%
		int admin_checkIdPwFlag = Integer.parseInt(request.getAttribute("admin_checkIdPwFlag").toString());
		
		if(admin_checkIdPwFlag == 0) {
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
				<span class="title01">** 레슨모아 관리자 로그인 성공 **</span>
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
											${AdminDto.admin_id } 님 관리자 로그인 하셨습니다.<br>									
										</td>										
									</tr>
									</table>
									<table>
									<tr>										
										<input class="content_btn02" type="button" value="홈으로" onclick="script:window.location.href='index'">
										<input class="content_btn02" type="button" value="관리자 화면" onclick="script:window.location.href='admin_index'">
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