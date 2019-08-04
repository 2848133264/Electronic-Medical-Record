<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>病人就诊</title>
<style type="text/css">

	#picture{
		width:177px;
		height:142px;
		margin-left: 412px;	
	}
	#titleid{
		
		margin-left: 60px;
		
	}
	#ti{
		width: 1000px;  
		height: 60px;
		margin-top:10px;
	}
	.l{
		text-align: center;
		font-size: 34px;
		font-family: 楷体;
	}
	#main{
		width: 640px;
		height: 400px;
		/* background-color: red; */
		margin-left: 221px;
	}
	
	.text1{
	
		width: 46px;
	}
</style>
</head>
<body>	
	<div id="ti"><span id="titleid"><h2 class="l">门&nbsp;&nbsp;（&nbsp;急 &nbsp;）&nbsp;诊&nbsp; 就&nbsp; 诊</h2></span></div>
	<br><br>
	<div id="picture">
		<img alt="十字架" src="../img/image002.gif" style="width: 174px;height:131px;">
	</div>
	
	<div id="main">
		<!-- 根据登记表中信息，信息对某人 ，进行就诊 ，在这个条件下-->
		<form action="${pageContext.servletContext.contextPath }/personcure.do" method="post">
			<br>
			<table>
				<tr>
					<td>病历号：</td>
					<td><input type="text" name="id" placeholder="病历号" class="text1"></td>	
					<td>&nbsp;&nbsp;&nbsp;姓名：</td><td><input type="text" name="name" placeholder="姓名" class="text1"></td>
					<td>&nbsp;&nbsp;&nbsp;年龄：</td><td><input type="text" name="age" placeholder="年龄" class="text1"></td>
					<td>就诊时间：</td>
					<td><input type="date" name="inDate"></td>			
				</tr>	
			</table><br>
			病史：<br>
			<textarea rows="3" cols="89" name="bingshi"></textarea><br><br>
			现状：<br><textarea rows="3" cols="89" name="xianzhuang"></textarea><br><br>
			诊断结果：<br><textarea rows="3" cols="89" name="result"></textarea>
			<br>
			<br>
				<button style="width: 60px;height: 40px;margin-left: 220px;" onclick="confirm('确定提交吗？')" >提交</button>
		</form>
				<button  style="width: 60px;height: 40px;margin-top: -40px;margin-left: 50px;" onclick="back1()">返回</button>
			
	</div>
<script type="text/javascript">
	function back1() {
		window.history.back();
	}
</script>
</body>
</html>