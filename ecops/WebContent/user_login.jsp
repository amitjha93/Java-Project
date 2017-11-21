<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />

<%
	String user_name = request.getParameter("user_name");
	String password = request.getParameter("password");
	
	Vector v =	connection.userLogin(user_name,password);
	connection.connClose();
	
	if(!v.isEmpty())
	{
		String status = (String)v.get(6);
		if(status.equals("approved")){
		session.setAttribute("user_details",v);
		session.setAttribute("userType","user");
		response.sendRedirect("user_home.jsp");
		}
		else
		{
		response.sendRedirect("login.jsp?msg_user=Waiting for approval");
		}
	}
	else
		{
		response.sendRedirect("login.jsp?msg_user=Enter correct user name or password[?]");
		}
%>