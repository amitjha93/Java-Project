<%@ page language="java" import="java.sql.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
	String user = request.getParameter("user_name");
	String pass = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
int result=	connection.userRegister(user,pass,name,email,phone,address);
	connection.connClose();
		if(result==1){
		response.sendRedirect("index.jsp?msg=Successfully Registered and waiting for approval");
		}
		else{
		response.sendRedirect("user_register.jsp?msg=Some error occoured!");
		}
%>