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
.new_user_style1 {
	font-family: Arial, Helvetica, sans-serif;
	color: #E85F0D;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
-->
</style>


<title>e-COPS West Bengal :: New User</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="303" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <form action="user_auth" method="post" name="user_auth" id="user_auth">
        <table width="70%" border="1" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="7" bgcolor="#D7EAE8"><div align="center">
              <h2 class="new_user_style1">New Users List </h2>
            </div></td>
            </tr>
          <tr>
		  <td width="15%" bgcolor="#DDDDFF"><div align="center">User ID </div></td>
            <td width="15%" bgcolor="#DDDDFF"><div align="center">Name</div></td>
            <td width="25%" bgcolor="#DDDDFF"><div align="center">Address</div></td>
            <td width="15%" bgcolor="#DDDDFF"><div align="center">Phone</div></td>
            <td width="15%" bgcolor="#DDDDFF"><div align="center">Email</div></td>
            
            <td width="15%" colspan="2" bgcolor="#DDDDFF"><div align="center">Authentication</div></td>
          </tr>
    <%
	Vector v = connection.newUsers();
	connection.connClose();
	for(int i=0;i<v.size();i++)
	{
	Vector invid = (Vector) v.get(i);
	%>
	
          <tr>
		  	<td height="42" bgcolor="#DDDDFF"><div align="center"><%= invid.get(0) %></div></td>
            <td bgcolor="#DDDDFF"><div align="center"><%= invid.get(1) %></div></td>
            <td width="25%" bgcolor="#DDDDFF"><div align="center"><%= invid.get(2) %></div></td>
            <td width="15%" bgcolor="#DDDDFF"><div align="center"><%= invid.get(3) %></div></td>
            <td bgcolor="#DDDDFF"><div align="center"><%= invid.get(4) %></div></td>
            
            <td bgcolor="#DDDDFF"><a href="user_auth_process.jsp?auth=approved&user=<%= invid.get(0) %>"><img src="images/inpage-correct_tick.jpg" width="40" height="40" border="0" /></a>
              <div align="center"></div></td>
            <td bgcolor="#DDDDFF"><a href="user_auth_process.jsp?auth=rejected&user=<%= invid.get(0) %>"><img src="images/cross.png" width="40" height="40" border="0" /></a></td>
            <td bgcolor="#DDDDFF"><div align="center"></div></td>
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