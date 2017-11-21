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
.new_user_style1 {color: #00AFEA}
-->
</style>

<script language = "Javascript" type="text/javascript" src="files/userValidation.js">
</script>
          

<title>e-COPS West Bengal :: New User Registration</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    <td height="133" nowrap="nowrap" background="images/back_blue.png"><div align="center">
      <form action="user_register_process.jsp" method="post" name="user_registration" id="user_registration" onsubmit="return ValidateForm()">
        <table width="27%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="2">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="2" bgcolor="#FFE0C1"><div align="center">
              <h2 class="new_user_style1">New User Registration</h2>
            </div></td>
            </tr>
          <tr>
            <td width="35%" bgcolor="#FFE0C1">User Name </td>
            <td width="65%" bgcolor="#FFE0C1"><div align="right">
              <input name="user_name" type="text" id="user_name" maxlength="15">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#FFE0C1">Password</td>
            <td bgcolor="#FFE0C1"><div align="right">
              <input name="password" type="password" id="password" maxlength="20">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#FFE0C1">Name</td>
            <td bgcolor="#FFE0C1"><div align="right">
              <input name="name" type="text" id="name" maxlength="50">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#FFE0C1">Email Address </td>
            <td bgcolor="#FFE0C1"><div align="right">
            
              <input name="email" type="text" id="email" maxlength="50">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#FFE0C1">Phone </td>
            <td bgcolor="#FFE0C1"><div align="right">
              <input name="phone" type="text" id="phone" maxlength="12">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#FFE0C1">Address</td>
            <td bgcolor="#FFE0C1"><div align="right">
                <textarea name="address" rows="3" id="address"></textarea>
            </div></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#FFE0C1"><div align="right">
              <input name="register" type="submit" id="register" value="Register" >
              <input name="reset" type="reset" id="reset" value="Reset">
            </div></td>
            </tr>
          <tr>
            <td colspan="2">
				<div align="center">
				  <%
					String message = request.getParameter("msg");
						if(message!=null){
						out.print("<font color='red'>");
						out.print(message);
						out.print("</font>");
						}
				%>	
		          </div></td>
            </tr>
        </table>
        </form>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
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
