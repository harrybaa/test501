<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'allanswer.jsp' starting page</title>
    
  </head>
  
  <body>
    This is my JSP page. <br>
	    <s:iterator value="#session.list">
		<table width="800">
		<tr  bgcolor="#E4EFFA">
		  <td width="118" rowspan="3"><img src="images/face/user/12.jpg" width="60"  height="80"/><br />
			<s:property value="sender" /><br />
			<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a> </td>
		  <td width="596" height="2"><div align="left"><font color="red"><s:property value="sendtime" /></div></td>
		  <td width="70"><div align="right"><a href="#">引用</a> <a href="#">回复</a> </div></td>
		</tr>
		<tr>
		  <td height="5" colspan="2"><img src="images/index/line.jpg" width=666/></td>
	  </tr>
		<tr>
		  <td colspan="2" align="left" valign="top">
		  		&nbsp;&nbsp;<s:property value="content" />
		  </td>
	  </tr>
  	</table>
	</s:iterator>
  </body>
</html>
