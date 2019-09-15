<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#All{
 width:700px;
 margin: 85px auto;
 background-color: #ffffff;
 padding: 20px;
 position: fixed;
}
.A{
 width: 300px; height : 100px;
 float: left;
 background-color: black;
}
.topMenu{
 height: 45px;
 background: orange;
}
.topMenu ul{
 list-style: none;
 padding: 0;
 margin: 0;
}
.topMenu ul li{
 float: left;
 padding: 50px;
 overflow: hidden;
 text-align: center;
 line-height: 45px;
}
.topMenu ul li a{
 position: relative;
 color: #ffffff;
 font-family: Arial;
 font-size: 11px;
 font-weight: bold;
 letter-spacing: 1px;
 text-transform: uppercase;
 text-decoration: none;
 cursor: pointer;
}
.topMenu ul li a span{
 position: absolute;
 top: 0px;
 left: 0px;
 width: 100px;
}
.topMenu ul li a span.over{
 top: -45px;
 background: yellow;
 color: green;
}
</style>
<script src="js/jquery-1.10.2.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="A">
 <img src="images/23.jpg">
</div>
<div id="All">
 <div class="topMenu">
 <ul>
  <li><a href="#">학사소개</a></li>
  <li><a href="#">jquery</a></li>
  <li><a href="#">멤버목록</a></li>
  <li><a href="#">jquery_mobile</a></li>
  <li><a href="#">javaScript</a></li>
  <li><a href="#">게시판</a></li>
 </ul>
 </div>
</div>
<script>
$(function(){
 $(".topMenu li a").wrapInner('<span class="out"></span>');
 $(".topMenu li a").each(function(){
 $('<span class="over">' +$(this).text()+'</span>').appendTo(this);
 });
 $(".topMenu li a").hover(function(){
 $(".out",this).stop().animate({'top':'45px'},200);
 $(".over",this).stop().animate({'top':'0px'},200);
 },function(){
 $(".out",this).stop().animate({'top':'0px'},200);
 $(".over",this).stop().animate({'top':'-45px'},200);
 });
});
</script>
</body>
</html>