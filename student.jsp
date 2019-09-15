<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
h1{text-shadow: 5px 5px 5px skyblue;}
.dju1{width: 100px; height: 50px;}
ul{list-style-type: none;}
a{text-decoration: none;}
</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.elevatezoom.js"></script>
<head>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<h1>학생등록화면</h1>
<div id="div1">
<form action = "studentRegister" method = "get">
<ul>
	<li><label for="번호">번호</label>
		<input type="number" name="no" required="required" autofocus="autofocus" placeholder="번호입력">
	</li>	
	<li><label for="나이">나이</label>
		<input type="number" name="age" placeholder="나이입력">
	</li>
	<li><label for="이름">이름</label>
		<input type="text" name="name" placeholder="이름입력">
	</li>
	<li><label for="학번">학번</label>
		<input type="text" name="hak" placeholder="학번입력">
	</li>
	<li><input type="image" src="images/sub.png" class = "dju1"></li>
</ul>
</form>
</div>
<a href="template.jsp">메인으로</a><br>
<img id="zoom_01" src='images/small/dju1_2.jpg' data-zoom-image="images/large/dju1_1.jpg"/>
	<script>
   $(function(){
      $('#zoom_01').elevateZoom({
         zoomType:"inner",
         cursor: "crosshair",
         zoomWindowFadeIn : 500,
         zoomWindowFadeOut: 750
      });
   });
</script>
</body>
</html>