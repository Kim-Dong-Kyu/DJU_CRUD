<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
.dju{width: 100px; height: 50px;}
div#div1{
	position:absolute;
	top:50px; left:10px;
	width:300px; height:100px;
	border: 1px solid orange;
	
}
</style>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<div id ="div1">
<form action="studentSearch" method="get">
<ul>
	<li><label>학생검색</label>
	<input type ="text" name="name" autofocus="autofocus" required="required" placeholder="이름검색">
	</li>
	<li><input type = "image" src="images/search.png" class="dju">
	</li>
</ul>
</form>
</div>
</body>
</html>