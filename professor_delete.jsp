<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
div#div1{
	position: absolute;
	top:100px; left: 30px;
	width :300px; height: 100px;
	border: 1px solid blue
}
.dju{width: 100px; height:50px;}
</style>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<h1>교수삭제</h1>
<div id = "div1">
<form action="professorDelete" method="get">
<ul>
	<li><label for ="이름">이름</label>
	<input type = "text" name ="name" required="required" autofocus="autofocus" placeholder="이름입력">
	</li>
	<li><input type="image" src="images/delete.jpg" class="dju"></li>
</ul>
</form>
</div>
</body>
</html>