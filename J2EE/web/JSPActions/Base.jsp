<!-- page指令的示例 -->
<%@ page language="java" import ="java.util.*"  contentType="text/html; charset=UTF-8"%>
<!-- include指令的示例 -->
 <%@ include file="TimeDemo.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP基础语法练习页面</title>
</head>
<body>
<!-- 下一行是声明，可以声明变量和方法 -->
<%! int a = 200; %>
<!-- 下一行是表达式,注意表达式后没有分号 -->
a的值是：<%= a %>
<br />
服务器时间：<%= new Date().toLocaleString() %>
<br />
<!-- 下一行是脚本 -->
<% out.println(++a); %>
<!-- 下一行是服务器端注释，本行是html注释 -->
<%-- 这样的注释只能在服务器端看到，在客户端是看不到滴 --%>
</body>
</html>