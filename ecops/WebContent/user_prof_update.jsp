<%@ page language="java" import="java.util.*" contentType="text/html" errorPage="" %>
<%
	Vector v=(Vector)session.getAttribute("user_details");
	if(v!=null){
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
.cops_home_style1 {color: #0000CC}
-->
</style>

<title>e-COPS West Bengal :: Update Profile</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <table width="60%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="23%">&nbsp;</td>
          <td width="77%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td><script language="javascript" type="text/javascript" src="files/user_update_validate.js"></script>
          <td><form action="user_prof_update_process.jsp" method="post" name="user_prof_update" id="user_prof_update" onsubmit="return ValidateForm()">
            <table width="60%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#476698" bgcolor="#B7C5DD">
              <tr>
                <td colspan="2"><div align="center">
                    <h1 class="cops_home_style1">User Profile </h1>
                </div></td>
              </tr>
              <tr>
                <td width="28%">User ID </td>
                <td width="72%"><label></label>
                  <div align="right">
                    <input name="user_name" type="text" id="user_name" value="<%= v.get(0) %>" maxlength="15" readonly="true">
                  </div></td>
              </tr>
              <tr>
                <td>Name</td>
                <td><label></label>
                  <div align="right">
                    <input name="name" type="text" id="name" value="<%= v.get(2) %>" maxlength="50" >
                  </div></td>
              </tr>
              <tr>
                <td>Phone</td>
                <td><label></label>
                  <div align="right">
                    <input name="phone" type="text" id="phone" maxlength="12" value="<%= v.get(4)%>">
                  </div></td>
              </tr>
              <tr>
                <td>Email</td>
                <td><label></label>
                  <div align="right">
                    <input name="email" type="text" id="email" value="<%= v.get(3) %>" maxlength="50">
                  </div></td>
              </tr>
              <tr>
                <td>Address</td>
                <td><label></label>
                    <div align="right">
                      <textarea name="address" id="address"><%=v.get(5) %></textarea>
                  </div></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                  <input name="update_profile" type="submit" id="update_profile" value="Update Profile">
                </div></td>
                </tr>
            </table>
                                        </form>
          </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
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