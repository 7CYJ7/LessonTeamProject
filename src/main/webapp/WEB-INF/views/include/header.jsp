<%@page import="com.lesson.project.dto.MemberDto"%>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<title>HEADER</title>
</head>
<body>
	<table border="0" cellspacing="0" cellpadding="" width="100%">
		<tr class="headerline">
		<td id="logo">
          <a>
            <h1><a href="index">LESSONMORE</h1>
          </a>
        </td>		
			<td class="margin01">&nbsp;</td>
			<td class="headertext"><a href="index">HOME</a></td>
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
			<td class="margin02">&nbsp;</td>
			<%
				}
			%>
			<td class="margin02">&nbsp;</td>
			<%				
				if(sessionId == null) {
			%>
			<td class="headertext"><a href="join">회원가입</a></td>
			<%
				} else if(sessionId.equals("admin7") || sessionId.equals("admin11")) {		
				
			%>
			<td class="headertext"><a href="admin_index">관리자페이지</a></td>			
			<%
				} else {
			%>
            
            <!-- <td class="headertext"><a href="emodify">전문가 정보 변경</a></td> -->
            
			<td class="headertext"><a href="mypage">MYPAGE</a></td>
			<td class="margin02">&nbsp;</td>			
			<%
				}
			%>
			<td class="headertext"><a href="expert">전문가찾기</a></td>
			<td class="margin02">&nbsp;</td>
			<td class="headertext"><a href="comunity">COMMUNITY</a></td>
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
			<td class="loginTitle" colspan="15" align="right"><b><c:out value="${sessionId }" /></b>님 로그인 중...</td>
			<%
				}
			%>		
			
		</tr>
	</table>
</body>
</html>