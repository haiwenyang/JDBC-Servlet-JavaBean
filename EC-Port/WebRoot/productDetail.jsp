<%@ page contentType="text/html; charset=gbk"%>
<%@ page import="java.sql.*,com.changzhou.ecport.biz.*,com.changzhou.ecport.entity.*,java.util.*" %>
<%
	String id = request.getParameter("productid");
	ServiceBiz getSer = ServiceBizFactory.getServ();
	Product pro = getSer.ShowProInfoById(id);
%>




<!--�ļ�ͷ��ʼ-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="description" content="���ڵ��������Ż�">
		<title>���ڵ��������Ż�</title>
		<LINK href="css/tarena.css" rel=stylesheet>
		<script language = "JavaScript" src = "js/tarena.js"></script>
	</head>
	<body onLoad="MM_preloadImages('images/index_on.gif','images/reg_on.gif','images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
		  <tr>
		    <td align="left" width="7%" background="images/top_bg.gif"><img src="images/logo.gif" width="286" height="58"></td>
		    <td width="62%" background="images/top_bg.gif">��</td>
		    <td width="31%" background="images/top_bg.gif" align="right">
			<img src="images/top_r.gif" width="352" height="58" border="0"></td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td background="images/dh_bg.gif" align="left" height="12">
		      <table width="100" border="0" cellspacing="0" cellpadding="0" align="center">
		        <tr>
		          <td width="5%">��</td>
		          <td width="10%"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','images/index_on.gif',1)">
					<img name="Image1" border="0" src="images/index.gif" width="90" height="36"></a></td>
		          <td width="10%"><a href="user/ViewUser.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/reg_on.gif',1)">
					<img name="Image2" border="0" src="images/reg.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="adm/ViewShoppingAction.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/carts_on.gif',1)">
					<img name="Image4" border="0" src="images/cart.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="user/order.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','images/order_on.gif',1)">
					<img name="Image5" border="0" src="images/order.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="adm/ExitAction.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image6','','images/exit_on.gif',1)">
					<img name="Image6" border="0" src="images/exit.gif" width="92" height="36"></a></td>
		        </tr>
		      </table>
		    </td>
		  </tr>
		</table>
		<table cellspacing="1" cellpadding="3" align="center" border="0" width="98%">
		<tr>
		<td width="65%"><BR>
		>> ��ӭ���� <b>���ڵ��������Ż�</b> </td>
		<td width="35%" align="right">

		</td></tr></table>



<!--�ļ��忪ʼ-->
		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>���ڵ��������Ż�</a> �� ��Ʒ��ϸ
                </td>
                </tr>
		</table>
              <br>

	<form action="loginAction.do" method=post name="login">
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="images/bg2.gif" colspan="2"><p><font color="#ffffff"><b><%=pro.getName() %></b></font></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="20%">��
			��&nbsp; �� ��</td>
			<td class=tablebody1 valign=middle width="80%">&nbsp;&nbsp;<%=pro.getAuthor() %></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="20%">��
			��&nbsp; �� ��</td>
			<td class=tablebody1 valign=middle width="80%">&nbsp;&nbsp;<%=pro.getPrice() %></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">���� �� �硿</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<%=pro.getPublish() %></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">�� ��&nbsp; ��
			��</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<%=pro.getId() %></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">�� ҳ&nbsp; ��
			��</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<%=pro.getPages() %></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">���������</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<%=pro.getCata() %></td>
		</tr>
		<tr>
			<td class=tablebody1 align=center width="" valign="top">�� ��&nbsp; ��
			��</td>
			<td class=tablebody1 valign=middle width=""><%=pro.getDesc() %></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">��</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<img border="0" src="<%=pro.getImage() %>" width="127" height="180"></td>
		</tr>
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2"><a href="adm/AddShopping.do?productid=<%=pro.getId() %>">
			<img border="0" src="images/buycar.gif" width="92" height="21"></a> </td>
		</tr>
		</table>
	</form>
<!--�ļ�β��ʼ-->
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
		  <tr>
		    <td height="17" background="images/bot_bg.gif">
		      ��</td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
		    <td bgcolor="#f1f1f6" height="53" valign="center">
			<p align="center">Copyright &copy;2004 - 2005 <a href="http://www.tarena.com.cn"><b><font face="Verdana,">Tarena</font></b><font color=#CC0000>.com.cn</font></a></p><br>
			</td>
		  </tr>
		</table>
	</body>
</html>
