<%@ page language="java" import="java.util.*" contentType="text/html" errorPage="" %>
<%
String userType = (String) session.getAttribute("userType");
if(userType!=null && userType.equals("user")){
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
.withdraw_style1 {color: #CC3300}
-->
</style>
<title>e-COPS West Bengal :: Withdraw a Complain</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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

        <table width="50%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="42%" rowspan="3"><img src="images/mousecrime.jpg" width="230" height="220"></td>
            <td width="58%" colspan="2" bgcolor="#CEFFFA"><div align="center">
              <h2 class="withdraw_style1">Withdraw Complain </h2>
            </div></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#CBD3B6"><div align="center">      
			<form action="withdraw_complain_process.jsp" method="post" name="withdraw_complain" id="withdraw_complain">
			  <table width="77%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>Complain ID: </td>
                  <td><div align="right">
                    <input name="complain_id" type="text" id="complain_id">
                  </div></td>
                </tr>
                <tr>
                  <td colspan="2"><div align="center">
                    <input name="withdraw" type="submit" id="withdraw" value="Withdraw">
                    <input name="reset" type="reset" id="reset" value="Reset">
                  </div></td>
                  </tr>
              </table>
			</form></div></td>
          </tr>
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
