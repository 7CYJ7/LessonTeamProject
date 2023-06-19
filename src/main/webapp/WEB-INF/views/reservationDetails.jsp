<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/title.css">
<script type="text/javascript" src="/resources/js/reservationWriteCheck.js"></script>
<title>레슨모아 예약 내역 페이지</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 상담 예약 내역 페이지</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table border="0" cellspacing="0" cellpadding="10" width="80%">
					<tr>
						<td class="contentbox">
							<center>
							<c:forEach items="${reservationDtos }" var="reservationDtos">
								<table border="0" cellspacing="0" cellpadding="10">
									<tr>
										<td class="content_text">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="mid" value="${reservationDtos.mid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class="content_text">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="rtemail" value="${reservationDtos.rtemail }" readonly="readonly"></td>										
									</tr>
									
									<tr>
										<td class="content_text">휴대전화번호 : </td>
										<td><input class="inputbox01" type="text" name="rtmobile" value="${reservationDtos.rtmobile }" readonly="readonly"></td>										
									</tr>
									
									<tr>
										<td class="content_text">날&nbsp;&nbsp;&nbsp;&nbsp;짜 : </td>
										<td><input class="inputbox01" type="text" name="rtdate" id="pickDate" value="${reservationDtos.rtdate }" readonly="readonly"></td>
									</tr>									
									
								</table>
								</c:forEach>
								<table>
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="예약취소" onclick="spript:window.location.href='reservationDelete?rtnum=${rtnum}'">
											<input class="content_btn01" type="button" value="홈으로" onclick="script:window.location.href='index'">&nbsp;&nbsp;
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