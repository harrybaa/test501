<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>回帖</title>
<style type="text/css">
body{
font:12px "宋体";
}
</style>

</head>

<body>
<div align="center">
	<img src="images/index/up.jpg" width="800" height="200" />
	<table background="images/index/shequ.jpg" width="800" height="30">
		<tr>
		  <td width="694"><div align="left" style="margin-left:20px;">Java中接口和抽象类的区别？</div></td>
			<td width="30"><a href="#">回帖</a></td>
			<td width="60"><a href="javascript:history.back(-1);">返回</a></td>
		</tr>
  </table>
	<table width="800">
		<tr>
		  <td width="25%" rowspan="3" align="center" bgcolor="#E4EFFA"><img src="images/face/user/1.jpg" width="60"  height="80"/><p>
		  来自：上海<br />
	      <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a>		  </td>
		  <td width="50%" height="10" align="left" bgcolor="#E4EFFA">第2楼：<a href="#">爱你一生</a>发表时间：2008-7-6 18:35:53</td>
		  <td width="25%" align="right" height="10" bgcolor="#E4EFFA"><a href="#">引用</a> <a href="#">回复</a></td>
		</tr>
		<tr>
		  <td height="5" colspan="2"><img src="images/index/line.jpg" width=666/></td>
	  </tr>
		<tr>
		  <td colspan="2" align="left" valign="top">&nbsp;&nbsp;
	      抽象方法是必须实现的方法。就象动物都要呼吸。但是鱼用鳃呼吸，猪用肺呼吸。  动物类要有呼吸方法。怎么呼吸就是子类的事了。  现在有很多讨论和建议提倡用interface代替abstract类，两者从理论上可以做一般性的混用，但是在实际应用中，他们还是有一定区别的。抽象类一般作为公共的父类为子类的扩展提供基础，这里的扩展包括了属性上和行为上的。而接口一般来说不考虑属性，只考虑方法，使得子类可以自由的填补或者扩展接口所定义的方法，就像JAVA王子所说的事件中的适配器就是一个很好的应用。  用一个简单的例子，比如说一个教师，我们把它作为一个抽象类，有自己的属性，比如说年龄，教育程度，教师编号等等，而教师也是分很多种类的，我们就可以继承教师类而扩展特有的种类属性，而普遍属性已经直接继承了下来。  而接口呢~还是拿教师做例子，教师的行为很多，除了和普通人相同的以外，还有职业相关的行为，比如改考卷，讲课等等，我们把这些行为定义成无body的方法，作为一个集合，它是一个interface。而教师张三李四的各自行为特点又有不同，那么他们就可以扩展自己的行为body。从这点意义上来说， interface偏重于行为。  总之，在许多情况下，接口确实可以代替抽象类，如果你不需要刻意表达属性上的继承的话。</td>
	  </tr>
  </table>	
	<table width="800">
      <tr>
        <td width="25%" rowspan="3" align="center" bgcolor="#E4EFFA"><img src="images/face/user/12.jpg" width="60"  height="80"/>
            <p> 来自：上海<br />
            <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a> </p></td>
        <td width="50%" height="10" align="left" bgcolor="#E4EFFA">第2楼：<a href="#">爱你一生</a>发表时间：2008-7-6 18:35:53</td>
        <td width="25%" align="right" bgcolor="#E4EFFA" height="10"><a href="#">引用</a> <a href="#">回复</a></td>
      </tr>
      <tr>
        <td height="5" colspan="2"><img src="images/index/line.jpg" width="666"/></td>
      </tr>
      <tr>
        <td colspan="2" align="left" valign="top">&nbsp;&nbsp;沙发!!!</td>
      </tr>
    </table>
	<table width="800">
      <tr>
        <td width="25%" rowspan="3" align="center" bgcolor="#E4EFFA"><img src="images/face/user/0.jpg" width="60"  height="80"/>
            <p> 来自：上海<br />
            <a href="#"><img src="images/index/add.jpg" width="78" height="21" border="0"/></a> </p></td>
        <td width="50%" height="10" align="left" bgcolor="#E4EFFA">第2楼：<a href="#">爱你一生</a>发表时间：2008-7-6 18:35:53</td>
        <td width="25%" align="right" bgcolor="#E4EFFA" height="2"><a href="#">引用</a> <a href="#">回复</a></td>
      </tr>
      <tr>
        <td height="5" colspan="2"><img src="images/index/line.jpg" width="666"/></td>
      </tr>
      <tr>
        <td colspan="2" align="left" valign="top">&nbsp;&nbsp;值得学习</td>
      </tr>
    </table>
</div>
</body>
</html>


