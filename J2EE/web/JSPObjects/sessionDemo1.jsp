<%@ page language="java" import="java.util.Date,java.text.SimpleDateFormat" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session对象测试页面1</title>
</head>
<body>
<h1>session内置对象</h1>
    <hr>
    <% 
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
      Date d = new Date(session.getCreationTime());
      session.setAttribute("username", "admin"); 
      session.setAttribute("password", "123456");
      session.setAttribute("age", 20);
      
      //设置当前session最大生成期限单位是秒
      //session.setMaxInactiveInterval(10);//10秒钟
      
    %>
    Session创建时间：<%=sdf.format(d)%><br>    
    Session的ID编号：<%=session.getId()%><BR>
         从Session中获取用户名：<%=session.getAttribute("username") %><br>
         
    <a href="sessionDemo2.jsp" target="_blank">跳转到sessionDemo2.jsp</a>     

</body>
</html>