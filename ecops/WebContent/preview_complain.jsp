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
.preview_style1 {color: #FF6633}
-->
</style>
<title>e-COPS West Bengal :: Report</title><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      <form action="preview_complain" method="post" name="preview_complain" id="preview_complain">
        <table width="30%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2" bgcolor="#BFEFFF"><div align="center">
              <h2 class="preview_style1">Preview Complain </h2>
            </div></td>
            </tr>
          <tr>
            <td width="39%" bgcolor="#CDCFBC">Report ID </td>
            <td width="61%" bgcolor="#CDCFBC"><div align="right">
              <input name="report_id" type="text" id="report_id">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#CDCFBC">Cops ID </td>
            <td bgcolor="#CDCFBC"><div align="right">
              <input name="cops_id" type="text" id="cops_id">
            </div></td>
          </tr>
          <tr>
            <td bgcolor="#CDCFBC">Date</td>
            <td bgcolor="#CDCFBC"><div align="right">
              <input name="date" type="text" id="date">
            </div></td>
          </tr>
          <tr>
            <td height="19" bgcolor="#CDCFBC">Report</td>
            <td bgcolor="#CDCFBC"><div align="right">
              <textarea name="report" cols="30" rows="5" id="report"></textarea>
            </div></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#CDCFBC">
              <div align="center">
                <input name="submit" type="submit" id="submit" value="Submit">
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
      </div></td>
  </tr>
  <tr>
    <td nowrap="nowrap">
      <div align="center">
      <%@ include file="footer.jsp"%>
    </div></td>
  </tr>
</table>
