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
.new_cops_style1 {color: #286C33}
.style_new_cops1 {color: #286C33; font-family: "Courier New", Courier, monospace; }
.style_new1 {
	font-size: 24px;
	color: #286C33;
	font-family: "Courier New", Courier, monospace;
}
-->
</style>



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
      <form action="cops_auth" method="post" name="cops_auth" id="cops_auth">
        <table width="91%" border="1" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="10" bgcolor="#FFFFEC"><div align="center" class="style_new1">              New Cops Lists </div></td>
            </tr>
          <tr>
            <td width="10%" bgcolor="#E9E9E9"><div align="center">Cops ID </div></td>
            <td width="10%" bgcolor="#E9E9E9"><div align="center">Name</div></td>
            <td width="20%" bgcolor="#E9E9E9"><div align="center">Address</div></td>
            <td width="10%" bgcolor="#E9E9E9"><div align="center">Phone</div></td>
            <td width="10%" bgcolor="#E9E9E9"><div align="center">Email</div></td>
            <td width="10%" bgcolor="#E9E9E9"><div align="center">Posting</div></td>
            <td width="10%" bgcolor="#E9E9E9"><div align="center">Designation</div></td>
            <td width="10%" colspan="2" bgcolor="#E9E9E9"><div align="center">Authentication</div></td>
          </tr>
         <%
		 Vector v = connection.newCops();
		connection.connClose();
		for(int i=0;i<v.size();i++)
		{
		Vector invid = (Vector) v.get(i);
		 %>
          <tr>
		  <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(0) %></div></td>
            <td height="42" bgcolor="#E9E9E9"><div align="center"><%= invid.get(1) %></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(2) %></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(3) %></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(4) %></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(5) %></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><%= invid.get(6) %></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><a href="cops_auth_process.jsp?auth=approved&user=<%= invid.get(0) %>"><img src="images/inpage-correct_tick.jpg" width="40" height="40" border="0" /></a></div></td>
            <td bgcolor="#E9E9E9"><div align="center"><a href="cops_auth_process.jsp?auth=rejected&user=<%= invid.get(0) %>"><img src="images/cross.png" width="40" height="40" border="0" /></a></div></td>
          </tr>
          <%
		  }
		  %>
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
		response.sendRedirect("cops_home.jsp?msg=You dont have admin power");
		}
}
else{
	response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>