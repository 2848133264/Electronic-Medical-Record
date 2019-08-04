<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session page</title>
</head>
<body>
	<%
		session.getId();
		session.setAttribute("key", "sessionValue");
		
	%>
	<%=session.getAttribute("key") %>
	<!-- session id 是服务器设置的 ，用于一次会话。-->
	<!-- 通过超链接打开的新窗口，新窗口的session与其父窗口的session相同  -->
	<%=session.getId() %>
	<!-- 如果我们是普通的用户，在验证的时候，可以设置这个界面设置。 -->
</body>
</html>