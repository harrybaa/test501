<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>login page</title>
</head>

<body>
	<table align="center">
	<font color="red"><s:fielderror /></font>
	</table>
	<div align="center">
	
	<font color="green"><strong>
		
	</strong></font>
	
	<form action="login" method="post">
		<table background="images/login/loginB.jpg" width="500" height="300" title="simple">
			<tr><td height="190"></td></tr>
			<tr>
				<td>  </td>
				<td>	
					<input size="31" type="text" name="user.name"  />
				</td>
			</tr>
			<tr>
				<td> </td>
				<td>	
					<input size="33" type="password" name="user.password" />
				</td>
			</tr>
			<tr>
				<td>
					<!-- <img src="images/login/brup.gif" border="0" /> -->
					<input type="reset" value="reset" /> 
				</td>
				<td>	
					<!-- <a href="#"><img src="images/login/bsdown.gif" border="0" /></a> -->
					<input type="submit" value="login" /> 
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>

