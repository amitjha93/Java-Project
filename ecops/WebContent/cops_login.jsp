<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />

<%
	String cops_name = request.getParameter("user_name");
	String password = request.getParameter("password");
	
	Vector v =	connection.copsLogin(cops_name,password);
	connection.connClose();
	
	if(!v.isEmpty())
	{
		String status = (String)v.get(9);
		if(status.equals("approved")){
		session.setAttribute("cops_details",v);
		session.setAttribute("userType","cops");
		response.sendRedirect("cops_home.jsp");
		}
		
		else
		{
		response.sendRedirect("login.jsp?msg_cops=Waiting for approval");
		}
	}
	else
		{
		response.sendRedirect("login.jsp?msg_cops=Enter correct user name or password[?]");
		}
%>