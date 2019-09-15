<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
.dju1{
	width:100px;height: 50px;
}
#div1{
	position: absolute;
	top:100px; left: 30px;
	width: 300px; height: 100px;
	border: 1px solid red;
}
</style>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<h1>관리자검색</h1>
<div id="div1">
<form action="managerSearch" method="get">
<ul>
	<li><label for ="이름">이름</label>
		<input type="text" name="name" required="required" autofocus="autofocus" placeholder="이름검색">
	</li>
	<li><input type="image" src="images/search.png"class="dju1"></li>

</ul>
</form>
</div>
</body>
</html>