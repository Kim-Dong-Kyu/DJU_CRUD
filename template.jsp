<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   String pagefile = request.getParameter("page");
   if (pagefile == null) {
      pagefile ="djuhaksa";
   }
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{

background-size: 100%;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<jsp:include page="left.jsp"></jsp:include>
<jsp:include page="bottom.jsp"></jsp:include>
<jsp:include page='<%=pagefile+".jsp"%>'></jsp:include>
</body>
</html>