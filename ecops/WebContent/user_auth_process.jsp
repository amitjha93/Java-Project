<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
Vector details = (Vector) session.getAttribute("cops_details");
if(details!=null){
	String typeUser = (String)details.get(5);
	if(typeUser.equals("admin")){
%>
<%
String status = request.getParameter("auth");
String user = request.getParameter("user");
logicDB.Jdbc j = new logicDB.Jdbc();
int result = j.processUser(user,status);
j.connClose();
	if(result==1){
	response.sendRedirect("user_auth.jsp?msg=Successfully Processed");
	}
	else{
	response.sendRedirect("user_auth.jsp?msg=Try again later");
	}
%>
<%
		}
		else{
		response.sendRedirect("cops_home.jsp?msg=You dont have admin power");
		}
}
else{
	response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>