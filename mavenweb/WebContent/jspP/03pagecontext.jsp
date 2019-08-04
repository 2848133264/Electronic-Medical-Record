<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>03 pageContext</title>
</head>
<body>
	
	<%
			String context = pageContext.getServletContext().getContextPath();
				//获得路径是比较常见的方法
				//使用pagecontext将属性值设置在不同的范围中，request、session、application范围中
			pageContext.setAttribute("request", pageContext.REQUEST_SCOPE);
			 
			/* PageContext.PAGE_SCOPE：对应于page范围。 
			
			  PageContext.REQUEST_SCOPE：对应于request范围。 
			
			 PageContext.SESSION_SCOPE：对应于session范围。 
			
			 PageContext.APPLICATION_SCOPE：对应于application范围 */
		%>
	<%=context %>
</body>
</html>