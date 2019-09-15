<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h1{text-shadow:5px 5px 5px orange;}
ul{list-style-type: none;}
.dju1{width : 100px; height: 50px;}
a{text-decoration: none;}
</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.innerfade.js"></script>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<h1>교수등록화면</h1>
<div id="div1">
<form action = "professorRegister" method="get">
<ul>
	<li><label for="번호">번호</label>
		<input type ="number" name="no" autofocus="autofocus" required="required" placeholder="번호입력">
	</li>	
	<li><label for="나이">나이</label>
		<input type ="number" name="age" placeholder="나이입력">
	</li>	
	<li><label for="이름">이름</label>
		<input type ="text" name="name" placeholder="이름입력">
	</li>	
	<li><label for="과목">과목</label>
		<input type ="text" name="subject" placeholder="과목입력">
	</li>
	<li><input type="image" src="images/sub.png" class ="dju1"></li>	
</ul>
</form>
</div>
<a href = "template.jsp">메인으로</a>
<ul id="portfolio">
   <li>
         <img src="images/23.jpg" title="교수등록" class="dju2"/>
   </li>
   <li>
         <img src="images/3.jpg" title="Whizzkids" class="dju2"/>
   </li>
   <li>
         <img src="images/5.jpg" title="Königin Mutter" class="dju2"/>
   </li>
   <li>
         <img src="images/1.jpeg" title="RT Hybride Archivierung" class="dju2"/>
   </li>
</ul>
<script>
$(function(){
	$('#portfolio').innerfade({
        speed: 'slow',
        timeout: 4000,
        type: 'sequence',
        containerheight: '220px'
     });
});
</script>
</body>
</html>