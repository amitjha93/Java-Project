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
.new_cops_style1 {color: #00AFEA; font-size: 18px;}
-->
</style>
<title>e-COPS West Bengal :: New Cops Register</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="365" nowrap="nowrap" background="images/back_blue.png"><div align="center">
    <script language="javascript" type="text/javascript" src="files/copsValidation.js"></script>
      <form action="cops_register_process.jsp" method="post" name="cops_registration" id="cops_registration" onsubmit="return ValidateForm()">
	  <table width="27%" height="0" border="0" align="center" cellpadding="00" cellspacing="0">
                <!--DWLayoutTable-->
				<tr>
            <td colspan="2">&nbsp;</td>
            </tr>
			<tr>
            <td colspan="2" bordercolor="#FF9A35" bgcolor="#FFE0C1"><div align="center" class="new_cops_style1">
              <h2>New Cops Registration</h2>
            </div></td>
            </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">User Name </td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                    <div align="right">
                      <input name="user_name" type="text" id="user_name" maxlength="15">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Password</td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                    <div align="right">
                      <input name="password" type="password" id="password" maxlength="20">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Name</td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                    <div align="right">
                      <input name="name" type="text" id="name" maxlength="50">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Email</td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                    <div align="right">
                      <input name="email" type="text" id="email" maxlength="50">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Phone. </td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                    <div align="right">
                      <input name="phone" type="text" id="phone" maxlength="12">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Posting</td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                    <div align="right">
                      <input name="posting" type="text" id="posting">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Designation</td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><div align="right">
                    <label>
                    <input name="designation" type="text" id="designation" maxlength="10" />
                    </label>
                  </div></td>
                </tr>
                <tr>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1">Address</td>
                  <td bordercolor="#FF9A35" bgcolor="#FFE0C1"><label>
                      <div align="right">
                        <textarea name="address" id="address"></textarea>
                      </div>
                    </label></td>
                </tr>
                <tr>
                  <td height="19" colspan="2" bordercolor="#FF9A35" bgcolor="#FFE0C1"><div align="right">
                    <input name="register" type="submit" id="register" value="Register">
                    <input name="reset" type="reset" id="reset" value="Reset">
                  </div></td>
                </tr>
				<tr>
            <td colspan="2"><div align="center"><%
					String message = request.getParameter("msg");
						if(message!=null){
						out.print("<font color='red'>");
						out.print(message);
						out.print("</font>");
						}
				%>	</div></td>
            </tr>
          </table>
        </form>
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
