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
.contact_style1 {
	color: #3399FF;
	font-family: Georgia, "Times New Roman", Times, serif;
}
-->
</style>
<title>e-COPS West Bengal :: Contact Us</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="516" nowrap="nowrap" background="images/at-gold-background.jpg"><div align="center">
      <form action="contactus_process.jsp" method="post" name="contactus" id="contactus">
                  <div align="right">
                    <table width="45%" border="0" align="right" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2"><div align="center">
                            <h2 class="contact_style1">Contact Us </h2>
                        </div></td>
                      </tr>
                      <tr>
                        <td width="50%">Name</td>
                        <td width="50%">
                          <div align="left">
                            <input name="name" type="text" id="name">
                          </div></td></tr>
                      <tr>
                        <td>Email ID </td>
                        <td>
                          <div align="left">
                            <input name="email" type="text" id="email">
                          </div></td></tr>
                      <tr>
                        <td>Contact No.</td>
                        <td>
                          <div align="left">
                            <input name="phone" type="text" id="phone" maxlength="12">
                          </div></td></tr>
                      <tr>
                        <td>Address</td>
                        <td><div align="left">
                            <textarea name="address" cols="50" rows="2" id="address"></textarea>
                        </div></td>
                      </tr>
                      <tr>
                        <td>Question / Query </td>
                        <td><div align="right">
                          <textarea name="query" cols="50" rows="10" id="query"></textarea>
                        </div></td>
                      </tr>
                      <tr>
                        <td height="24"><div align="right"></div></td>
                        <td height="24"><input type="submit" name="Submit" value="Submit">
                          <input name="reset" type="reset" id="reset" value="Reset"></td>
                      </tr>
                    </table>
          </div>
      </form>
      <table align="right" width="30%">
			<tr align="center" bgcolor="#FFCC00"><%
			String message = request.getParameter("msg");
			if(message!=null){
			out.print(message);
			}
			%>
			</tr>
	  </table>
      <p align="right">&nbsp;</p>
      <p>&nbsp;</p>
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
