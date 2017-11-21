<style type="text/css">
<!--
body {
	background-image: url();
	margin-left: 1%;
	margin-top: 0px;
	margin-right: 1%;
	margin-bottom: 0px;
	background-color: #CCE1F9;
	background-repeat: no-repeat;
}
.style2 {
	color: #0033FF;
	font-size: 20px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style6 {color: #99FF00}
.login_heading_style1 {color: #FFCC33; font-size: 24px; }
.paragraph_heading {color: #A702CA}
.style7 {
	color: #996600;
	font-size: 36px;
	font-weight: bold;
}
.style12 {font-size: 24px}
.style13 {color: #2591FF}
.style19 {color: #CC6600}
.style21 {font-size: 24px; color: #CC6600; font-weight: bold; }
-->
</style>
<title>e-COPS West Bengal :: HOME</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
	  	 <tr>
          <td colspan="5" nowrap="nowrap">&nbsp;</td>
          </tr>
        <tr>
          <td width="7%" height="136" nowrap="nowrap"><div align="right"></div></td>
          <td width="22%" nowrap="nowrap"><form id="cops_login" name="cops_login" method="post" action="cops_login.jsp">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#3399CC">
              <tr>
                <td colspan="2"><div align="center" class="login_heading_style1">Cops Login </div></td>
                </tr>
              <tr>
                <td><span class="style6">User ID</span></td>
                <td><div align="right">
                  <input name="user_name" type="text" id="user_name" maxlength="15" />
                </div></td>
              </tr>
              <tr>
                <td class="style6">Password</td>
                <td><div align="right">
                  <input name="password" type="password" id="password" maxlength="20" />
                </div></td>
              </tr>
              <tr>
                <td colspan="2">
                  
                    <div align="right">
                      <input name="login" type="submit" id="login" value="Login&gt;&gt;" />  
                      <input name="reset" type="reset" id="reset" value="Reset" />
                    </div></td>
                </tr>
              <tr>
                <td colspan="2"><div align="center"><a href="cops_register.jsp">New? Register</a> <a href="forget.jsp"></a></div></td>
                </tr>
              <tr>
                <td colspan="2" bgcolor="#FFFFCC"><div align="center"> <%
					String message_cops = request.getParameter("msg_cops");
						if(message_cops!=null){
						out.print(message_cops);
						}
						%>
</div></td>
              </tr>
            </table>
                                        </form>          </td>
          <td width="42%"><div align="center">
            <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#EAFDD0">
              <tr>
                <td><div align="center" class="style2">
                  <h1 class="paragraph_heading">E Cops </h1>
                </div></td>
              </tr>
              <tr>
                <td><div align="center">
                  <p align="justify">E-cops is a technology for online service of police, its to comunicate between states police , exchange of data file and criminal record.... </p>
                </div></td>
              </tr>
            </table>
          </div></td>
          <td width="22%" nowrap="nowrap"><div align="right">
            <form id="user_login" name="user_login" method="post" action="user_login.jsp">
              <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#3399CC">
                <tr>
                  <td colspan="2"><div align="center" class="login_heading_style1">User Login </div></td>
                  </tr>
                <tr>
                  <td class="style6">User ID</td>
                  <td><div align="right">
                    <input name="user_name" type="text" id="user_name" maxlength="15" />
                  </div></td>
                </tr>
                <tr>
                  <td class="style6">Password</td>
                  <td><div align="right">
                    <input name="password" type="password" id="password" value="" maxlength="20" />
                  </div></td>
                </tr>
                <tr>
                  <td colspan="2">
                    
                      <div align="right">
                        <input name="login" type="submit" id="login" value="Login&gt;&gt;" />  
                        <input name="reset" type="reset" id="reset" value="Reset" />
                        </div></td>
                  </tr>
                <tr>
                  <td colspan="2"><div align="center"><a href="user_register.jsp">New? Register</a></div></td>
                  </tr>
                <tr>
                  <td colspan="2" bgcolor="#FFFFCC">
				  		<div align="center">
				  		  <%
					String message_user = request.getParameter("msg_user");
						if(message_user!=null){
						out.print(message_user);
						}
						%>	
		  		            </div></td>
                </tr>
              </table>
                </form>
            </div></td>
          <td width="7%" nowrap="nowrap">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="5" nowrap="nowrap"><p>&nbsp;</p>
            
              <div align="center"></div>
              <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p></td>
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
