<%@page import="logicDB.Jdbc"%>
<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<%
	  Vector details = (Vector)session.getAttribute("cops_details");
	  if(details!=null){
%>
<title>e-COPS West Bengal :: Report Details and Status</title>
<style type="text/css">
<!--
.view_heading_style {
	font-size: 24px;
	color: #0F4D91;
}
.small_heading {
	font-size: 20px;
	color: #4B443D;
}
.preview_style1 {color: #FF6633}
-->
</style>
<body>
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
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
	  
	  
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
   

            
           
            
            <%
			String reportID = request.getParameter("reportId");
			logicDB.Jdbc connection=new logicDB.Jdbc();
			Vector report = connection.getReport(reportID);
				if(report.isEmpty()){
				connection.connClose();
				response.sendRedirect("cops_home.jsp?msg=No such Result Found");
				}
				else
				{
			Vector status = connection.getStatus(reportID);
			connection.connClose();
			%>
            
            

      
        <tr>
          <td><table width="100%" border="1" cellspacing="1" cellpadding="1">
            <caption class="small_heading">
              Processing details
            </caption>
            <tr>
              <td width="17%"><div align="center">Cop ID</div></td>
              <td width="16%"><div align="center">Investigation Date</div></td>
              <td width="23%"><div align="center">Progress</div></td>
              <td width="44%"><div align="center">Report</div></td>
            </tr>
          <%
		  for(int i=0;i<status.size();i++)
		  {
		  Vector indiv = (Vector) status.get(i);
		  %>  
            <tr>
              <td><div align="justify"><%= indiv.get(0) %></div></td>
              <td><div align="justify"><%= indiv.get(1) %></div></td>
              <td><div align="justify"><%= indiv.get(2) %></div></td>
              <td><div align="justify"><%= indiv.get(3) %></div></td>
            </tr>
          <%
		  }
		  %>
          </table></td>
        </tr>
      </table><%}%>
	  <%
	  String copsID = (String) details.get(0);
	  %>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form name="form1" method="post" action="process_cops_report.jsp">
            <div align="center">
              <table width="32%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td colspan="2" bgcolor="#BFEFFF"><div align="center">
                      <h2 class="preview_style1">New Report </h2>
                  </div></td>
                </tr>
                <tr>
                  <td width="39%" bgcolor="#CDCFBC">Report ID </td>
                  <td width="61%" bgcolor="#CDCFBC"><div align="right">
                      <input name="report_id" type="text" id="report_id" readonly="true" value="<%=reportID %>">
                  </div></td>
                </tr>
                <tr>
                  <td bgcolor="#CDCFBC">Cops ID </td>
                  <td bgcolor="#CDCFBC"><div align="right">
                      <input name="cops_id" type="text" id="cops_id" readonly="true" value="<%=copsID %>">
                  </div></td>
                </tr>
                <tr>
                  <td bgcolor="#CDCFBC">Date</td>
                  <td bgcolor="#CDCFBC"><div align="right">
                      <input name="date" type="text" id="date" readonly="true" value="<%= new java.util.Date()%>">
                  </div></td>
                </tr>
				<tr>
                  <td bgcolor="#CDCFBC">Progress</td>
                  <td bgcolor="#CDCFBC"><label>
                    <div align="right">
                      <input name="pr" type="text" id="pr">
                      </div>
                  </label></td>
                </tr>
                <tr>
                  <td height="19" bgcolor="#CDCFBC">Report</td>
                  <td bgcolor="#CDCFBC"><div align="right">
                      <textarea name="report" cols="30" rows="5" id="report"></textarea>
                  </div></td>
                </tr>
                <tr>
                  <td colspan="2" bgcolor="#CDCFBC"><div align="center">
                      <input name="submit" type="submit" id="submit" value="Submit">
                  </div></td>
                </tr>
                
              </table>
            </div>
          </form>
          </td>
        </tr>
      </table>
      </div></td>
  </tr>
  <tr>
    <td nowrap="nowrap"><div align="center">
      <%@ include file="footer.jsp"%>
    </div></td>
  </tr>
</table>
</body>
</html>
<%
}
else{
response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>