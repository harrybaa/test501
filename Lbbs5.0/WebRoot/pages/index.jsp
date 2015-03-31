<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bbs.model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
		<table background="images/index/indexS.jpg" width="800" height="38px">
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
				<td width="68"><a href="publishAuth"><img src="images/index/publish.jpg" border="0" /></a></td>
			</tr>
		</table>
	</div>
	
	<div id="class">
		<table width="800px" height="30px" background="images/index/indexS.jpg">
			<tr>
				<td><a href="showAll"><div id="class">Java技术</div></a></td>
				<td><a href="showAll"><div id="class">C++技术讨论区</div></a></td>
				<td><a href="showAll"><div id="class">Asp.net</div></a></td>
				<td><a href="showAll"><div id="class">Web开发</div></a></td>
				<td><a href="showAll"><div id="class">Php技术</div></a></td>
				<td><a href="showAll"><div id="class">数据库</div></a></td>
				<td><a href="showAll"><div id="class">服务器</div></a></td>
				<td><a href="showAll"><div id="class">学生大本营</div></a></td>
			</tr>
		</table>
	</div>
		
	<div>
		<table width="800" height="292" background="images/index/life.jpg">
		 
			  <tr height="73">
				<td colspan="3">&nbsp;</td>
			  </tr>
			  <tr >
				<td width="277">
					<table width="264" height="200" >
					  <tr>
						<td height="23" colspan="2"><a href="female.jsp"><font color="red" size="2">女人应谨记的15句话</font></a></td>
					  </tr>
					  <tr>
						<td height="36" colspan="2"><div align="left">第一，学会做几个拿手好菜，不一定是给爱人做，
							也可能在休闲的时候犒劳自己……<a href="female.jsp">[全文]</a></div>
						</td>
					  </tr>
					  <tr>
						<td>
							<div style="float:left"><img src="images/index/beauty.jpg" width="110" height="90"/><p />
							<a href="#"><font color="red" size="2">减肥的真实功效</font></a></div>
							<div style="float:left; " >
							<a href="female.jsp">・姐妹们帮我女儿取个名</a><p />
							<a href="female.jsp">・化妆刷的选择及其清洁</a><p />
							<a href="female.jsp">・我被开水烫伤如何去疤</a><p />
							<a href="female.jsp">・ M出来亮亮大家支持哟</a> 
							</div>
						</td>
					  </tr>
					</table>
				</td>
				<td width="267">
					<table width="260" >
					  <tr>
						<td height="23" colspan="2"><a href="house.jsp"><font color="red" size="2">教你装修怎样精打细算</font></a></td>
					  </tr>
					  <tr>
						<td height="36" colspan="2"><div align="left">那用一笔钱装修一套房子，这笔钱要怎样花才合理呢？怎样精打细算哪？…
							<a href="house.jsp">[全文]</a></div>
						</td>
					  </tr>
					  <tr>
						<td>
							<div style="float:left"><img src="images/index/jiaju.jpg" width="110" height="90"/><p />
							<a href="house.jsp"><font color="red" size="2">手绘精美背景墙 </font></a></div>
							<div style="float:left; " >
							<a href="house.jsp">・第一次秒杀中标的感受</a><p />
							<a href="house.jsp">・验收房 乒乓球作用大</a><p />
							<a href="house.jsp">・家装色彩决定你的命运</a><p />
							<a href="house.jsp">・我的网购家具淘宝经</a>
							</div>
						</td>
					  </tr>
					</table>
				</td>
				<td width="266">
					<table width="262" height="200" >
					  <tr>
						<td height="23" colspan="2"><a href="marry.jsp"><font color="red" size="2">说说我的农村婆婆</font></a></td>
					  </tr>
					  <tr>
						<td height="36" colspan="2" align="left">以前，我总觉得婆媳问题很好解决，我一直觉得只要对她好，她就会对我好…
							<a href="marry.jsp">[全文]</a>
						</td>
					  </tr>
					  <tr>
						<td>
							<div style="float:left"><img src="images/index/jiehun.jpg" width="110" height="90"/><p />
							<a href="marry.jsp"><font color="red" size="2">晒晒我的结婚照 </font></a></div>
							<div style="float:left; " >
							<a href="marry.jsp">・80后结婚30条雷人理由</a><p />
							<a href="marry.jsp">・什么样结亲队引人注目</a><p />
							<a href="marry.jsp">・做儿子兼老公如此的难</a><p />
							<a href="marry.jsp">・准妈妈生活会影响宝宝</a>
							</div>
						</td>
					  </tr>
					</table>
				</td>
			  <tr>
		</table>
	</div>
	<img src="images/index/boardE.jpg" width="800" height="24" />	
	
	<table background="images/index/classT.jpg" width="800" height="28">
		<tr>
			<td width="20"><div align="left"><img src="images/index/small.jpg" /></div></td>
			<td><font color="white" size="2"><div align="left"><b>精品帖子</b></div></font></td>
		</tr>
	</table>
	
	<table width="800">
		
		<tr bgcolor="#F0F0F0"> 
			<td width="339"><div align="left">帖子标题</div></td>
			<td width="115">所属类型</td>
			<td width="103">作者</td>
			<td width="125">发布时间</td>
			<td width="94">评论数</td>
		</tr>
		<tr>
			<td colspan="5" background="images/index/indexLine.jpg" width="800" height="3"></td>
		</tr>
		<tr>
			<td><div align="left"><div id="default"><a href="showAll">王心凌初夜细节惨遭曝光 崩溃大哭指责前男友</a></div></div></td>
			<td>Java</td>
			<td>Jason</td>
			<td>2010-4-1</td>
			<td><div id="default"><a href="answer.jsp">30</a></div></td>
		</tr>
		<tr>
			<td><div align="left"><div id="default"><a href="answer.jsp">Java中继承和面向接口的编程</a></div></div></td>
			<td>Asp.net</td>
			<td>酷爱.net</td>
			<td>2009-9-26</td>
			<td><div id="default"><a href="#">10</a></div></td>
		</tr>
		<tr>
			<td><div align="left"><div id="default"><a href="showAll">j2ee和j2me谁赚的钱多</a></div></div></td>
			<td>Java</td>
			<td>sun</td>
			<td>2010-3-6</td>
			<td><div id="default"><a href="#">156</a></div></td>
		</tr>
		<tr>
			<td><div align="left"><div id="default"><a href="showAll">新闻首页信息是怎么读取数据库的？</a></div></div></td>
			<td>Web开发</td>
			<td>米米</td>
			<td>2010-3-6</td>
			<td><div id="default"><a href="#">156</a></div></td>
		</tr>
		<tr>
			<td><div align="left"><div id="default"><a href="showAll">请有JAVA经验的前辈给点意见学J2EE和J2ME哪个方向比较好 </a></div></div></td>
			<td>Java</td>
			<td>sun</td>
			<td>2010-3-6</td>
			<td><div id="default"><a href="#">156</a></div></td>
		</tr>
		
  </table>
	
	<table width="800" height="24"  background="images/index/boardE.jpg" >
		<tr><td><a href="showAll"><div align="right"><font color="red">查看更多</font></div> </a> </td></tr>
	</table>
		
	<img src="images/index/classT.jpg" width="800" height="28" />
	<img src="images/index/end.jpg" />
</div>	
</body>
</html>

