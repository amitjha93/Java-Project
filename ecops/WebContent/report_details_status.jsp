<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<title>e-COPS West Bengal :: Report Details and Status</title>
<style type="text/css">
<!--
.view_heading_style {
	font-size: 24px;
	color: #0F4D91;
}
.small_heading {
	font-size: 20px;
	color: #4B443D;
}
-->
</style>
<body>
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
    <td nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <caption>
          <span class="view_heading_style">Report Details And Status</span>
        </caption>
        <tr>
          <td><table width="100%" border="1" cellspacing="1" cellpadding="1">
            <caption>
              <span class="small_heading">Report Details              </span>
            </caption>
            <tr>
              <td width="13%"><div align="center">Report ID</div></td>
              <td width="15%"><div align="center">User ID</div></td>
              <td width="10%"><div align="center">Station Name</div></td>
              <td width="9%"><div align="center">Report Date</div></td>
              <td width="6%"><div align="center">Type</div></td>
              <td width="47%"><div align="center">Complain Details </div></td>
            </tr>
            
            <%
			String reportID = request.getParameter("reportID");
			Vector report = connection.getReport(reportID);
				if(report.isEmpty()){
				connection.connClose();
				response.sendRedirect("cops_home.jsp?msg=No such Result Found");
				}
			Vector status = connection.getStatus(reportID);
			connection.connClose();
			%>
            
            <tr>
              <td><div align="justify"><%= report.get(0) %></div></td>
              <td><div align="justify"><%= report.get(1) %></div></td>
              <td><div align="justify"><%= report.get(2) %></div></td>
              <td><div align="justify"><%= report.get(3) %></div></td>
              <td><div align="justify"><%= report.get(4) %></div></td>
              <td><div align="justify"><%= report.get(5) %></div></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><table width="100%" border="1" cellspacing="1" cellpadding="1">
            <caption class="small_heading">
              Processing details
            </caption>
            <tr>
              <td width="17%"><div align="center">Cop ID</div></td>
              <td width="21%"><div align="center">Investigation Date</div></td>
              <td width="22%"><div align="center">Progress</div></td>
              <td width="40%"><div align="center">Report</div></td>
            </tr>
          <%
		  for(int i=0;i<status.size();i++)
		  {
		  Vector indiv = (Vector) status.get(i);
		  %>  
            <tr>
              <td><div align="justify"><%= indiv.get(0) %></div></td>
              <td><div align="justify"><%= indiv.get(1) %></div></td>
              <td><div align="justify"><%= indiv.get(2) %></div></td>
              <td><div align="justify"><%= indiv.get(3) %></div></td>
            </tr>
          <%
		  }
		  %>
          </table></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div></td>
  </tr>
  <tr>
    <td nowrap="nowrap"><div align="center">
      <%@ include file="footer.jsp"%>
    </div></td>
  </tr>
</table>
</body>
</html>
