<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />
<%
Vector details =(Vector)session.getAttribute("user_details");
if(details!=null){
  String user = request.getParameter("user_name");
	String pass = (String)details.get(1);
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
int result=	connection.userUpdate(user,name,email,phone,address);
	//connection.connClose();
		if(result==1){
		Vector v = connection.userLogin(user,pass);
		connection.connClose();
		session.removeAttribute("user_details");
		session.setAttribute("user_details",v);
		response.sendRedirect("user_home.jsp?msg=Successfully Updated Profile");
		}
		else{
		connection.connClose();
		response.sendRedirect("user_home.jsp?msg=Some error occoured!");
		}
}
else{
response.sendRedirect("login.jsp?msg_user=Please Login");
}
%>