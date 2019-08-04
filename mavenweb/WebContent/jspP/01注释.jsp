<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- 全局变量的声明 -->
	<%!
		float PI =3.14f;
	%>
	<!-- 注释问题 -->
		<!-- 
			当是在这个 <% %> 里边之间的话，符合部分java习惯的注释方式，比如单行注释、多行注释
			另外的是这个jsp中的特有的注释。<%--  --%>,在这个<% %> 之间尽量不要使用这个jsp的注释，避免不必要的符号键错误
		 -->
	<%
	 //request 设置属性 ，单行注释
	 request.setAttribute("key", "您好A先生");
	/*
	 我是多行注释
	*/
	%>
	<%-- 我是jsp特有的注释 --%>
	<!-- jsp 特有的输出方式 -->
	<%=request.getAttribute("key") %>
	<%=PI * 4 %>
	
	
	

</body>
</html>