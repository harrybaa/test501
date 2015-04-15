<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>bbs论坛</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="images/css.css" type="text/css" media="screen">
	<script src="js/date.js"></script>
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
  
 <body text="#000000" topmargin=0>
<form name="form1" method="post" action="/erp/admin/PayServlet">
<input type="hidden" name="method" value="list">
  <table width="98%" border="0" cellpadding="0" cellspacing="0" align="center" class=TableBorder>
    <tr height="22" valign="middle" align="center"> 
      <th width="14%" height="25">版面名称</th>
      <th width="11%">所属类型 </th>
      <th width="24%">日期</th>
      <th width="13%">操作</th>
    </tr>
    <tr height="22" valign="middle" align="center"> 
      <td height="27"><input name="project2" type="text" id="project2" size="20" maxlength="50" value=""></td>
      
      <td><select name="inout" id="inout">
        <option value="null">全部</option>
		<option>电脑数码</option>
		<option>生活时尚</option>
		<option>娱乐明星</option>
		<option>教育科学</option>
		<option>商业理财</option>
		<option>健康医疗</option>
		<option>社会人文</option>
      </select></td>
      <td><input name="addtime" type="text" id="addtime" size="12" maxlength="12" readonly value=""> 
        <input name="button" type="button" onClick="popUpCalendar(this, form1.addtime, 'yyyy-mm-dd')" value="请选择日期"></td>
      <td><input type="submit" name="Submit3" value="搜索">
        <input type="reset" name="Submit22" value="重置"></td>
    </tr>
  </table>
</form>
<table width="98%" border="0" cellpadding="2" cellspacing="0" align="center" class=TableBorder> 
<tr height="22" valign="middle" align="center"> 
    <th height="25" colspan="10">所有版面如下</th>
  </tr>
  <tr> 
    <td width="5%" height="25" class=forumrow><div align="center">ID</div></td>
    <td width="35%" class=forumrow><div align="center">版面名称</div></td>
    <td width="10%" class=forumrow><div align="center">版主姓名</div></td>
    <td width="40%" class=forumrow><div align="center">版面公告</div></td>
    <td width="15%" class=forumrow> <div align="center">操作</div></td>
  </tr>
  	
   	<s:iterator value="#request.list">
   	<tr><td height="25"><div align="center"><s:property value="id"/> </div></td>
    <td height="25"><div align="center"><s:property value="boardid"/> </div></td>
    <td><div align="center"><s:property value="master" /> </div></td>
    <td><div align="center"><s:property value="placard" /> </div></td>
    <td>
	    <div align="center"><a href="#">修改</a> | 
	    <s:a href="delete?board.id=%{id}" onclick="return delpay();">删除</s:a></div>
    </td></tr>	
   	</s:iterator>
   	
   <tr>
     <td height="25" colspan="10">
     <div align="center">
     <table><tr><td>总<font color=red>1</font>条记录</td><td>总<font color=red>1</font>页</td><td>当前是第<font color=red>1</font>页</td><td><a href="#">首页</a></td><td><a href="#">上一页</a></td><td><a href="#">下一页</a></td><td><a href="#">尾页</a></td>
     </div></td>
   </tr>

</table>
</body>
</html>

