<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
Vector details = (Vector) session.getAttribute("cops_details");
if(details!=null){
	String typeUser = (String)details.get(5);
	if(typeUser.equals("admin")){
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
.style_new1 {	font-size: 24px;
	color: #286C33;
	font-family: "Courier New", Courier, monospace;
}
-->
</style>
<title>e-COPS West Bengal :: Make New Admin</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <table width="91%" border="1" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="10" bgcolor="#FFFFEC"><div align="center" class="style_new1"> All Cops Lists </div></td>
        </tr>
        <tr>
          <td width="11%" bgcolor="#E9E9E9"><div align="center">Cops ID </div></td>
          <td width="14%" bgcolor="#E9E9E9"><div align="center">Name</div></td>
          <td width="23%" bgcolor="#E9E9E9"><div align="center">Address</div></td>
          <td width="11%" bgcolor="#E9E9E9"><div align="center">Phone</div></td>
          <td width="11%" bgcolor="#E9E9E9"><div align="center">Email</div></td>
          <td width="12%" bgcolor="#E9E9E9"><div align="center">Posting</div></td>
          <td width="7%" bgcolor="#E9E9E9"><div align="center">Designation</div></td>
          <td width="11%" bgcolor="#E9E9E9"><div align="center">Make Admin </div></td>
        </tr>
        <%
		 Vector v = connection.allCops();
		connection.connClose();
		for(int i=0;i<v.size();i++)
		{
		Vector invid = (Vector) v.get(i);
		 %>
        <tr>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(0) %></div></td>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(1) %></div></td>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(2) %></div></td>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(3) %></div></td>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(4) %></div></td>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(5) %></div></td>
          <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(6) %></div></td>
          <td bgcolor="#E9E9E9"><%String thisUserType = (String)invid.get(7); if(thisUserType.equals("nonadmin")){%>
		  <div align="center"><a href="newAdminProcess.jsp?cid=<%= invid.get(0) %>">Make Admin</a> </div>
		  <%}%></td>
        </tr>
        <%
		  }
		  %>
      </table>
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
		response.sendRedirect("cops_home.jsp?msg=You dont have admin power");
		}
}
else{
	response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>