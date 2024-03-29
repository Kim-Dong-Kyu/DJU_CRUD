<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
*{
                margin:0;
                padding:0;}
             
            .title{
   font-family:"궁서", Arial, Dotum,Helvetica,AppleGothic,Sans-serif;
    font-size: 40px;
    font-weight: bold; 
                position:absolute;
                top:70px;
                left:30px;}
   .title span{
    font-size: 20px}
   #menu{
    font-family: "Trebuchet MS", sans-serif;
    font-size: 24px;
    font-style: normal;
    font-weight: bold;
    letter-spacing: 1.4px;
    position: fixed;
    }
   #menu .item{
    position:absolute;}  
   .daegu1{
    top:350px;
    left:100px;}  
   .daegu2{
      top:300px;
      left:200px;}
   .daegu3{
      top:250px;
      left:300px;}
   .daegu4{
      top:150px;
      left:400px;}
   .daegu5{
      top:300px;
      left:500px;
      }   
   .item img.circle{
    position:absolute;
    top:0px;
    left:0px;
    width:50px;
    height:50px;
    opacity:0.1;}
   a.icon{
    position:absolute;
    top:0px;
    left:0px;
    width:50px;
    height:50px;
    background: #ccc; 
    border-radius: 25px;}
   .daegu1 a.icon{
    background:#FFFF00;}
   .daegu2 a.icon{
    background:#E9DE16;}
   .daegu3 a.icon{
    background:#FF9900;}
   .daegu4 a.icon{
    background:#FF6600;}
   .daegu5 a.icon{
    background:#0000ff;}
   .item h2{    
    color:#555;
    font-size:20px;
    position:absolute;
    top:10px;
    left:40px;
    text-shadow:1px 1px 1px #fff;
    text-transform:uppercase;}
   .item ul{
    list-style:none;
    position:absolute;
    top:50px;
    left:50px;
    display:none;}
   .item ul li a{
    font-size:15px;
    text-decoration:none; 
    color:#555;
    text-shadow:1px 1px 1px #fff;
    padding:2px;
    float:left;
    clear:both;}
   .item ul li a:hover{
    color:#fff;
    text-shadow:1px 1px 1px #555;}
   .item h2.active{
    color:#fff;
    text-shadow:1px 0px 1px #555;}

</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.effects.core.js"></script>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<div id="menu">
                <div class="item daegu1">
                    <img src="images/51.jpg.png" title="" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>register</h2>
                    <ul>
                        <li><a href="student.jsp">student</a></li>
                        <li><a href="professor.jsp">professor</a></li>
                        <li><a href="manager.jsp">manager</a></li>
                    </ul>
                </div>
                <div class="item daegu2">
                    <img src="images/51.jpg.png" title="" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>search</h2>
                    <ul>
                        <li><a href="student_search.jsp">student</a></li>
                        <li><a href="professor_search.jsp">professor</a></li>
                        <li><a href="manager_search.jsp">manager</a></li>
                    </ul>
                </div>
                <div class="item daegu3">
                    <img src="images/51.jpg.png" title="" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>delete</h2>
                    <ul>
                        <li><a href="student_delete.jsp">student</a></li>
                        <li><a href="professor_delete.jsp">professor</a></li>
                        <li><a href="manager_delete.jsp">manager</a></li>
                    </ul>
                </div>
                <div class="item daegu4">
                    <img src="images/51.jpg.png" title="" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>list</h2>
                    <ul>
                        <li><a href="listStudent">student</a></li>
                        <li><a href="listProfessor">professor</a></li>
                        <li><a href="listManager">manager</a></li>
                        <li><a href="haksaList">haksaList</a></li>
                    </ul>
                </div>                
                <div class="item daegu5">
                    <img src="images/51.jpg.png" title="" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>update</h2>
                    <ul>
                        <li><a href="student_update.jsp">student</a></li>
                        <li><a href="professor_update.jsp">professor</a></li>
                        <li><a href="manager_update.jsp">manager</a></li>
                    </ul>
                </div>                
            </div>
            <script>
            $(function(){
                $('#menu > div').hover(
                 function () {
                     var $el = $(this);
      $el.find('.circle').stop().animate({
                         'width'     :'199px',
                         'height'    :'199px',
                         'opacity'   :'0.8',
       'top'       :'-25px',
                         'left'      :'-25px'
                     },500,'easeOutBack',function(){
                         $(this).parent().find('ul').fadeIn(400); 
                     });
      $el.find('h2').addClass('active');
                 },
                 function () {
                     var $el = $(this);
      $el.find('ul').fadeOut(500);
      $el.find('.circle').stop().animate({
                         'width'     :'50px',
                         'height'    :'50px',
                         'top'       :'0px',
                         'left'      :'0px',
                         'opacity'   :'0.1'
                     },4000,'easeOutBack');
      $el.find('h2').removeClass('active');
                 });
    });

            </script>
</body>
</html>