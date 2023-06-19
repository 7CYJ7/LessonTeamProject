<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" type="text/css" href="/resources/css/comunity_view.css">
<title>커뮤니티 게시판</title>
</head>
<body>

     <header>
       <div id="logo">
         <a>
           <h1><a href="index">LESSONMORE</h1>
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
     <hr>
     
     
     <main>
      <section id="main">
        <h2 id="board_title">자유게시판</h2>
        <div id="view_title_box">
          <span id="boardTitle">${boardDto.ltitle }</span>
          <span id="info">${boardDto.lname } &nbsp;|&nbsp;  조회수 : ${boardDto.lhit } &nbsp;|&nbsp; ${boardDto.ldate }</span>
        </div>
        <p id="view_content">
          ${boardDto.lcontent }
        </p>
        
        <table border="1" cellpadding="0" cellspacing="0" width="750">
        	<c:forEach items="${replyList }" var="replyDto">
        	<tr>
        		<td align="center">${replyDto.lrid }</td>
        		<td width="70%">${replyDto.lrcontent }<br><br>${replyDto.lrdate }</td>
        		<td align="center" id="button">
        			<input type="button" value="삭제" onclick="spript:window.location.href='replyDelete?lrnum=${replyDto.lrnum}&lrorinum=${boardDto.lnum }'">
        		</td>
        	</tr>
        	</c:forEach>
        </table>
        
        
        <form action="reply_write" method="post">
        <input type="hidden" name="lrorinum" value="${boardDto.lnum }">
        <div id="comment_box">
          <img id="title_comment" src="/resources/img/title_comment.gif">
          <textarea name="lrcontent"></textarea>
          <input type="image" src="/resources/img/ok_ripple.gif" id="ok_ripple">          
        </div>
        </form>
        <div id="buttons">
          <a href="board_delete?lnum=${boardDto.lnum }"><img src="/resources/img/delete.png"></a>
          <a href="comunity"><img src="/resources/img/list.png"></a>
          <a href="board_write"><img src="/resources/img/write.png"></a>
        </div>
      </section> <!-- section main 끝 -->
    </main>
    
    <footer>
        <section id="bottomMenu">
          <ul>
            <li><a href="#">회사 소개</a></li>
            <li><a href="#">개인정보 처리방침</a></li>
            <li><a href="#">이용 약관</a></li>
            <li><a href="#">사이트맵</a></li>
          </ul>
        </section>
      </footer>
     
</body>
</html>