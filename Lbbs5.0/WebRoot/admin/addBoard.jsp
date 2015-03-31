<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>bbs论坛后台|添加版面</title>
<link rel="stylesheet" href="images/css.css" type="text/css" media="screen">
<script Language="JavaScript">

function check_input()
{

   if (document.getElementById("name").value == "")
  {
    alert("请输入版面名称");
    theForm.name.focus();
    return (false);
  }
   if (document.getElementById("master").value == "")
   {
     alert("请输入版主姓名");
     theForm.master.focus();
     return (false);
   }
   if (document.getElementById("placard").value == "")
   {
     alert("请填写版面公告");
     theForm.placard.focus();
     return (false);
   }
   if (theForm.type.value != "")
   {
     alert("请选择类型");
     return (false);
   }
}

</script>
</head>
<body topmargin=0>
<form method="POST" action="addBoard" onSubmit="return check_input(this)">
<TABLE width=50% border="0" align=center cellpadding=4 cellspacing=1 class="tableBorder">
 <tr bgcolor=ffffff> 
      <th height=25 colspan=5 align="center">增加版面
     </th>
    </tr>
	<TR bgcolor="#FFFFFF">
	  <TD width="30%">版面名称</TD>
		<TD width="70%">
	  <input TYPE="text" name="board.name" id="name" size=20 maxlength=20>&nbsp;**不得超过 10 个汉字</TD>
	</TR>
	
	<TR bgcolor="#FFFFFF">
	  <TD width="30%">版主姓名</TD>
		<TD width="70%">
	  <input TYPE="text" name="board.master" id="master" size=20 maxlength=20>&nbsp;**不得超过 10 个汉字</TD>
	</TR>
	
	<TR bgcolor="#FFFFFF">
	  <TD width="30%">版面公告</TD>
		<TD width="70%">
	  <input TYPE="text" name="board.placard" id="placard" size=20 maxlength=20>&nbsp;**不得超过 10 个汉字</TD>
	</TR>
	
	<TR bgcolor="#FFFFFF">
	  <TD width="30%">所属类型</TD>
	  <TD width="70%">
	  <select name="type">
	  	<option value="null">请选择类别</option>
		<option>电脑数码</option>
		<option>生活时尚</option>
		<option>娱乐明星</option>
		<option>教育科学</option>
		<option>商业理财</option>
		<option>健康医疗</option>
		<option>社会人文</option>
	  </select>
	  &nbsp;**必选</TD>
	</TR>

	<TR bgcolor="#FFFFFF"><TD height="45" colspan=2 align=center>	  <FONT color=#000000>
		<INPUT name=Submit type=submit value="确 定"> &nbsp;&nbsp;     
		<INPUT name=Submit2 type=reset value="清 除"></FONT></TD>
	</TR>
</TABLE>
</form>
</html>
