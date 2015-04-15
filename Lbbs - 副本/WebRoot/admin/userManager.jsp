<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>bbs论坛后台|用户管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="images/css.css" type="text/css" media="screen">
	<style type="text/css">
	body{
	font:12px;
	}
	</style>
	<script language="JavaScript" type="text/JavaScript">
	
		function delpay()
		{
		   if(confirm("确定要删除此吗？"))
		     return true;
		   else
		     return false;	 
		}
	</script>
  </head>
  
  <body>
	<TABLE width=98% border=0 align=center cellPadding=6 cellSpacing=1 class="tableBorder">
	<TBODY>
	<TR align=center bgcolor="#ffffff">
		<Th width=5%>编号</Th>
		<Th width=10%>用户名称</Th>
		<Th width=5% bgcolor="#ffffff">性别</Th>
		<Th width=5% bgcolor="#ffffff">年龄</Th>
		<Th width=20% bgcolor="#ffffff">手机号码</Th>
		<Th width=15% bgcolor="#ffffff">email</Th>
		<Th width=15% bgcolor="#ffffff">身份</Th>
		<Th width=25% bgcolor="#ffffff">操作</Th>
	</TR>
	
	<s:iterator value="#request.list" id="u" >
		
		<TR >
		<TD height="27" class=forumRow><div align="center"><s:property value="id"/></div></TD>
		<TD class=forumRow><div align="center"><A HREF="#" title="点击编辑"><s:property value="name"/> </A></div></TD>
		<TD class=forumRow align=center><s:property value="sex"/></TD>
		<TD class=forumRow align=center><s:property value="age"/></TD>
		<TD class=forumRow align=center><s:property value="#u.phone"/></TD>
		<TD class=forumRow align=center><s:property value="#u.email"/></TD>
		<TD class=forumRow align=center>
			 <% String able = request.getAttribute("able").toString();
			 	if(able.equals("2")){%> 
			 	管理员
			 	<%}else if(able.equals("1")){%>
			 	版主	
			 	<%}else{%>
			 	普通用户
			 	<%}%>
		</TD>
		<TD class=forumRow align=center>
			<s:a href="deleteUser?user.id=%{#u.id}" title="点击删除" onClick="return delpay();">删除</s:a>
			 &nbsp;|&nbsp;&nbsp;<s:a href="editPUser?user.id=%{#u.id}">编辑</s:a>
			 &nbsp;|&nbsp;&nbsp;<s:a href="addAuthority?user.id=%{#u.id}" onclick="return confirm('确定设置该用户为版主吗?');">设为版主</s:a>
			 &nbsp;|&nbsp;&nbsp;<s:a href="deleteAuthority?user.id=%{#u.id}" onclick="return confirm('确定取消该用户的权限吗?');">取消权限</s:a>
		</TD>
	</TR>
		
	</s:iterator>
	
	<tr>
     <td height="25" colspan="10">
	     <div align="right">
	     	<table>
	     		<tr>
	     			<td>总<font color=red>1</font>条记录</td><td>总<font color=red>1</font>页</td><td>当前是第<font color=red>1</font>页</td><td><a href="#">首页</a></td><td><a href="#">上一页</a></td><td><a href="#">下一页</a></td><td><a href="#">尾页</a></td>&nbsp;&nbsp;
	     		</tr>
	     	</table>
	     </div>
	 </td>
   </tr>
	</TBODY>
</TABLE>
  </body>
</html>
