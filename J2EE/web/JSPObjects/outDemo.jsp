<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out对象示例页面</title>
</head>
<body>
<% 
	out.println("&emsp;&emsp;第一行内容<br />");
	out.println("&emsp;&emsp;第二行内容<br />");
%>
缓冲区容量:<%= out.getBufferSize() %><br />
缓冲区剩余：<%= out.getRemaining() %><br />
是否自动清空缓冲区:<%= out.isAutoFlush() %><br />
<!-- 下面将清除缓冲区内容重新进行测试 -->
----------------------------------------<br />
下面将清除缓冲区内容，进行clearBuffer测试<br />
<% out.flush(); %>
<% 
	out.println("&emsp;&emsp;第一行内容<br />");
	out.flush();
	out.clearBuffer();
	//此处并不会抛出异常
	out.println("&emsp;&emsp;第二行内容<br />");
%>
缓冲区容量:<%= out.getBufferSize() %><br />
缓冲区剩余：<%= out.getRemaining() %><br />
是否自动清空缓冲区:<%= out.isAutoFlush() %><br />
<!-- 下面将清除缓冲区内容重新进行测试 -->
----------------------------------------<br />
下面将清除缓冲区内容，进行clear测试<br />
<% out.flush(); %>
<% 
	out.println("&emsp;&emsp;第一行内容<br />");
	out.flush();
	out.clear();
	//此处将抛出异常，之后的代码将不会执行
	out.println("&emsp;&emsp;第二行内容<br />");
%>
缓冲区容量:<%= out.getBufferSize() %><br />
缓冲区剩余：<%= out.getRemaining() %><br />
是否自动清空缓冲区:<%= out.isAutoFlush() %><br />
----------------------------------------<br />

</body>
</html>