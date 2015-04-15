<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>回帖</title>
<style type="text/css">
body{
font:12px "宋体";
}
#txColor{
color:blue;
font-size: 14px;
}
#tx{
height:125px;
}
</style>

</head>

<body>
<div align="center">
	<img src="images/index/up.jpg" width="800" height="200" />
	<table background="images/index/shequ.jpg" width="800" height="30">
		<tr>
		  <td width="694"><div align="left" style="margin-left:20px;">
		  	<s:iterator value="#request.bbs">
		  		<div id="txColor"><s:property value="title" /></div>
		  	</s:iterator></div>
		  </td>
		  <td width="30"><a href="#">回帖</a></td>
		  <td width="60"><a href="javascript:history.back(-1);">返回</a></td>
		</tr>
	</table>
		
	<table width="800">
		<tr  bgcolor="#E4EFFA">
		  <td width="118" rowspan="3"><img src="images/face/user/12.jpg" width="60"  height="80"/><br />
			<s:iterator value="#request.bbs"><s:property value="sender" /></s:iterator><br />
			<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a> </td>
		  <td width="596" height="2"><div align="left"><font color="red"><s:iterator value="#request.bbs"><s:date name="sendtime" format="yyyy-MM-dd HH:mm:ss" /></s:iterator></div></td>
		  <td width="70"><div align="right"><a href="#">引用</a> <a href="#">回复</a> </div></td>
		</tr>
		<tr>
		  <td height="5" colspan="2"><img src="images/index/line.jpg" width=666/></td>
	  </tr>
		<tr>
		  <td colspan="2" align="left" valign="top">
		  		<s:iterator value="#request.bbs">
		  		&nbsp;&nbsp;<s:property value="content" />
		  	</s:iterator>
		  </td>
	  </tr>
  	</table>
  	
  	<s:iterator value="#session.list" id="a">
		<table width="800">
		<tr  bgcolor="#E4EFFA">
		  <td width="118" rowspan="3"><img src="images/face/user/12.jpg" width="60"  height="80"/><br />
			<s:property value="sender" /><br />
			<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a> </td>
		  <td width="596" height="2"><div align="left"><font color="red"><s:date name="sendTime" format="yyyy-MM-dd HH:mm:ss" /></div></td>
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
  	
  <s:form action="addBbsAnswer" method="post" onSubmit="return check_input(this)">
  <table background="images/index/bganswer.jpg" width="800" height="230">
  	<tr height="50"><td>&nbsp;</td>	</tr>
	<tr height="120">
	  <td align="left" valign="top" >
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	<input id="content" type="text" name="bbsAnswer.content" size="113" value="请在此输入要回复的内容" />
	  </td>	
	</tr>
  	<tr height="30"><td>
  	<td> <input type="submit" value="发布" /></td>
	
  	</tr>
  </table>
  </s:form>
  
</div>
</body>
</html>


