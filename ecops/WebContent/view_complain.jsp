<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<jsp:useBean id="connection1" class="logicDB.Jdbc" scope="request" />
<%
Vector details = (Vector)session.getAttribute("cops_details");
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
.view_complain_style1 {
	color: #FFFF00;
	font-size: 30px;
}
-->
</style>


<title>e-COPS West Bengal :: Complains Lists</title>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="95" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="80%" border="1" cellpadding="0" cellspacing="0" bordercolor="#C7EFF1">
        <tr>
          <td colspan="6" bgcolor="#999999"><div align="center">
            <h2 class="view_complain_style1">View Complains </h2>
          </div></td>
        </tr>
        <tr>
          <td><div align="center">User ID </div></td>
          <td><div align="center">Complain ID </div></td>
          <td><div align="center">Date</div></td>
          <td><div align="center">Complain</div></td>
          <td colspan="2"><div align="center">Type</div></td>
        </tr>
        <%
		
		String stationName = (String) details.get(6);
		 Vector v = connection.newComplains(stationName);
		connection.connClose();
		for(int i=0;i<v.size();i++)
		{
		Vector invid = (Vector) v.get(i);
		 %>
        <tr>
          <td width="15%"><div align="center"><%= invid.get(0) %></div></td>
          <td width="15%"><div align="center"><%= invid.get(1) %></div></td>
          <td width="15%"><div align="center"><%= invid.get(2) %></div></td>
          <td width="29%"><div align="center"><%= invid.get(3) %></div></td>
          <td width="13%"><div align="center"><a href="reportStat.jsp?st=fir&rid=<%= invid.get(1) %>">Make FIR</a> </div></td>
          <td width="13%"><div align="center"><a href="reportStat.jsp?st=gd&rid=<%= invid.get(1) %>">Make GD</a> </div></td>
        </tr>
        <%
		  }
		 %>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td nowrap="nowrap"><div align="center">
      <%@ include file="footer.jsp"%>
    </div></td>
  </tr>
</table>
<%
}
else{
response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>