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
.view_process_style1 {color: #808518}
-->
</style>
<title>e-COPS West Bengal :: View Report of Station</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <form action="report_details.jsp" method="post" name="view_process_report" id="view_process_report">
        <table width="23%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2" bgcolor="#E1B9C1"><div align="center">
              <h2 class="view_process_style1">View Process Report </h2>
            </div></td>
            </tr>
          <tr>
            <td bgcolor="#DEEEFE">Police Station: </td>
            <td bgcolor="#DEEEFE"><div align="right">
              <input name="police_station" type="text" id="police_station">
            </div></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#DEEEFE"><div align="right">
              <input name="view" type="submit" id="view" value="View">
            </div></td>
            </tr>
        </table>
        </form>
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