<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/question_view.css">
<title>레슨모아 Q&A</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<c:if test="${sessionId == null }">
		<script type="text/javascript">
			alert("로그인 후 이용가능 합니다..");
			history.go(-1);
		</script> 
	</c:if>
	<main>
      <section id="main">
        <h2 id="board_title">레슨모아 Q&A</h2>
        <div id="view_title_box">
          <span id="boardTitle">${boardDto.qtitle }</span>
          <span id="info">${boardDto.qid } | ${boardDto.qdate }</span>
        </div>
        <p id="view_content">
          ${boardDto.qcontent }
        </p>
        
        <p id="file_info" style="color:#ffffff;">
        	※ 첨부파일 :
        	<a href="/resources/uploadfiles/${fileDto.qfilename }" download>${fileDto.qfileoriname }</a>
        </p>
        <br>
        <c:if test="${fileDto.qfileextension  == 'jpg' or fileDto.qfileextension  == 'png' or fileDto.qfileextension  == 'gif' or fileDto.qfileextension  == 'bmp'}">
        	<br>
        		<img width="100" src="/resources/uploadfiles/${fileDto.qfilename }">
        	<br>
        </c:if>
        
        <table border="1" cellpadding="0" cellspacing="0" width="750">
        	<c:forEach items="${answerList }" var="answerDto">
        	<tr>
        		<td align="center" style="font-size: 12px;color:red;">${answerDto.aid }</td>
        		<td width="70%" style="font-size: 12px;color:#ffffff;">${answerDto.acontent }<br><br>${answerDto.adate }</td>
        		<td align="center">
        			<input type="button" style="color:#ffffff;" value="삭제" onclick="spript:window.location.href='answerDelete?anum=${answerDto.anum}&aorinum=${boardDto.qnum }'">
        		</td>
        	</tr>
        	</c:forEach>
        </table>
        
                
        <form action="answer_write" method="post">
        <c:if test="${sessionId == 'admin7' || sessionId == 'admin11' }">
        <input type="hidden" name="aorinum" value="${boardDto.qnum }">
        <div id="comment_box"><br>
          <img id="title_comment" src="/resources/img/title_comment.gif">&nbsp;
          <textarea name="acontent"></textarea>
          <input type="image" src="/resources/img/ok_answer.gif" id="ok_answer">          
        </div>
        </form>
        </c:if> 
        <c:if test="${sessionId != null }">   
        <div id="buttons">
          <a href="question_delete?qnum=${boardDto.qnum }"><img src="/resources/img/delete.png"></a>
          <a href="questionHome"><img src="/resources/img/list.png"></a>
          <a href="question_write"><img src="/resources/img/write.png"></a>
        </div>
        </c:if>
      </section> <!-- section main 끝 -->
    </main>
    </center>
</body>
</html>