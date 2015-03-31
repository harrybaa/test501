<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>user register</title> 
<style type="text/css">
body{
font:12px "宋体";
}
#error{
color:red;
}
</style>

<script Language="JavaScript">
function check(theForm){
	var email = document.getElementById("email").value;

	if (email != "") {
		var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		isok= reg.test(email );
		if (!isok) {
			alert("邮箱格式不正确,正确格式如：xx@xx.com！");
			document.getElementById("email").focus();
			return false;
		}
	}
}
	

var city=[
["北京","天津","上海","重庆","香港","澳门"],
     ["石家庄","唐山","秦皇岛","邯郸","邢台","保定","张家口","承德","沧州","廊坊","衡水"],
     ["太原","大同","阳泉","长治","晋城","朔州","晋中","运城","忻州","临汾","吕梁"],
     ["呼和浩特","包头","乌海","赤峰","通辽","鄂尔多斯","呼伦贝尔","巴彦淖尔","乌兰察布","兴安","锡林郭勒","阿拉善"],
     ["沈阳","大连","鞍山","抚顺","本溪","丹东","锦州","营口","阜新","辽阳","盘锦","铁岭","朝阳","葫芦岛"],
     ["长春","吉林","四平","辽源","通化","白山","松原","白城","延边"],
     ["哈尔滨","齐齐哈尔","鸡西","鹤岗","双鸭山","大庆","伊春","佳木斯","七台河","牡丹江","黑河","绥化","大兴安岭"],
     ["南京","苏州","扬州","无锡","徐州","常州","南通","连云港","淮安","盐城","镇江","泰州","宿迁"],
     ["杭州","宁波","温州","嘉兴","湖州","绍兴","金华","衢州","舟山","台州","丽水"],
     ["合肥","芜湖","蚌埠","淮南","马鞍山","淮北","铜陵","安庆","黄山","滁州","阜阳","宿州","巢湖","六安","亳州","池州","宣城"],
     ["福州","宁德","南平","厦门","莆田","三明","泉州","漳州"],
     ["南昌","上饶","萍乡","九江","景德镇","新余","鹰潭","赣州","吉安","宜春","抚州"],
     ["济南","青岛","淄博","枣庄","东营","烟台","潍坊","威海","济宁","泰安","日照","莱芜","临沂","德州","聊城","滨州","菏泽"],
     ["郑州","开封","洛阳","平顶山","焦作","鹤壁","新乡","安阳","濮阳","漯河","许昌","三门峡","南阳","商丘","信阳","周口","驻马店"],
     ["武汉","十堰","襄樊","鄂州","黄石","荆州","宜昌","荆门","孝感","黄冈","咸宁","随州","恩施"],
     ["长沙","株洲","湘潭","岳阳","邵阳","常德","衡阳","张家界","益阳","郴州","永州","怀化","娄底","湘西"],
     ["广州","清远","潮州","东莞","珠海","深圳","汕头","韶关","佛山","江门","湛江","茂名","肇庆","惠州","梅州","汕尾","阳江","河源","中山","揭阳","云浮"],
     ["南宁","柳州","桂林","梧州","北海","防城港","钦州","贵港","玉林","百色","贺州","河池","来宾","崇左"],
     ["海口","三亚"],
     ["成都","自贡","攀枝花","泸州","德阳","绵阳","广元","遂宁","内江","乐山","南充","宜宾","广安","达州","眉山","雅安","巴中","资阳","阿坝","甘孜","凉山"],
     ["贵阳","六盘水","遵义","安顺","铜仁","毕节","黔西南","黔东南","黔南"],
     ["昆明","曲靖","玉溪","保山","昭通","丽江","普洱","临沧","文山","红河","西双版纳","楚雄","大理","德宏","怒江","迪庆"],
     ["拉萨","昌都","山南","日喀则","那曲","阿里","林芝"],
     ["西安","铜川","宝鸡","咸阳","渭南","延安","汉中","榆林","安康","商洛"],
     ["兰州","白银","定西","敦煌","嘉峪关","金昌","天水","武威","张掖","平凉","酒泉","庆阳","临夏","陇南","甘南"],
     ["西宁","海东","海北","黄南","海南","果洛","玉树","海西"],
     ["银川","石嘴山","吴忠","固原","中卫"],
     ["乌鲁木齐","克拉玛依","吐鲁番","哈密","和田","阿克苏","喀什","克孜勒苏柯尔克孜","巴音郭楞蒙古","昌吉","博尔塔拉蒙古","伊犁哈萨克","阿勒泰"],
     ["台北","高雄","基隆","台中","台南","新竹","嘉义"]
     ];

     function getCity(){
         var sltProvince=document.forms[0].document.getElementById("province");
         var sltCity=document.forms[0].document.getElementById("city");
         var provinceCity=city[sltProvince.selectedIndex - 1];
         sltCity.length=1;

         for(var i=0;i<provinceCity.length;i++){
             sltCity[i+1]=new Option(provinceCity[i],provinceCity[i]);
         }
     }

</script>

</head>

<body>

<div align="center">
<form  method="post" action="register" name="theForm" onsubmit="return check(this)">
	<table width="788" border="0" bgcolor="#F5EDFB" title="simple">
	  <tr>
	    <td colspan="3" height="15"><strong><font color="green" size="2" >请认真填写以下内容</font></strong></td>
      </tr>
	  <tr>
		<td colspan="3"><img src="images/index/line.jpg" width="551" height="5" /></td>
	  </tr>
	  <tr>
		<td align="right">用户名：</td>
		<td >
		  <input type="text" name="user.name" /></td>
		<td >*（必填）</td>
		<td id="error" align="left">
			<s:fielderror> <s:param>user.name</s:param> </s:fielderror>
		</td>
	  </tr>
	  <tr>
		<td align="right">密码：</td>
		<td><input type="password" name="user.password" size="22" /></td>
		<td>*（长度为6~20）</td>
		<td id="error" align="left">
			<s:fielderror> <s:param>user.password</s:param> </s:fielderror>
		</td>
	  </tr>
	  <tr>
		<td align="right">确认密码：</td>
		<td><input type="password" name="user.repassword" size="22" /></td>
		<td>*（长度为6~20）</td>
		<td id="error" align="left">
			<s:fielderror> <s:param>user.repassword</s:param> </s:fielderror>
		</td>
	  </tr>
	  <tr>
		<td align="right">年龄：</td>
		<td >
		  <input type="text" name="user.age" /></td>
		<td >*（1~150之间）</td>
		<td id="error" align="left">
			<s:fielderror> <s:param>user.age</s:param> </s:fielderror>
		</td>
	  </tr>
	  <tr>
		<td align="right">性别：</td>
		<td><input type="radio" name="user.sex" value="男"/>
		  男
		    <input type="radio" name="user.sex" value="女"/> 
	    女 </td>
		<td>*（必选）</td>
		<td id="error">
			<s:fielderror> <s:param>user.sex</s:param> </s:fielderror>
		</td>
	  </tr>
	  <tr>
		<td align="right">联系电话：</td>
		<td><input type="text" name="user.phone" /></td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
		<td align="right">QQ号码：</td>
		<td><input type="text" name="user.qq" /></td>
		<td>*(可选)</td>
	  </tr>
	  <tr>
		<td align="right">Emial地址：</td>
		<td><input type="text" name="user.email" id="email" /></td>
		<td>*（必填）</td>
		<td id="error" align="left">
			<s:fielderror> <s:param>user.email</s:param> </s:fielderror>
		</td>
	  </tr>
	  <tr>
		<td align="right">来自：</td>
		<td><select name="user.province" id="province" onChange="getCity()">
       <option value="null" selected="selected">请选择所在省份</option>
        <option value="直辖市">直辖市</option>
        <option value="河北">河北</option>
        <option value="山西">山西</option>
          <option value="内蒙古">内蒙古</option>
            <option value="辽宁">辽宁</option>
          <option value="吉林">吉林</option>
          <option value="黑龙江">黑龙江</option>
          <option value="江苏">江苏</option>
          <option value="浙江">浙江</option>
          <option value="安徽">安徽 </option>
        <option value="福建">福建 </option>
          <option value="江西">江西</option>
            <option value="山东">山东</option>
          <option value="河南">河南</option>
          <option value="湖北">湖北</option>
          <option value="湖南">湖南</option>
          <option value="广东">广东</option> 
          <option value="广西">广西</option>
            <option value="海南">海南</option>
          <option value="四川">四川</option>
          <option value="贵州">贵州</option>
          <option value="云南">云南</option>
          <option value="西藏">西藏</option>
          <option value="陕西">陕西 </option>
        <option value="甘肃">甘肃 </option>
          <option value="青海">青海</option>
            <option value="宁夏">宁夏</option>
          <option value="新疆">新疆</option>
          <option value="台湾">台湾</option>   
         </select>
     <select name="user.city" id="city">
          <option selected="selected" value="null">请选择所在城市</option>
          </select></td>
		<td>*（必选）</td>
	  </tr>
	  <tr>
		<td align="right">头像：</td>
		<td><br />
		<input type="radio" name="user.face" value="0" /><img src="images/face/user/0.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="1" /><img src="images/face/user/1.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="2" /><img src="images/face/user/2.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="3" /><img src="images/face/user/3.jpg" width="64" height="80" /><br>
		<input type="radio" name="user.face" value="4" /><img src="images/face/user/4.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="5" /><img src="images/face/user/5.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="6" /><img src="images/face/user/6.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="7" /><img src="images/face/user/7.jpg" width="64" height="80" /><br>
		<input type="radio" name="user.face" value="8" /><img src="images/face/user/8.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="9" /><img src="images/face/user/9.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="10" /><img src="images/face/user/10.jpg" width="64" height="80" />
		<input type="radio" name="user.face" value="11" /><img src="images/face/user/11.jpg" width="64" height="80" />
		</td>
		<td>*(可选)</td>
	  </tr>
	  <tr>
		<td>&nbsp;</td>
		<td>
			<input type="submit" value="注册" />
		    <input name="reset" type="reset" value="重填" />
			<input type="button" value="返回" onclick="javascript:history.back(-1);"/>
		</td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	  </tr>
	</table>
  </form>
</div>
</body>
</html>


