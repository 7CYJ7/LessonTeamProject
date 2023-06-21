<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/comunity.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<title>커뮤니티 게시판</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
        
     <main>
     <section id="main">
     <h2 id="board_title">자유게시판</h2>
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
          <div class="col1">
          <table>
          	<tr>
				<td colspan="5" align="center">
					<c:if test="${pageMaker.prev}">
						<a href="comunity?pageNum=${pageMaker.startPage-5 }">◀</a>&nbsp;&nbsp;&nbsp;
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
						<c:choose>
							<c:when test="${currPage == num }">
								<span style="color:black;font-weight: bold;">${num}</span>&nbsp;&nbsp;&nbsp;
							</c:when>
							<c:otherwise>													
								<a href="comunity?pageNum=${num }">${num }</a>&nbsp;&nbsp;&nbsp;
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<a href="comunity?pageNum=${pageMaker.startPage+5 }">▶</a>
					</c:if>
				</td>
			</tr>
			</table>
          
          </div>
          <div class="col2">
            <a href="comunity"><img src="/resources/img/list.png"></a>
            <a href="board_write"><img src="/resources/img/write.png"></a>
          </div>
        </div>
     </section>
     </main>
 
    
<%@ include file="include/footer.jsp" %>
</body>
</html>