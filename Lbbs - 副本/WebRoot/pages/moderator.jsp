<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>bbs论坛系统首页</title>
<style type="text/css">
body{
font:12px "宋体";
}
#default a{
color:black;
text-decoration:none;
}
a{
text-decoration:none;
color:green;
}
#default a:hover,a:hover{
text-decoration:underline;
color:red;
}
a:visited{
color:#6600FF;
}
#contain{
width:800px;
background-color:#CCCCFF;
height:400px;
}
#class{
color:#666666;
}
#tx{
height:200px;
}
#ti{
color: #984606;
}
</style>
<!-- display clock -->
<script> 
function tick() { 
var hours, minutes, seconds, xfile; 
var intHours, intMinutes, intSeconds; 
var today, theday; 
today = new Date(); 
function initArray(){ 
this.length=initArray.arguments.length 
for(var i=0;i<this.length;i++) 
this[i+1]=initArray.arguments[i] } 
var d=new initArray( 
"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"); 
theday = today.getYear()+"年" + [today.getMonth()+1]+"月" +today.getDate() +"日&nbsp;"+ d[today.getDay()+1]+"&nbsp;"; 
intHours = today.getHours(); 
intMinutes = today.getMinutes(); 
intSeconds = today.getSeconds(); 
if (intHours == 0) { 
hours = "12:"; 
} else if (intHours < 12) { 
hours = intHours+":"; 
} else if (intHours == 12) { 
hours = "12:"; 
} else { 
hours = intHours + ":"; 
} 
if (intMinutes < 10) { 
minutes = "0"+intMinutes+":"; 
} else { 
minutes = intMinutes+":"; 
} 
if (intSeconds < 10) { 
seconds = "0"+intSeconds+" "; 
} else { 
seconds = intSeconds+" "; 
} 
timeString = theday+hours+minutes+seconds; 
Clock.innerHTML = timeString; 
window.setTimeout("tick();", 100); 
} 
window.onload = tick; 

</script> 
</head>

<body>
<div align="center">
	<div >
	<img src="images/index/top.jpg" />
	</div>
	
	<div id="menu" >
		<table background="/images/index/indexS.jpg" width="800" height="38px">
			<tr>
				<td rowspan="3" width="25%">
					<div id="Clock" style="color:#AE7E96;"></div> 
				</td>
				<td width="8%"><a href="index.jsp">首页</a></td>
				<td width="10%"><a href="login.jsp">登陆</a></td>
				<td width="15%"><a href="../load/download.jsp">资源管理</a></td>
				<td width="12%"><a href="#">精华帖子</a></td>
				<td width="11%"><a href="../admin/index.jsp">进入后台</a></td>
				<td width="10%"><a href="register.jsp">注册</a></td>
				<td width="9%"><a href="#">注销</a></td>
			</tr>
		</table>
	</div>
	
	<div>
		<table width="800px" height="38px" background="images/index/indexS.jpg">
			<tr>
				<td width="165" align="left">&nbsp;&nbsp;欢迎访问bbs论坛</td>
				<td width="175">条件&nbsp;
					<select>
						<option>帖子标题</option><option>Java</option><option>web开发</option><option>asp.net</option>
					</select> 
			  </td>
				<td width="242">关键字  
			  <input type="text"  /></td>
				<td width="126">
					<input type="radio" name="s" />模糊
					<input type="radio" name="s" />精确
			  </td>
				<td width="68"><a href="#"><img src="images/index/search.jpg" border="0" /></a></td>
				<td width="68"><a href="publish.jsp"><img src="images/index/publish.jpg" border="0" /></a></td>
			</tr>
		</table>
	</div>
		
	<img src="images/index/boardE.jpg" width="800" height="24" />
	
	<table width="800" border="0">
		<tr bgcolor="#F0F0F0" >
			<td>标题</td>
			<td>所属版面</td>
			<td>发布者</td>
			<td>发布时间</td>
			<td>操作</td>
		</tr>
		<tr>
			<td colspan=4" background="images/index/indexLine.jpg" width="800" height="3"></td>
		</tr>
		<s:iterator value="#request.all">
		<tr bgcolor="#F9F9F9">
			<td width="250"><s:a href="selectById?bbs.id=%{id}" id="ti" > <s:property value="title"/> </s:a></td>
			<td width="150"> <s:property value="boardId"/> </td>
			<td width="100"> <s:property value="sender"/> </td>
			<td width="150"> <s:property value="sendtime"/> </td>
			<td width="150"><a href=#>设置置顶</a>&nbsp;|&nbsp;
			<s:a href="deleteById?bbs.id=%{id}">删除</s:a><br>
			<a href=#>设为精华帖子</a></td>
		</tr>
		</s:iterator>
	</table>
	
	<img src="images/index/boardE.jpg" width="800" height="24" /> <img src="images/index/classT.jpg" width="800" height="28" /> <img src="images/index/end.jpg" /> </div>
</body>
</html>
