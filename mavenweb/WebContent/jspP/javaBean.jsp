<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试javabean</title>
</head>
<body>
	<!-- javabean 的使用有一下几个要求：
		 1.所有的成员变量都是private类型的
		 2.提供set/get方法
		 3.有一个无参的构造方法
	 -->
	 <%
	 	request.setAttribute("name", "张三");
	 	request.setAttribute("passw", "root");
	 %>
	 <jsp:useBean id="user" class="EntityP.javaBean_User" scope="page"></jsp:useBean>
	 <!-- 设置属性值 -->
	 <jsp:setProperty property="username" name="user" value= "张三"/>
	 <jsp:setProperty property="password" name="user" value="root"/>
	 <!-- 获得属性值 -->
	 姓名：<jsp:getProperty property="username" name="user"/><br><!-- 写法麻烦 -->
	 密码：<%=user.getPassword() %>
</body>
</html>