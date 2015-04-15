<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>bbs论坛</title>
<STYLE type=text/css>
BODY {
	SCROLLBAR-FACE-COLOR: #799ae1; BACKGROUND: #799ae1; MARGIN: 0px; FONT: 12px 宋体; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1
}
TABLE {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
TD {
	FONT: 12px 宋体
}
IMG {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
A {
	FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #428eff; TEXT-DECORATION: none
}
.sec_menu {
	BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid
}
.menu_title {
	
}
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 8px; COLOR: #215dc6; POSITION: relative; TOP: 2px
}
.menu_title2 {
	
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px
}
</STYLE>

<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>

<META content="MSHTML 6.00.2900.2135" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=left border=0>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
              <TD vAlign=bottom height=42 > </TD>
            </TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
              <TD class=menu_title onMouseOver="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          bgcolor="#D6DFF7" height=25><SPAN><A 
            href="main.jsp" 
            target=main><B>管理首页</B></A> | <B><a href="../pages/index.jsp" target="_top">退出</a></B></SPAN> </TD>
            </TR></TBODY></TABLE>&nbsp;
            <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
              <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" style="CURSOR: hand" 
          onclick=showsubmenu(2) onMouseOut="this.className='menu_title';" 
          background=images/admin_left_3.gif height=25><SPAN>用户管理</SPAN> </TD>
            </TR>
        <TR>
          <TD id=submenu2 style="DISPLAY: none">
            <DIV class=sec_menu style="WIDTH: 158px">
                  <TABLE cellSpacing=0 cellPadding=0 width=150 align=center>
                    <TBODY>
                      <TR> 
                        <TD height=5></TD>
                      </TR>
                      <TR> 
                        <TD height=20><IMG height=20 alt="" 
                  src="images/bullet.gif" width=15 border=0><a href="showAllUser" target="main">用户管理</a></TD>
                      </TR>
                      <TR> 
                        <TD height=20><IMG height=20 alt="" 
                  src="images/bullet.gif" width=15 border=0><a href="addUser.jsp" target="main">增加用户</a></TD>
                      </TR>
                    <TBODY>
                    </TBODY>
                  </TABLE>
                </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
        <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
          <TBODY>
            <TR>
              <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" style="CURSOR: hand" 
          onclick=showsubmenu(3) onMouseOut="this.className='menu_title';" 
          background=images/admin_left_5.gif height=25><SPAN>版面管理</SPAN> </TD>
            </TR>
            <TR>
              <TD id=submenu3 style="DISPLAY: none"><DIV class=sec_menu style="WIDTH: 158px">
                  <TABLE cellSpacing=0 cellPadding=0 width=150 align=center>
                    <TBODY>
                      <TR>
                        <TD height=5></TD>
                      </TR>
                      <TR>
                        <TD height=20><IMG height=20 alt="" 
                  src="images/bullet.gif" width=15 border=0><a href="showBoard" target="main">版面管理</a></TD>
                      </TR>
                      <TR>
                        <TD height=20><IMG height=20 alt="" 
                  src="images/bullet.gif" width=15 border=0><a href="addBoard.jsp" target="main">增加版面</a></TD>
                      </TR>
                    <TBODY>
                    </TBODY>
                  </TABLE>
                </DIV>
                  <DIV style="WIDTH: 158px">
                    <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                      <TBODY>
                        <TR>
                          <TD height=20></TD>
                        </TR>
                      </TBODY>
                    </TABLE>
                </DIV></TD>
            </TR>
          </TBODY>
        </TABLE>
        <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
              <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          background=images/admin_left_9.gif height=25><SPAN>类型管理</SPAN> </TD>
            </TR>
        <TR>
        <TR>
              <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          background=images/admin_left_9.gif height=25><SPAN>软件信息</SPAN> </TD>
            </TR>
        <TR>
          <TD>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 align=center>
              <TBODY>
              <TR>
                 <TD height=40>版权所有：罗华平</TD>
                      </TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE><table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
</table>
  </TD></TR></TBODY></TABLE></BODY></HTML>

