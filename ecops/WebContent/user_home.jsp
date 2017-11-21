<%@ page language="java" import="java.util.*" contentType="text/html" errorPage="" %>
<%
Vector v = (Vector) session.getAttribute("user_details");
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
.user_home_style1 {color: #0000FF; text-decoration:underline}
-->
</style>

<title>e-COPS West Bengal :: Home</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <div align="center">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
		  <td width="10%" nowrap>&nbsp;</td>
            <td width="42%" height="133"><div align="center">
                <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center">
                        <form action="" method="post" name="userForm" id="userForm">
                          <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#467286" bgcolor="#A6C2D0">
                            <tr>
                              <td colspan="2" nowrap><div align="center">
                                <h1 class="user_home_style1">PROFILE</h1>
                              </div></td>
                            </tr>
                            <tr>
                              <td width="29%">User ID </td>
                              <td width="71%"><label><%=v.get(0) %></label></td>
                            </tr>
                            <tr>
                              <td>Name</td>
                              <td width="71%"><label><%=v.get(2) %></label></td>
                            </tr>
                            <tr>
                              <td>Address</td>
                              <td><label><%=v.get(5) %></label></td>
                            </tr>
                            <tr>
                              <td>Phone</td>
                              <td><label><%=v.get(4) %></label></td>
                            </tr>
                            <tr>
                              <td>Email</td>
                              <td><label><%=v.get(3) %></label></td>
                            </tr>
                            <tr>
                              <td colspan="2" bgcolor="#9BA7C6"><div align="center"><a href="change_password.jsp">Change Password.</a> <a href="user_prof_update.jsp">Update Profile.</a></div></td>
                              </tr>
                          </table>
                        </form>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="19"><div align="center">
                      <table width="60%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td bgcolor="#FFCC66"><div align="center"><span style="vertical-align:top">
                            <%
				String message = request.getParameter("msg");
					if(message!=null)
					out.print(message);
				%>
                          </span></div></td>
                        </tr>
                      </table>
                    </div></td>
                  </tr>
                </table>
            </div></td>
            <td width="38%" nowrap><div align="center">
                <table width="50%" border="0" cellpadding="0" cellspacing="0" bgcolor="#D5C6D7">
                  <tr>
                    <td><div align="center"><a href="launch_complain.jsp">Launch Complain </a></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><a href="withdraw_complain.jsp">Withdraw Complain </a></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><a href="view_progress.jsp">View Complain progress </a></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><a href="show_all_complains.jsp">View all Complains</a> </div></td>
                  </tr>
                </table>
            </div></td>
            
            <td width="10%" nowrap>&nbsp;</td>
          </tr>
        </table>
      </div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><p>&nbsp;</p>
            <p>&nbsp;</p></td>
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
}//end of if check
else{
response.sendRedirect("login.jsp?msg_user=Please Login");
}
%>
