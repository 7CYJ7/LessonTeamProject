<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/include.css">
<link rel="stylesheet" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/calendar.js"></script>
<title>전문가</title>
</head>
<body>
	<div id="container">
      <header>
        <div id="logo">
          <a>
            <h1>레슨모아</h1>
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
      <div class=pic>
		<img src="../resources/img/kim.jpg">   <!-- 상위폴더로 갔다가 다른곳에 있는것을 연결할때는 ../ 사용 -->
		</div>
	  <div>
     	<ul class="content">
     		<li>연예계 최고의 운동 매니아</li>
     		<li>보디빌딩 경력 18년차</li>
     		<hr>
     		<button class="w-btn w-btn-blue" type="button" id="reserve">예약하기</button>
     		<div id="calendarContainer" class="hidden">
     			<table class="Calendar">
		            <thead>
		                <tr>
		                    <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
		                    <td colspan="5">
		                        <span id="calYear"></span>년
		                        <span id="calMonth"></span>월
		                    </td>
		                    <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
		                </tr>
		                <tr>
		                    <td>일</td>
		                    <td>월</td>
		                    <td>화</td>
		                    <td>수</td>
		                    <td>목</td>
		                    <td>금</td>
		                    <td>토</td>
		                </tr>
		            </thead>
		
		            <tbody>
		            </tbody>
       		 </table>
     		</div>
     		
     	</ul>
      </div>
     </div>

</body>
</html>