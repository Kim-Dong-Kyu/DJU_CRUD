<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
div#div1{
	position: absolute;
	top : 150px; left: 50px;
	width: 300px; height: 170px;	
	border: 1px solid orange;
}
.dju{
	width: 100px; height: 50px;
}
</style>
<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<h1>수정하기 전 학생내용입니다.</h1>
<%
	int no=0;
	String age="";
	String name =request.getParameter("name");
	String subject = "";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","java","java");
	if(conn == null){
		out.print("오라클연결실패");
	}
	else{
		out.print("오라클연결성공");
		Statement stmt = conn.createStatement();
		String sql = "select no,age,name,subject from professor where name ='"+name+"'";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			no=rs.getInt("no");
			age=rs.getString("age");
			name=rs.getString("name");
			subject=rs.getString("subject");
		}
	}
%>
수정할학생이름:<%=name %><br>
<div id="div1">
<form action="professorUpdate" method="get">
<input type="hidden" name = "searchname" value="<%=name %>" >
<ul>
	<li><label for="번호">번호</label>
	<input type = "text" readonly="readonly" name="no" value="<%=no%>">
	</li>
	
	<li><label for="나이">나이</label>
	<input type = "text" name="age" required="required" autofocus="autofocus" placeholder="나이입력"value="<%=age%>">
	</li>
	
	<li><label for="이름">이름</label>
	<input type = "text" name="updatename" placeholder="이름입력"value="<%=name%>">
	</li>
	<li><label for="학번">학번</label>
	<input type = "text" name="subject" placeholder="과목입력"value="<%=subject%>">
	</li>
	<li><input type = "image" src = "images/update.jpg" class="dju"></li>
</ul>
</form>
</div>
</body>
</html>