<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getProperty测试页面</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");//统一编码格式以防乱码
%>
<!-- jsp:userBean格式: id="标识符" class="JavaBean类名" scope="作用范围" -->
<jsp:useBean id="userB" class="model.UserBean" scope="session"></jsp:useBean>

注册的用户名称：
<!-- jsp:getProperty格式： property="属性名" name="JavaBean对象名/标识符" -->
 
<!-- 也可以使用表达式来替换getProperty -->
<%= userB.getName() %>

<br />
注册的用户密码：

<%=userB.getPassword() %>
<br />

</body>
</html>