<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>setProperty测试页面B</title>
</head>
<body>
<!-- jsp:userBean格式: id="标识符" class="java类名" scope="作用范围" -->
<jsp:useBean id="userB" class="model.UserBean" scope="session"></jsp:useBean>
<% 
	String a = request.getParameter("myname");
	String b = request.getParameter("mypassword"); 
%>
<!-- jsp:setProperty格式2： name="标识名" property="属性名" value="表达式" -->
<jsp:setProperty name="userB" property="name"  value="<%=a %>"></jsp:setProperty>
<jsp:setProperty name="userB" property="password" value="<%=b %>" ></jsp:setProperty>

<jsp:forward page="getPropertyDemo.jsp"></jsp:forward>
</body>
</html>