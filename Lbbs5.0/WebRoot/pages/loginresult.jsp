<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bbs.model.User"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>login page</title>
		<style type="text/css">
body {
	font: 12px "宋体";
}

#default a {
	color: black;
	text-decoration: none;
}

a {
	text-decoration: none;
	color: green;
}

#default a:hover,a:hover {
	text-decoration: underline;
	color: red;
}

a:visited {
	color: #6600FF;
}
</style>
	</head>

	<body>
		<table align="center">
			<font color="red"><s:fielderror /> </font>
		</table>

		<div align="center">
			<font color="green"><strong>登陆成功</strong> </font>
			<%
				session.setAttribute("user", (User) request.getAttribute("user"));
			%>
			<br>
			<%
				int able = ((User) request.getAttribute("user")).getAble();
				if (able == 2) {
			%>
			您是管理员
			<s:a href="../admin/index.jsp">进入后台</s:a>
			<br />
			<%
				} else if (able == 1) {
			%>
			您是版主
			<s:a href="manager">进入管理</s:a>
			<br>
			<%
				} else {
			%>
			您是普通用户
			<s:a href="index.jsp">进入空间</s:a>
			<br />
			<%
				}
			%>
			<s:a href="index.jsp">返回首页</s:a><br>
			
			<br />
		</div>
	</body>
</html>

