<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
		//求1-100之间的所有素数（在大于一的自然数，除了一和整数自己外，不能被其他整数除的数
		//先找出素数，之后去求和
		int sum =0;
		for(int i=1;i<=100;i++){
			for(int j=2;j<i;j++){
				if(i%j ==0){
					// 6/1 6/2  6/3 6/5 6/6;
					break;
				}else{
					//System.out.print(i+" ");
					sum+=i;
					break;
					//5/2 5/3 5/4 
				}
			}
		}
		//i%4==0&&i%100!=0 || i%400 ==0
		//显示当前系统的时间
		 long time = System.currentTimeMillis();
		//对时间进行格式化
		SimpleDateFormat sFormat =new SimpleDateFormat("YYYY-MM-dd hh:mm:ss");
		out.print(sFormat.format(time));
	
	%>
	<%=sum %>
</body>
</html>