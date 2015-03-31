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
		<%
			session.setAttribute("user", (User) request.getAttribute("user"));
		%>
		<div align="center">
			<font color="green"><strong>添加成功</strong> </font><br>
			<s:a href="userManager.jsp">查看</s:a>
		</div>
	</body>
</html>

