<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
	String reportID = request.getParameter("report_id");
	String copsID = request.getParameter("cops_id");
	String pr=request.getParameter("pr");
	String report = request.getParameter("report");
	
	int result = connection.submitReport(reportID,copsID,pr,report);
	connection.connClose();
	if(result==1){
	response.sendRedirect("processing.jsp?msg=Report submitted successfully&reportId="+reportID);
	}
	else{
	response.sendRedirect("processing.jsp?msg=Try again later&reportId="+reportID);
	}
%>