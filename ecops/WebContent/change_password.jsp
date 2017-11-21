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
.style1 {color: #000066}
-->
</style>
<title>e-COPS West Bengal :: Change Password</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <table width="40%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="18%">&nbsp;</td>
          <td width="82%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><form action="change_passsword_process.jsp" method="post" name="change_password" id="change_password">
                              <div align="center">
                                <table width="80%" border="0" cellpadding="0" cellspacing="0" bgcolor="#E7E4DC">
                                  <tr>
                                    <td width="45%" bgcolor="#FFCC99">Old Password : </td>
                                    <td width="55%" bgcolor="#FFCC99"><div align="right">
                                      <input name="old_password" type="password" id="old_password">
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td bgcolor="#FFCC99">New Password : </td>
                                    <td bgcolor="#FFCC99"><div align="right">
                                      <input name="new_password" type="password" id="new_password">
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2" bgcolor="#FFCC99"><div align="right">
                                      <input name="change_password" type="submit" id="change_password" value="Change Password">
                                      <input name="reset" type="reset" id="reset" value="Reset">
                                    </div></td>
                                  </tr>
                                </table>
                </div>
          </form>
          </td>
        </tr>
      </table>
      <p>&nbsp;</p>
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
