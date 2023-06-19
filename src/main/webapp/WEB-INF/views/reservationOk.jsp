<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/title.css">
<script type="text/javascript" src="/resources/js/reservationWriteCheck.js"></script>
<title>레슨모아 예약 완료</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 상담 예약 완료</span>
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
										<td class="main_text" style="text-align: center;">
											${mid }님 예약이 완료되었습니다.<br>
											상담 예약일은 ${rtdate } 입니다.<br><br>									
										</td>										
									</tr>																		
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="submit" value="다른전문가찾기" onclick="script:window.location.href='test_index'">
											<input class="content_btn01" type="submit" value="예약내역확인" onclick="script:window.location.href='reservationDetails'">&nbsp;&nbsp;
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