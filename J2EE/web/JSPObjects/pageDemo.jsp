<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page对象测试页面</title>
</head>
<body>
    <h1>page内置对象</h1>
    
         当前page页面对象的字符串描述：<%=page.toString() %><br> 
         当前page页面对象的哈希值：<%= page.hashCode() %>
</body>
</html>