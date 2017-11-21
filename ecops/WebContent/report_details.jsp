<%@ page language="java" import="java.util.*" contentType="text/html" errorPage="" %>
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
.report_details_style1 {color: #00CCFF}
-->
</style>

<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />

<title>e-COPS West Bengal :: Report Lists</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="228" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="75%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="2" bgcolor="#F8F4BA"><div align="center">
            <h2 class="report_details_style1">Report Details </h2>
          </div></td>
        </tr>
        <tr>
          <td width="361" bgcolor="#E0E0E0"><div align="right">Station Name: :</div></td>
          <td width="341" bgcolor="#E0E0E0">&nbsp;<%= request.getParameter("police_station").toUpperCase() %></td>
        </tr>
      </table>
      <table width="75%" border="1" cellpadding="1" cellspacing="1" bordercolor="#EAE9CC">
        <tr>
          <td width="15%" bgcolor="#6666FF"><div align="center">Report ID  </div></td>
          <td width="15%" bgcolor="#6666CC"><div align="center">User ID  </div></td>
          <td width="15%" bgcolor="#6666FF"><div align="center">Date</div></td>
          <td width="25%" bgcolor="#6666CC"><div align="center">Complain</div></td>
          <td width="15%" bordercolor="#2662DF" bgcolor="#6666FF"><div align="center">Type</div></td>
          <td width="15%" bordercolor="#CC6666" bgcolor="#6666CC"><div align="center">View</div></td>
        </tr>
        
        <%
		String policeStation = request.getParameter("police_station");
		Vector v = connection.allComplains(policeStation);
		connection.connClose();
			if(v.isEmpty()){
			response.sendRedirect("cops_home.jsp?msg=No Such Station");
			}
		for(int i=0;i<v.size();i++)
		{
		Vector invid = (Vector) v.get(i);
		 %>
        <tr>
          <td width="15%"><div align="center"><%= invid.get(0)%></div></td>
          <td><div align="center"><%= invid.get(1)%></div></td>
          <td><div align="center"><%= invid.get(2)%></div></td>
          <td><div align="center"><%= invid.get(3)%></div></td>
          <td><div align="center"><%= invid.get(4)%></div></td>
          <td><div align="center"><a href="report_details_status.jsp?reportID=<%= invid.get(0)%>">View Reports </a> </div></td>
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
      <p>&nbsp;</p>
      <p>&nbsp;</p>
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
response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>