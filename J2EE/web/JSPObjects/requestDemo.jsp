<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'index.jsp' starting page</title>
</head>

<body>
	<%
		request.setCharacterEncoding("utf-8"); //解决中文乱码问题，无法解决URL传递中文出现的乱码问题。
		//测试request的绑定数据方法
		request.setAttribute("password", "123456");
	%>
	<!-- 测试request的常用方法 -->
	用户名：<%=request.getParameter("username")%><br /> 
	爱好 ：
	<%
		if (request.getParameterValues("favorite") != null) {
			String[] favorites = request.getParameterValues("favorite");
			for (int i = 0; i < favorites.length; i++) {
				out.println(favorites[i] + "&nbsp;&nbsp;");
			}
		}
	%>
	<br /> 
	密码：<%=request.getAttribute("password")%><br />
	请求体的MIME类型:<%=request.getContentType()%><br /> 
	协议类型及版本号:<%=request.getProtocol()%><br /> 
	服务器主机名 :<%=request.getServerName()%><br />
	服务器端口号：<%=request.getServerPort()%><br /> 
	请求文件的长度 ：<%=request.getContentLength()%><br />
	请求客户端的IP地址：<%=request.getRemoteAddr()%><br /> 
	请求的真实路径：<%=request.getRealPath("requestDemo.jsp")%><br />
	请求的上下文路径：<%=request.getContextPath()%><br />

</body>
</html>
