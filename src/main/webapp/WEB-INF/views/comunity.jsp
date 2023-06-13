<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/comunity.css">
<link rel="stylesheet" type="text/css" href="/resources/css/board_list_main.css">
<title>커뮤니티 게시판</title>
</head>
<body>
  
	<div id="container">
      <header>
        <div id="logo">
          <a>
            <h1><a href="index">레슨모아</h1>
          </a>
        </div>
        <nav>
          <ul id="topMenu">
            <li><a href="expert">전문가</a></li>
            <li><a href="comunity">커뮤니티</a></li>
            <li><a href="qanda">Q&A</a></li>
            <li><a href="login">로그인</a></li>
            <li><a href="join">회원가입</a></li>
          </ul>
        </nav>
      </header>
     
     
     <main>
     <section id="main">
       <table>
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>글쓴이</th>
            <th>일시</th>
            <th>조회수</th>
          </tr>
          <c:forEach items="${list }" var="dto">
          <tr>
            <td class="col1">${dto.lnum }</td>
            <td class="col2">
              <a href="comunity_view?lnum=${dto.lnum }">${dto.ltitle }</a>&nbsp;&nbsp;&nbsp;
              <c:if test="${dto.lreplycount != 0}">
              <span style="color:#999999;font-size: 9px;">[${dto.lreplycount }]</span>
              </c:if>
              
            </td>
            <td class="col3">${dto.lname }</td>
            <td class="col4"><c:out value="${fn:substring(dto.ldate,0,10) }"></c:out></td>
            <td class="col5">${dto.lhit }</td>
          </tr>
          </c:forEach>
        </table> <!-- 게시판 목록 테이블 끝 -->
        <div id="buttons">
          <div class="col1">◀ 이전 1 다음 ▶</div>
          <div class="col2">
            <a href="comunity"><img src="/resources/img/list.png"></a>
            <a href="board_write"><img src="/resources/img/write.png"></a>
          </div>
        </div>
     </section>
     </main>
 
    
     <footer>
        <section id="bottomMenu">
          <ul>
            <li><a href="#">회사 소개</a></li>
            <li><a href="#">개인정보 처리방침</a></li>
            <li><a href="#">여행 약관</a></li>
            <li><a href="#">사이트맵</a></li>
          </ul>
        </section>
      </footer>
     </div>
</body>
</html>