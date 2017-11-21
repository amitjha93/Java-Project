<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />

<%
Vector v = (Vector) session.getAttribute("cops_details");
	if(v!=null)
	{
	String type = (String)v.get(5);
	String user = request.getParameter("cid");
		if(type.equals("admin")){
		int result = connection.makeAdmin(user);
		connection.connClose();
			if(result==1){
			response.sendRedirect("newAdmin.jsp?msg=Successfully Processed");
			}
			else{
			response.sendRedirect("newAdmin.jsp?msg=Try after some time");			
			}
		}
		else{
		response.sendRedirect("cops_home.jsp?msg=You dont have admin power");
		}
	}
	else{
	response.sendRedirect("login.jsp?msg_cops=Please Login");
	}
%>