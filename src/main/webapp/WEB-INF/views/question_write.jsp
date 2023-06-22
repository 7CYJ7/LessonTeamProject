<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/question_write.css">
<title>레슨모아 Q&A</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<main>
      <section id="main">
        <h2 id="board_title">레슨모아 Q&A</h2>
        <div id="write_title"><h2>질문하기</h2></div>
        <form action="question_writeOk" method="post" enctype="multipart/form-data">
        <table>
          <tr id="name">
            <td class="col1">아이디</td>
            <td class="col2">
            <c:choose>
            	<c:when test="${not empty MemberDto.mid }">
            		<input type="text" name="qid" value="${MemberDto.mid}" readonly="readonly">
            	</c:when>
            	<c:when test="${not empty EMemberDto.eid}">
            		<input type="text" name="qid" value="${EMemberDto.eid}" readonly="readonly">
            	</c:when>
            	<c:otherwise>
            		<input type="text" name="qid" value="" readonly="readonly">
            	</c:otherwise>
            </c:choose>            
          </tr>
          <tr id="subject">
            <td class="col1">제목</td>
            <td class="col2"><input type="text" name="qtitle" autofocus="autofocus"></td>
          </tr>
          <tr id="content">
            <td class="col1">내용</td>
            <td class="col2"><textarea name="qcontent"></textarea></td>
          </tr>
          <tr id="upload">
            <td class="col1">업로드 파일</td>
            <td class="col2"><input type="file" name="files"></td>
          </tr>
        </table>
        <div id="buttons">
          <input type="image" src="/resources/img/ok.png">
          <a href="questionHome"><img src="/resources/img/list.png"></a>
        </div>
        </form>
      </section> <!-- section main 끝 -->
    </main>
    </center>
</body>
</html>