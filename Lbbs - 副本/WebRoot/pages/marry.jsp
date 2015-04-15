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
		  	80后总结30条雷人结婚理由
		  </td>
		  <td width="30"><a href="#">回帖</a></td>
		  <td width="60"><a href="javascript:history.back(-1);">返回</a></td>
		</tr>
	</table>
	<table width="800" background="images/index/bgtop.jpg">
		<tr >
			<td align="left"><pre>
1.为父母的健康着想：再拖下去，他们好象都要急出病来了。——香港
2.谁叫我们看的第一部电影叫“你是我今生的新娘”!——中山
3.很奇怪，人人都说我俩长得像，所以结婚成为真正一家人也理所当然。——北京
4.有一件事能像结婚一样教人期待、兴奋、雀跃……吗?我愿意试试。——深圳
5.一个人的世界太寂寥，找个伴来陪多好。——大连
6.有一天突然发现悲伤失意、欢欣愉悦都不能没有他一起分享，所以决定留住他。——丽江
7.为了治疗一种人称“不切实际”的怪病。——广州
8.找寻更耐人寻味的感情。——湛江
9.谁不想尝尝当女主角的滋味呢?——苏州
10.怕做高龄产妇。——九江
11.我为什么结婚?再简单不过了：因为未婚，所以结婚。——郑州
12.我的婚期定在年前，讨个老婆好过年嘛。——韶关
13.儿子有天说，老爸，你也该找个老伴了。——福州
14.什么事情都做过了，只剩下结婚这码事没做过。——曲阜
15.迷信的人说逢9为大凶，婚姻不宜。所以，当我28岁时，心想如果再熬上个两年，太不保险，所以不如就……—— 宜昌
16.结婚的好处是，每天早晨一睁开眼，我都能看到这辈子最爱的男人，然后用吻代替刺耳的闹钟……——深圳
17.当哥哥和弟弟们全都生不出儿子时,为了不让年高的父母每天都用那种令你毛骨悚然的目光看着你，
        除了以身试“生”，试问我还有别的选择吗?——梅州
18.那套chanel最新款的粉红碎花蕾丝婚纱实在美呆了!——香港
19.相信我：结婚是因误解而成立的!——上海
20.关于结不结婚，我只想说，无论作何选择，你肯定都会后悔的，竟然如此，当然宁愿两人一起而不是独自抱憾终生罗!——沈阳
21.基于经济上、性欲上利益结合的考量。尽管批评我不够浪漫吧，这可是1 00％的实际哦。——John
22.想让自己外表看起来更历尽沧桑一点。——东莞
23.征服我这辈子遇上的第一个最温柔、最美丽的“敌人”。——佛山
24.玩累了!——汕头
25.只是为了向别人证明，我也娶得到老婆!——幸福的丑男
26.结婚，是对生命的一大让步：承认青春已逝!——桂林
27.其实，我爱的是别人。之所以跟他结婚，是不忍心伤害他。——三亚
28.受不了那些自命风流的男子纠缠，干脆结婚，叫他们死心!——长沙
29.结婚，是神圣而感人的，为了那美好的一刻，任何错误我都可以承担!——深圳
30.当爱情淡而无味，就可以考虑结婚了。——武汉</pre>
			</td>
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


