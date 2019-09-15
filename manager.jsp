<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/blueberry.css" />
<style type="text/css">
h1{text-shadow: 5px 5px 5px silver;}
ul{list-style-type: none;}
.dju1{width:100px; height: 50px;}
a{text-decoration: none;}
</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.blueberry.js"></script>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
	<h1>관리자등록</h1>
	<div id="div1">
		<form action="managerRegister" method="get">
			<ul>
				<li><label for="번호">번호</label> <input type="number" name="no"
					required="required" autofocus="autofocus" placeholder="번호입력">
				</li>
				<li><label for="나이">나이</label> <input type="number" name="age"
					placeholder="나이입력"></li>
				<li><label for="이름">이름</label> <input type="text" name="name"
					placeholder="이름입력"></li>
				<li><label for="부서">부서</label> <input type="text" name="part"
					placeholder="부서입력"></li>
				<li><input type="image" src="images/sub.png" class="dju1"></li>
			</ul>
		</form>
	</div>
	<a href="template.jsp">메인으로</a>
	<br>
	<div class="blueberry">
		<ul class="slides">
			<li><img src="images/23.jpg" /></li>
			<li><img src="images/3.jpg" /></li>
			<li><img src="images/5.jpg" /></li>
			<li><img src="images/1.jpeg" /></li>
		</ul>
	</div>
<script>
$(function(){
	$(window).load(function() {
		$('.blueberry').blueberry();
});
});
</script>
</body>
</html>