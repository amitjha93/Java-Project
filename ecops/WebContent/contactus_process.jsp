<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request"/>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String query = request.getParameter("query");
String id = "CUS"+(long)(Math.random()*101234560);
int result = connection.contactus(id,name,email,phone,address,query);
	if(result==1){
	response.sendRedirect("index.jsp?msg=Your query is received with id "+id);
	}
	else{
	response.sendRedirect("contactus.jsp?msg=Try after some time");
	}
%>