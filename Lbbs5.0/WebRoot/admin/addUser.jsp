<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>bbs论坛后台|添加用户</title>
<link rel="stylesheet" href="images/css.css" type="text/css" media="screen">
<script language="javascript">
function check_input(theForm)
{
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
	
  if( theForm.province.value == "" || theForm.city.value == ""){
 	 alert("请选择province");
	 return false;
  }
  
  if (theForm.sex[0].checked == false && theForm.sex[1].checked == false)
  {
    alert("请选择用户性别");
    return (false);
  } 
  
}
//city
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
<body topmargin=0>
<form method="POST" action="addUser" onSubmit="return check_input(this)">
<TABLE width=400 border="0" align=center cellpadding=4 cellspacing=1 class="tableBorder">
	<s:fielderror id="error" ></s:fielderror>
	<TR bgcolor="#6699CC">
		<Th colspan=2><div align="center" class="whitetitle"><B>增加用户</B></div></Th>
	</TR>
	<TR>
	  <TD width="30%" class="forumrow">&nbsp;<strong>用户姓名</strong></TD>
		<TD width="70%" class="forumrow">
	  <input TYPE="text" name="user.name" size=20 maxlength=20>&nbsp;**不得超过 10 个字符</TD>
	</TR>
	<TR>
	  <TD width="30%" class="forumrow">&nbsp;<strong>用户密码</strong></TD>
		<TD width="70%" class="forumrow">
	  <input TYPE="password" name="user.password" size="18" maxlength=16>
	  &nbsp;**不得超过 16 个字符</TD>
	</TR>
	<TR>
	  <TD width="30%" class="forumrow">&nbsp;<strong>确认密码</strong></TD>
		<TD width="70%" class="forumrow">
	  <input TYPE="password" name="user.repassword" size="18" maxlength=16>
	  &nbsp;**不得超过 16 个字符</TD>
	</TR>
	<TR>
	  <TD class="forumrow">&nbsp;<strong>手机号码</strong></TD>
	  <TD class="forumrow"><input name="user.phone" id="phone" TYPE="text" size=20 maxlength=16>
      **必填</TD>
    </TR>
	<TR>
	  <TD class="forumrow">&nbsp;<strong>email地址</strong></TD>
	  <TD class="forumrow"><input name="user.email" id="email" TYPE="text" size=20 maxlength=16>
      **必填</TD>
    </TR>
	<TR>
	  <TD class="forumrow">&nbsp;<strong>用户籍贯</strong></TD>
	  <TD class="forumrow"><select name="user.province" id="province" onChange="getCity()">
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
          </select></TD>
    </TR>
    <TR>
	  <TD class="forumrow">&nbsp;<strong>年龄</strong></TD>
	  <TD class="forumrow"><input name="user.age" id="age" TYPE="text" size=20 maxlength=16>
      **必填</TD>
    </TR>
	<TR>
	  <TD width="30%" class="forumrow">&nbsp;<strong>用户性别</strong></TD>
		<TD width="70%" class="forumrow"><input type="radio" name="user.sex" value="男"> 
		  男
		    <input type="radio" name="user.sex" value="女">
		    女	      &nbsp;**必选</TD>
	</TR>
	<TR>
	  <TD height="45" colspan=2 align=center class="forumrow">	  <FONT color=#000000>
		<INPUT name=Submit type=submit value="确 定"> &nbsp;&nbsp;     
		<INPUT name=Submit2 type=reset value="清 除"></FONT></TD>
	</TR>
</TABLE>
</form>
</body>
</html>

