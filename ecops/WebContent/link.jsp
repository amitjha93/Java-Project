<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style4 {color: #3300FF; }
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
.style9 {
	color: #99CCFF;
	font-weight: bold;
}
.style10 {color: #99FFFF; font-weight: bold; }
.style11 {color: #FFFFFF; font-weight: bold; }
-->
</style>
<table width="102%" border="0" cellpadding="00" cellspacing="0" bordercolor="#ECE9D8" bgcolor="#CC3300">
  <tr>
  	<%
	String type=(String)session.getAttribute("userType");
	if(type!=null){
	if(type.equals("user"))
	{
	%>
    <td width="13%" bgcolor="#3333CC"><div align="center" class="style4"><a href="user_home.jsp" class="style9">HOME</a></div></td>
    <%
	}
	else if(type.equals("cops"))
	{
	%>
	
	<td width="13%" bgcolor="#3333CC"><div align="center" class="style4"><a href="cops_home.jsp" class="style9">HOME </a></div></td>
	<%
	}}
	else
	{
	%>
	<td width="13%" bgcolor="#3333CC"><div align="center" class="style4"><a href="index.jsp" class="style9">HOME </a></div></td>
	<%}%>
    <td width="21%" nowrap="nowrap" bgcolor="#333399"><div align="center" class="style4"><a href="other_services.jsp" class="style9">OTHER SERVICES</a></div></td>
    <td width="14%" bgcolor="#3333CC"><div align="center" class="style4"><a href="contactus.jsp" class="style9">CONTACT US</a></div></td>
    <td width="13%" bgcolor="#333399"><div align="center" class="style4">
      <p><a href="aboutus.jsp" class="style9">ABOUT US </a></p>
    </div></td>
    <td width="13%" bgcolor="#3333CC"><div align="center" class="style4"><a href="faq.jsp" class="style9">FAQ</a></div></td>
   <%if((String)session.getAttribute("userType")!=null){%> <td width="13%" bgcolor="#333399"><div align="center" class="style4"><a href="logout.jsp" class="style9">LOGOUT</a></div></td><%}%>
  </tr>
</table>
