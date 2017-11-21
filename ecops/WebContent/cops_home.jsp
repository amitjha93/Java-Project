<%@ page language="java" import="java.util.*" contentType="text/html" errorPage="" %>
<%
Vector v = (Vector) session.getAttribute("cops_details");
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
.cops_home_style1 {color: #0000CC; text-decoration:underline}
-->
</style>

<title>e-COPS West Bengal :: Home Welcome <%= (String)v.get(2)%></title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="265" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10%">&nbsp;</td>
          <td width="80%"><div align="center">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="42%" height="133" rowspan="2"><div align="center">
                    <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><div align="center">
                            <form action="" method="post" name="userForm" id="userForm">
                              <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#CBA385" bgcolor="#B7C5DD">
                                <tr>
                                  <td colspan="2" bgcolor="#CC99FF"><div align="center">
                                    <h1 class="cops_home_style1">PROFILE</h1>
                                  </div></td>
                                </tr>
                                <tr>
                                  <td width="28%" bgcolor="#996633">User ID </td>
                                  <td width="72%" bgcolor="#996633"><%=v.get(0) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Name</td>
                                  <td bgcolor="#996633"><%=v.get(2) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Address</td>
                                  <td bgcolor="#996633"><%=v.get(8) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Phone</td>
                                  <td bgcolor="#996633"><%=v.get(3) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Email</td>
                                  <td bgcolor="#996633"><%=v.get(4) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Type</td>
                                  <td bgcolor="#996633"><%=v.get(5) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Posting</td>
                                  <td bgcolor="#996633"><%=v.get(6) %></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#996633">Designation</td>
                                  <td bgcolor="#996633"><%=v.get(7) %></td>
                                </tr>
                                <tr>
                                  <td colspan="2" bgcolor="#979CB7"><div align="center"><a href="change_password.jsp">Change Password.</a> <a href="cops_prof_update.jsp">Update Profile.</a></div></td>
                                  </tr>
                                <tr>
                                  <td colspan="2" bgcolor="#F5D965"><div align="center"><span style="vertical-align:top">
                                    <%
				String message = request.getParameter("msg");
					if(message!=null)
					out.print(message);
				%>
                                  </span></div></td>
                                  </tr>
                              </table>
                            </form>
                        </div></td>
                      </tr>
                
                    </table>
                </div></td>
                <td width="58%"><div align="center">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><div align="center">
                          <table width="60%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td bgcolor="#FF9900"><div align="center"><a href="view_complain.jsp">View Complain </a></div></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#FF9933"><div align="center"><a href="complain_process.jsp">Complain Process Report</a></div></td>
                                </tr>
								<tr>
                                  <td bgcolor="#FF9900"><div align="center"><a href="view_process_report.jsp">View Process Report By Station</a></div></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                                </table>
                        </div></td>
                      </tr>
                      <tr>
                        <td><div align="center">
						<%String userType = (String)v.get(5); if(userType.equals("admin")){%>
                          <table width="60%" border="0" cellpadding="0" cellspacing="0" bgcolor="#CAEFFB">
                                <tr>
                                  <td bgcolor="#FF9900"><div align="center"><a href="user_auth.jsp">User Register Approved </a></div></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#FF9900"><div align="center"><a href="cops_auth.jsp">Cops Register Approved </a></div></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#FF9900"><div align="center"><a href="newAdmin.jsp">Make New Admin</a></div></td>
                                </tr>
                                </table>
						<%}%>		
                        </div></td>
                      </tr>
                    </table>
                </div></td>
              </tr>
            </table>
          </div></td>
          <td width="10%">&nbsp;</td>
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
}//ens od if check
else{
response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>
