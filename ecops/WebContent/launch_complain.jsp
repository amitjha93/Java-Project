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
.launch_complain_style1 {color: #AE5700}
-->
</style>

<title>e-COPS West Bengal :: Report a Complain</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="357" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10%">&nbsp;</td>
          <td width="22%" nowrap background="images/internet_lnch.jpg"><img src="images/internet_lnch.jpg" width="406" height="336"></td>
          <td width="32%" background="images/internet_lnch.jpg"><div align="center">
            <table width="350" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td nowrap bgcolor="#CEFFFA"><div align="center">
                  <h1 class="launch_complain_style1">Launch Complain </h1>
                </div></td>
              </tr>
              <tr>
                <td><div align="center">
                  <form action="launch_complain_process.jsp" method="post" name="launch_complain" id="launch_complain">
                    <table width="350" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CCDDD9">
                      <tr>
                        <td nowrap="nowrap">Date</td>
                        <td nowrap="nowrap"><label>
                            <div align="right">
                              <input name="date" type="text" id="date" value="<%=new Date() %>" size="28" readonly="true" />
                            </div>
                          </label></td>
                      </tr>
                      <tr>
                        <td width="116" nowrap>User_ID</td>
                        <td width="191" nowrap><label>
                          <div align="right">
                            <input name="user_id" type="text" id="user_id" readonly="true" value="<%=v.get(0) %>">
                            </div>
                        </label></td>
                      </tr>
                      <tr>
                        <td nowrap>Report_ID</td>
                        <td nowrap><label>
                          <div align="right">
                            <input name="report_id" type="text" id="report_id" readonly="true" value="<%="RID"+(long)(Math.random()*1005656500)%>">
                            </div>
                        </label></td>
                      </tr>
                      <tr>
                        <td nowrap>Type</td>
                        <td nowrap><label>
                          <div align="right">
                            <input name="type" type="text" id="type" readonly="true" value="Complain">
                            </div>
                        </label></td>
                      </tr>
                      <tr>
                        <td nowrap="nowrap">Police Station </td>
                        <td nowrap="nowrap"><label>
                            <div align="right">
                              <input name="police_station" type="text" id="police_station" />
                            </div>
                          </label></td>
                      </tr>
                      <tr>
                        <td nowrap>Complain</td>
                        <td nowrap><label>
                          <div align="right">
                            <textarea name="complain" id="complain"></textarea>
                            </div>
                        </label></td>
                      </tr>
                      <tr>
                        <td colspan="2" nowrap><div align="center">
                            <label>
                            <input name="launch" type="submit" id="launch" value="Launch">
                            </label>
                            <label>
                            <input name="reset" type="reset" id="reset" value="Reset">
                            </label>
                        </div></td>
                      </tr>
                      <tr>
                        <td colspan="2" nowrap><div align="center"><%
					String message = request.getParameter("msg");
						if(message!=null){
						out.print(message);
						}
						%></div></td>
                      </tr>
                    </table>
                        </form>
                  </div></td>
              </tr>
            </table>
          </div></td>
          <td width="26%">&nbsp;</td>
          <td width="10%" nowrap>&nbsp;</td>
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
    <td height="18" nowrap="nowrap">
      <div align="center">
      <%@ include file="footer.jsp"%>
    </div></td>
  </tr>
</table>
<%
}else{
response.sendRedirect("login.jsp?msg_user=Please Login");
}
%>