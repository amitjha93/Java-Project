<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
	Vector details = (Vector) session.getAttribute("cops_details");
	if(details!=null){
  String user = request.getParameter("user_name");
	//String pass = request.getParameter("password");
	String pass = (String)details.get(1);
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	//String type = request.getParameter("type");
	String posting = request.getParameter("posting");
	String designation = request.getParameter("designation");
	String address = request.getParameter("address");
	
int result=	connection.copsUpdate(user,name,email,phone,posting,designation,address);

		if(result==1){
		Vector v = connection.copsLogin(user,pass);
		connection.connClose();
		session.removeAttribute("cops_details");
		session.setAttribute("cops_details",v);
		response.sendRedirect("cops_home.jsp?msg=Successfully updateed profile");
		}
		else{
		connection.connClose();
		response.sendRedirect("cops_prof_update.jsp?msg=Some error occoured!");
		}
}
else{
response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>