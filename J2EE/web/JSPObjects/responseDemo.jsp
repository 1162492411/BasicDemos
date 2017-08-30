<%@ page language="java" import="java.io.PrintWriter" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>response对象测试页面</title>
</head>
<body>
<%
    response.setContentType("text/html;charset=utf-8"); //设置响应的MIMI类型
    
    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
    //out.flush();
    
    PrintWriter outer = response.getWriter(); //获得输出流对象
    outer.println("大家好，我是response对象生成的输出流outer对象");
    //response.sendRedirect("reg.jsp");//请求重定向
    //请求转发
    //request.getRequestDispatcher("requestDemo.jsp").forward(request, response);
%>
</body>
</html>