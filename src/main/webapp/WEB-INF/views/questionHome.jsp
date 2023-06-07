<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/loginChoice.css">
<link rel="stylesheet" href="/resources/css/question_list.css">
<title>레슨모아 Q&A</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
		<table border="0" cellspacing="0" cellpadding="20" width="75%">
			<tr>
			<td class="titlebox">
				<span class="title01">레슨모아 Q&A</span>
			</td>
		</tr>
		</table>
		<br>
		<form action="index">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="질문하기" onclick="script:window.location.href='question_wirte'">					
				</td>										
			</tr>
		</form>
		<main>
	      <section id="main">
	        <h2 id="board_title">Q&A</h2>
	        <div id="total_search">
	          <div id="total">▷ 총 ${totalCount }개의 게시물이 있습니다.</div>
	          <form action="search_list">
	          <div id="search">	           
	            <div id="search_select">
	              <select name="searchOption">
	                <option value="title">제목</option>
	                <option value="content">내용</option>
	                <option value="writer">글쓴이</option>
	              </select>
	            </div>
	            <div id="search_input"><input type="text" name="keyword"></div>
	            <div id="search_btn"><input type="image" src="/resources/img/search_button.gif">
	            </div>          
	          </div>
	          </form>
	        </div> <!-- total search 끝 -->
			
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
	            <td class="col1">${dto.bnum }</td>
	            <td class="col2">
	              <a href="board_view?bnum=${dto.bnum }">${dto.btitle }</a>&nbsp;&nbsp;&nbsp;
	              <c:if test="${dto.breplycount != 0}">
	              <span style="color:#999999;font-size: 9px;">[${dto.breplycount }]</span>
	              </c:if>
	              <c:if test="${dto.bfilecount != 0}">
	              <img width="20" src="/resources/img/file.png">
	              </c:if>
	            </td>
	            <td class="col3">${dto.bname }</td>
	            <td class="col4"><c:out value="${fn:substring(dto.bdate,0,10) }"></c:out></td>
	            <td class="col5">${dto.bhit }</td>
	          </tr>
	          </c:forEach>
	        </table> <!-- 게시판 목록 테이블 끝 -->
        </section> <!-- section main 끝 -->
   		</main>
		
		</section>
	</center>
</body>
</html>