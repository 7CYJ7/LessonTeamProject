<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/comunity.css">
<link rel="stylesheet" type="text/css" href="/resources/css/board_write_main.css">
<title>레슨모아 홈페이지</title>
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
     </div>
     
     <main>
      <section id="main">
        <h2 id="board_title">자유게시판</h2>
        <div id="write_title"><h2>글쓰기</h2></div>
        <form action="board_writeOk" method="post" enctype="multipart/form-data">
        <table>
          <tr id="name">
            <td class="col1">이름</td>
            <td class="col2"><input type="text" name="bname"></td>
          </tr>
          <tr id="subject">
            <td class="col1">제목</td>
            <td class="col2"><input type="text" name="btitle"></td>
          </tr>
          <tr id="content">
            <td class="col1">내용</td>
            <td class="col2"><textarea name="bcontent"></textarea></td>
          </tr>
        </table>
        <div id="buttons">
          <input type="image" src="/resources/img/ok.png">
          <a href="comunity"><img src="/resources/img/list.png"></a>
        </div>
        </form>
      </section> <!-- section main 끝 -->
    </main>
</body>
</html>