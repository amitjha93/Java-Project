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
.login_heading_style1 {color: #FFCC33; font-size: 24px; }
.paragraph_heading {color: #A702CA}
.style7 {
	color: #996600;
	font-size: 36px;
	font-weight: bold;
}
.style12 {font-size: 24px;
color:#CC0033;}
.index_style {color: #2591FF}
.memeber_style {color: #CC6600; font-size: 24px; }
.mem_heading {color: #CC0000; font-size:28px; text-decoration:blink}
.style25 {font-size: 24px}
-->
</style>
<title>e-COPS West Bengal :: HOME</title>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
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
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
	  	 <tr>
          <td colspan="4" nowrap="nowrap"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3"><div align="center"> <a href="login.jsp" class="mem_heading">Member's Area Login </a></div>
                </td>
            </tr>
            <tr>
              <td width="5%">&nbsp;</td>
              <td width="90%"><div align="center">
                <table width="30%" height="19" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td bgcolor="#F0DFB7"><div align="center">
                            <%
					String message1 = request.getParameter("msg");
					if(message1 !=null)
					out.print(message1);
					%>
                          </div></td>
                        </tr>
                      </table>
                    </div></td>
                  </tr>
                </table>
              </div></td>
              <td width="5%">&nbsp;</td>
            </tr>
            
          </table>            </td>
          </tr>
        
        <tr>
          <td colspan="4" nowrap="nowrap"><div align="center">
                <table width="90%" border="0" align="center" cellpadding="4" cellspacing="1">
                  <tr>
                    <td width="30%" bgcolor="#003366"><div align="center" class="style7">
                        <div align="justify" class="style12">
                          <div align="center" class="memeber_style">When to use this service</div>
                        </div>
                    </div></td>
                    <td width="30%" bgcolor="#003366"><div align="center"><span class="memeber_style">When not to use this service</span><br />
                    </div></td>
                    <td width="30%" bgcolor="#003366"><div align="center"><span class="memeber_style">Notes to user</span><br />
                    </div></td>
                  </tr>
                  <tr>
                    <td width="30%" height="559" bgcolor="#330000"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><p align="justify" class="index_style"><br />You can use this service to notify the Metropolitan Police of the following <br />
                          crimes / incidents committed within the West Bengal Authority area.</p>
                          <p align="justify" class="index_style"> * Theft - excluding:<br />
                            o Robbery (where you or the person you are reporting for was <br />
                            subjected to violence or the threat of violence.<br />
                            o Burglary (a building has been broken into).<br />
                            * Criminal damage<br />
                            * Theft from a motor vehicle<br />
                            * Criminal damage to a motor vehicle<br />
                            * Hate crimes and hate incidents</p>
                          <p class="index_style">For any other type of non-emergency crime / incident please call your local police station to report. If you are unable to call your local police station, then you may visit the station during its opening hours.</p>
                          <p><span class="index_style">PLEASE NOTE: It is important that you provide full details of how we can contact you. Especially important is a contact telephone number and a time when you will be on that number. An investigator will contact you to discuss the contents of this report to update the investigation</span>.</p></td>
                      </tr>
                    </table></td>
                    <td width="30%" bgcolor="#330000"><div align="justify">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><p class="index_style">* The police service is ready to help you, with trained call operators available 24 hours a day. It is important that you do not use this service to report any other crime / incident or if the crime / incident is serious (i.e involves vulnerable, elderly or young victims or it is of a violent or sexual nature)<br />
                            * The crime / incident is happening now<br />
                            * The offender is still there or nearby<br />
                            * Someone saw the crime / incident being committed<br />
                            * Evidence has been left at the scene<br />
                            * The incident is a road traffic collision ( accident ) </p>
                            <p class="index_style">&nbsp;</p>
                            <p class="index_style">&nbsp;</p>
                            <p class="index_style">&nbsp;</p>
                            <p class="index_style">&nbsp;</p>
                            <p class="index_style">&nbsp;</p>
                            <p class="index_style">&nbsp;</p>
                            <p class="index_style">&nbsp;</p>
                            </td>
                        </tr>
                      </table>
                      <span class="index_style">
                    </span></div></td>
                    <td width="30%" bgcolor="#330000"><div align="center" class="index_style">
                      <div align="justify">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><p class="index_style">* The police service is ready to help you, with trained call operators available 24 hours a day. It is important that you do not use this service to report any other crime / incident or if the crime / incident is serious (i.e involves vulnerable, elderly or young victims or it is of a violent or sexual nature)<br />
                              * The crime / incident is happening now<br />
                              * The offender is still there or nearby<br />
                              * Someone saw the crime / incident being committed<br />
                              * Evidence has been left at the scene<br />
                              * The incident is a road traffic collision ( accident ) Please visit our road traffic pages for further information )</p>
                              <p>&nbsp;</p>
                              <p>&nbsp;</p>
                              <p>&nbsp;</p>
                              <p>&nbsp;</p>
                              <p>&nbsp;</p>
                              <p>&nbsp;</p></td>
                          </tr>
                        </table>
                      </div>
                    </div></td>
                  </tr>
                </table>
              </div>
                </td>
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
