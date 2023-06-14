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
		<c:if test="${sessionId != null }">
		<form action="question_write">
			<tr>
				<td colspan="2" align="center">
					<input class="content_btn01" type="button" value="질문하기" onclick="script:window.location.href='question_write'">					
				</td>										
			</tr>
		</form>
		</c:if>
		<c:if test="${sessionId == null }">
			<input class="content_btn01" type="button" value="로그인 하러가기" onclick="script:window.location.href='loginChoice'">
		</c:if>
		<main>
	      <section id="main">
	        <h2 id="board_title">Q&A</h2>
	        <div id="total_search">
	          <div id="total">▷ 총 ${totalCount }개의 질문이 있습니다.</div>
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
	            <th>등록일</th>	            
	          </tr>
	          <c:forEach items="${list }" var="dto">
	          <tr>
	            <td class="col1">${dto.qnum }</td>
	            <td class="col2">
	              <a href="question_view?qnum=${dto.qnum }">${dto.qtitle }</a>&nbsp;&nbsp;&nbsp;
	              <c:if test="${dto.qanswercount != 0}">
	              <span style="color:#999999;font-size: 9px;">[${dto.qanswercount }]</span>
	              </c:if>
	              <c:if test="${dto.qfilecount != 0}">
	              <img width="20" src="/resources/img/file.png">
	              </c:if>
	            </td>
	            <td class="col3">${dto.qid }</td>
	            <td class="col4"><c:out value="${fn:substring(dto.qdate,0,10) }"></c:out></td>
	          </tr>          
	          </c:forEach>
	        </table> <!-- 게시판 목록 테이블 끝 -->
			<tr>
				<td colspan="5" align="center">
					<c:if test="${pageMaker.prev}">
						<a href="questionHome?pageNum=${pageMaker.startPage-5 }">◀</a>&nbsp;&nbsp;&nbsp;
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
						<c:choose>
							<c:when test="${currPage == num }">
								<span style="color:#FFFFFF;background-color: blue;;font-weight: bold;">${num}</span>&nbsp;&nbsp;&nbsp;
							</c:when>
							<c:otherwise>													
								<a href="questionHome?pageNum=${num }">${num }</a>&nbsp;&nbsp;&nbsp;
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<a href="questionHome?pageNum=${pageMaker.startPage+5 }">▶</a>
					</c:if>
				</td>
			</tr>
        </section> <!-- section main 끝 -->
   		</main>
	</center>
</body>
</html>