<%@page import="org.springframework.ui.Model"%>
<%@page import="com.lesson.project.dao.LDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/header.css"> 
<title>TEST HEADER</title>
</head>
<body>
	<table border="0" cellspacing="0" cellpadding="" width="100%">
		<tr class="headerline">
			<td class="margin01">&nbsp;</td>
			<td class="headertext"><a href="index">레슨모아</a></td>
			<td class="margin02">&nbsp;</td>
			<%
				String sessionId = (String) session.getAttribute("sessionId");
				if(sessionId == null) {
			%>
			<td class="headertext"><a href="loginChoice">로그인</a></td>
			<%
				} else {
			%>
			<td class="headertext"><a href="logout">로그아웃</a></td>
			<%
				}
			%>
			<td class="margin02">&nbsp;</td>
			<%				
				if(sessionId == null) {
			%>
			<td class="headertext"><a href="joinChoice">회원가입</a></td>
			<%
				} else {		
				
			%>
			<td class="headertext"><a href="modify">회원 정보 수정</a></td>
			<td class="headertext"><a href="emodify">전문가 정보 수정</a></td>
			<%
				}
			%>
			<td class="margin02">&nbsp;</td>
			<td class="headertext"><a href="profile">PROFILE</a></td>
			<td class="margin02">&nbsp;</td>
			<td class="headertext"><a href="question">COMMUNITY</a></td>
			<td class="margin02">&nbsp;</td>
			<td class="headertext"><a href="questionHome">Q&A</a></td>
			<td class="margin02">&nbsp;</td>
		</tr>
		<tr class="marginline">
			<%
				if(sessionId == null) {			
			%>
			<td>&nbsp;</td>
			<%
				} else {
			%>
			<td colspan="15" align="right"><b><c:out value="${sessionId }" /></b>님 로그인 중</td>
			<%
				}
			%>
		</tr>
	</table>
</body>
</html>