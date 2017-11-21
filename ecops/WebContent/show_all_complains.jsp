<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
Vector details = (Vector) session.getAttribute("user_details");
if(details!=null){
%>
<style type="text/css">
<!--
body {
	background-image: url();
	margin-left: 1%;
	margin-top: 0px;
	margin-right: 1%;
	margin-bottom: 0px;
	background-color: #CCE1F9;
}
-->
</style>
<title>e-COPS West Bengal ::</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" nowrap="nowrap"><div align="center">
      <%@ include file="header.jsp"%>
    </div></td>
  </tr>
  <tr>
    <td width="100%" nowrap="nowrap"><div align="center">
      <%@ include file="link.jsp"%>
    </div></td>
  </tr>
  <tr>
    <td height="19" nowrap="nowrap" background="images/goldfade.jpg"><div align="center"> </div></td>
  </tr>
  <tr>
    <td width="100%" nowrap="nowrap"><div align="center">
      <%@ include file="wbpolice.jsp"%>
    </div>
    <div align="center"></div></td>
  </tr>
  <tr>
    <td nowrap="nowrap" background="images/chainbrd.gif"><div align="center">.</div></td>
  </tr>
  <tr>
    <td nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="90%" border="1" bgcolor="#BBD9BC">
        <caption>
          All COMPLAINS By <%=details.get(2)%>
          </caption>
		  <%
		  String user =(String) details.get(0);
		  Vector v1 = connection.allComplainsByUser(user);
		  %>
        <tr>
          <td width="17%"><div align="center">Report ID </div></td>
          <td width="17%"><div align="center">Station Name </div></td>
          <td width="12%"><div align="center">Report Date </div></td>
          <td width="8%"><div align="center">Type</div></td>
          <td width="29%"><div align="center">Complain</div></td>
        </tr>
		<%
		for(int i=0;i<v1.size();i++){
		Vector invid =(Vector)v1.get(i);
		%>
        <tr>
          <td><div align="justify"><%=invid.get(0)%></div></td>
          <td><div align="justify"><%=invid.get(1)%></div></td>
          <td><div align="justify"><%=invid.get(2)%></div></td>
          <td><div align="justify"><%=invid.get(3)%></div></td>
          <td><div align="justify"><%=invid.get(4)%></div></td>
        </tr>
		<%}%>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div></td>
  </tr>
  <tr>
    <td nowrap="nowrap">
      <div align="center">
      <%@ include file="footer.jsp"%>
    </div></td>
  </tr>
</table>
<%
}
else{
response.sendRedirect("login.jsp?msg_user=Please Login");
}
%>