<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
String userType = (String) session.getAttribute("userType");
if(userType!=null && userType.equals("user")){
%>
<%
String complainId = request.getParameter("complain_id");
	String userId = (String)((Vector)session.getAttribute("user_details")).get(0);
	int result = connection.withdraw(userId,complainId);
	connection.connClose();
	if(result==1){
	response.sendRedirect("user_home.jsp?msg=complain id "+complainId+" have been withdrawed.");
	}
	else{
	response.sendRedirect("user_home.jsp?msg=Cannot withdraw this complain, ID "+complainId);
	}
%>
<%
}
else{
response.sendRedirect("login.jsp?msg_user=Please Login");
}
%>
