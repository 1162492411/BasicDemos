<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>注册页面A</title>
  </head>
  
  <body>
    <h1>用户注册</h1>
    <hr>
    <form name="regForm" action="JavaBeanDemo/setPropertyDemoA.jsp" method="post"> 
<!--<form name="regForm" action="JavaBeanDemo/setPropertyDemoB.jsp" method="post">   -->
<!--<form name="regForm" action="JavaBeanDemo/setPropertyDemoC.jsp" method="post">   -->
    <table>
      <tr>
        <td>用户名：</td>
        <td><input type="text" name="myname"/></td>
      </tr>
      
      <tr>
        <td>密码：</td>
        <td><input type="text" name="mypassword"/></td>
      </tr>
      
      <tr>
         <td colspan="2"><input type="submit" value="提交"/></td>
      </tr>
    </table>
    </form>
    <br>
  </body>
</html>
