<%@ page language="java" contentType="text/html" errorPage="" %>
<%
String userType = (String) session.getAttribute("userType");
if(userType!=null){
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
.view_style1 {color: #0066FF}
-->
</style>
<title>e-COPS West Bengal :: View Progress</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="186" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <form action="view_report_details.jsp" method="post" name="view_progress" id="view_progress">
        <table width="34%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2" nowrap bgcolor="#9A9BC0"><div align="center">
              <h2 class="view_style1">View Progress / Ststus of Complain </h2>
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#B5C1BD"><div align="right">Report ID:</div></td>
            <td nowrap bgcolor="#B5C1BD"><input name="report_id" type="text" id="report_id"></td>
          </tr>
          <tr>
            <td colspan="2" nowrap bgcolor="#B5C1BD"><div align="center">
              <input name="view" type="submit" id="view" value="View">
              <input name="reset" type="reset" id="reset" value="Reset">
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
response.sendRedirect("login.jsp");
}
%>