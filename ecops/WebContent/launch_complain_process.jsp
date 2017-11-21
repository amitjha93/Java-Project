<%@ page language="java" import="java.sql.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
String userType = (String) session.getAttribute("userType");
if(userType!=null && userType.equals("user")){
String date = request.getParameter("date");
	String user_id = request.getParameter("user_id");
	String report_id = request.getParameter("report_id");
	String type = request.getParameter("type");
	String police_station = request.getParameter("police_station");
	String complain = request.getParameter("complain");

int result=	connection.complainRegister(date,user_id,report_id,type,police_station,complain);
	connection.connClose();
		if(result==1){
		response.sendRedirect("user_home.jsp?msg=Complain Launched Successfully,id: "+report_id);
		}
		else{
		response.sendRedirect("launch_complain.jsp?msg=Some error occoured!");
		}
}//end of session checking
else{
response.sendRedirect("login.jsp?msg_user=Please Login");
}
%>
