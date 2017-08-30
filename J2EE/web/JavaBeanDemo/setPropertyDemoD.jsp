<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>setProperty测试页面D</title>
</head>
<body>
<!-- jsp:userBean格式: id="标识符" class="java类名" scope="作用范围" -->
<jsp:useBean id="userB" class="model.UserBean" scope="session" ></jsp:useBean>

<!-- jsp:setProperty格式4: property= "*" name="标识符" -->
<jsp:setProperty property="*" name="userB"/>
<jsp:forward page="getPropertyDemo.jsp"></jsp:forward>
</body>
</html>