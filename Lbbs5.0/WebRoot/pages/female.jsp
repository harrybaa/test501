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
	<table background="images/index/shequ.jpg" width="800" height="30">
		<tr>
		  <td width="694"><div align="left" style="margin-left:20px;">
		  	女人应谨记终生的15句话09-11-02 11:14 发表于：《南京中年知己》
		  </td>
		  <td width="30"><a href="#">回帖</a></td>
		  <td width="60"><a href="javascript:history.back(-1);">返回</a></td>
		</tr>
	</table>
	<table width="800" height="20" background="images/index/bgtop.jpg">
		<tr >
			<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;[转] 女人应谨记终生的15句话(转） 
			<pre>
1.学会做几个拿手好菜，不一定是给爱人做，也可能在休闲的时候犒劳自己或者慰劳下辛苦多年的父母。


2.越是得不到的感情，越不要极尽全力的强求；越是离得很远的理想，越需要旷日持久的坚持。


3.不要在情绪不好的时候做坏的决定，越是负面情绪占据主导的时候，越要少折腾神经。


4.一天不能花8小时以上时间去想同一个人，超过12点，再大的事也要为睡觉让路。


5.当感觉自己语塞的时候，就不要乱说话，要知道，沉默，也有无限种含义。


6.心情不好或者空虚寂寞的时候，千万不要找异性去说，那样只会让你更危险，找不到好姐们，也还有自己的父母。


7.不要怕犯傻和犯错，怕的是你第二次还犯同样的傻和同样的错。


8.工作是你的权利而不是义务，你可以少工作或者多工作，但是千万不要不工作。


9.越是你上瘾的事情，越要守住内心的渴求，当然，上瘾的事情也包括对男人的追求。


10.健康比三围重要，智慧比财富值钱，这两样东西，争取都不要少。


11.能得到别人称赞不一定是好事，因为那同样会让你骄傲。


12.不要总是羡慕别人的幸福，因为那也可能是别人辛苦得来的。


13.衣服不要尽可能的多，够穿就行，男人不要尽可能的富有，够体贴你就成。


14.30岁之前没嫁出去也不要太过紧张，更不要见个男人就嫁，其实男人比你更紧张。


15.40岁之前如果还未婚未孕，那么，可以放下一些事情，认真的开始重点进攻了。


6.心情不好或者空虚寂寞的时候，千万不要找异性去说，那样只会让你更危险，找不到好姐们，也还有自己的父母。 

7.不要怕犯傻和犯错，怕的是你第二次还犯同样的傻和同样的错。


8.工作是你的权利而不是义务，你可以少工作或者多工作，但是千万不要不工作。


9.越是你上瘾的事情，越要守住内心的渴求，当然，上瘾的事情也包括对男人的追求。


10.健康比三围重要，智慧比财富值钱，这两样东西，争取都不要少。


11.能得到别人称赞不一定是好事，因为那同样会让你骄傲。


12.不要总是羡慕别人的幸福，因为那也可能是别人辛苦得来的。


13.衣服不要尽可能的多，够穿就行，男人不要尽可能的富有，够体贴你就成。


14.30岁之前没嫁出去也不要太过紧张，更不要见个男人就嫁，其实男人比你更紧张。


15.40岁之前如果还未婚未孕，那么，可以放下一些事情，认真的开始重点进攻了。</pre></td>
		</tr>
		
	</table>
	
		
	<table width="800">
		<tr  bgcolor="#E4EFFA">
		  <td width="118" rowspan="3"><img src="images/face/user/12.jpg" width="60"  height="80"/><br />
			性别：女<br />
			来自：上海浦东新区<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a> </td>
		  <td width="596" height="2"><div align="left"><font color="red">[楼主]</font>第1楼：<a href="#">爱你一生</a>   发表时间：2008-7-6 18:35:53</div></td>
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
	
	<table width="800">
		<tr bgcolor="#E4EFFA">
		  <td width="120" rowspan="3"><img src="images/face/user/6.jpg" width="60"  height="80"/><br />
			性别：女<br />
			来自：北京，朝阳区<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a>		  </td>
		  <td width="594" height="2"><div align="left">第2楼：<a href="#">幸福感</a>   发表时间：2008-7-6 18:35:53</div></td>
		  <td width="70"><div align="right"><a href="#">引用</a> <a href="#">回复</a> </div></td>
		</tr>
		<tr>
		  <td height="2" colspan="2"><img src="images/index/line.jpg" width=666/></td>
	  </tr>
		<tr>
		  <td colspan="2" align="left" valign="baseline">&nbsp;&nbsp;沙发。。。</td>
	  </tr>
  </table>
  
  <table width="800">
		<tr  bgcolor="#E4EFFA">
		  <td width="120" rowspan="3"><img src="images/face/user/0.jpg" width="60"  height="80"/><br />
			性别：女<br />
			来自：上海，阐北区<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a>		  </td>
		  <td width="594" height="2"><div align="left">第3楼：<a href="#">没道理</a>   发表时间：2008-7-6 18:35:53</div></td>
		  <td width="70"><div align="right"><a href="#">引用</a> <a href="#">回复</a> </div></td>
		</tr>
		<tr>
		  <td height="2" colspan="2"><img src="images/index/line.jpg" width=666/></td>
	  </tr>
		<tr>
		  <td colspan="2" align="left" valign="middle">&nbsp;&nbsp;值得学习</td>
	  </tr>
  </table>
  
  <table width="800">
		<tr  bgcolor="#E4EFFA">
		  <td width="120" rowspan="3"><img src="images/face/user/13.jpg" width="60"  height="80"/><br />
			性别：男<br />
			来自：上海，黄浦区<br />
		  <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a>		  </td>
		  <td width="594" height="2"><div align="left">第4楼：<a href="#">love you only</a>   发表时间：2009-3-18 18:35:53</div></td>
		  <td width="70"><div align="right"><a href="#">引用</a> <a href="#">回复</a> </div></td>
		</tr>
		<tr>
		  <td height="2" colspan="2"><img src="images/index/line.jpg" width=666/></td>
	  </tr>
		<tr>
		  <td colspan="2" align="center" valign="middle">
		  	<img src="images/face/user/14.jpg" width="316" height="201" /><p>
		  	天门版犀利哥!!!<img src="images/face/user/15.gif" />
		  </td>
	  </tr>
  </table>
  <s:form action="addBbsAnswer" action="post">
  <table background="images/index/bganswer.jpg" width="800" height="230">
  	<tr height="50"><td>&nbsp;</td>	</tr>
	<tr height="120">
	  <td align="left" valign="top" >
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	<input id="tx" type="text" name="bbsAnswer.content" size="113" value="请在此输入要回复的内容" />
	  </td>	
	</tr>
  	<tr height="30"><td>
  	<a href="addBbsAnswer"><img src="images/index/answer.jpg" border="0" align="right" width="76" height="26" /></a></td>
  	</tr>
  </table>
  </s:form>
  
</div>
</body>
</html>


