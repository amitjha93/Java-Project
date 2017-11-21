<%@ page language="java" contentType="text/html" errorPage="" %>
<%
String userType = (String) session.getAttribute("userType");
	session.invalidate();
	response.sendRedirect("index.jsp?msg=Successfully Logged out");
%>