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
				<span class="title01">레슨모아 상담 예약 내역</span>
			</td>
		</tr>
		<tr>
			<td>
		</table>
		<br><br>
				<center>
				<table border="0" cellspacing="0" cellpadding="10" width="80%">
					<tr>
						<td class="contentbox">
							<center>
							<c:forEach items="${reservationDtos }" var="reservationDto">
								<table border="1" cellspacing="0" cellpadding="10" style="color:#ffffff;height: 40px;">
								<tr>
									<th>아이디</th>
									<th>이메일</th>
									<th>휴대전화번호</th>
									<th>날짜</th>
									<th>전문가 이름</th>
								</tr>
									<tr>
										<td><input style="color:#ffffff;height: 20px;text-align: center;" class="" type="text" name="mid" value="${reservationDto.mid }" readonly="readonly"></td>									
										<td><input style="color:#ffffff;height: 20px;text-align: center;" class="" type="text" name="rtemail" value="${reservationDto.rtemail }" readonly="readonly"></td>									
										<td><input style="color:#ffffff;height: 20px;text-align: center;" class="" type="text" name="rtmobile" value="${reservationDto.rtmobile }" readonly="readonly"></td>									
										<td><input style="color:#ffffff;height: 20px;text-align: center;" class="" type="text" name="rtdate" id="pickDate" value="${reservationDto.rtdate }" readonly="readonly"></td>
										<td><input style="color:#ffffff;height: 20px;text-align: center;" class="" type="text" name="pname"  value="${reservationDto.pexpertname }" readonly="readonly"></td>
										
									</tr>									
									
								</table>
								</c:forEach>																	
								</table>
								<br>
								<center>
								<table>			
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="이전으로" onclick="history.back()">&nbsp;&nbsp;
											<input class="content_btn01" type="button" value="홈으로" onclick="script:window.location.href='index'"><br>
											<input class="content_btn01" type="button" value="예약취소" onclick="spript:window.location.href='reservationDelete?rtnum=${rtnum}'">&nbsp;&nbsp;
											<input class="content_btn01" type="button" value="예약하러가기" onclick="script:window.location.href='expert'">
										</td>										
									</tr>
									</table>
									</center>
							</center>
						</td>
					</tr>
				</center>
			</td>
		</tr>
	</center>
</body>
</html>