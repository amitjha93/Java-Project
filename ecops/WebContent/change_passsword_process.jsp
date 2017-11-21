<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html" errorPage="" %>
<jsp:useBean id="connection" class="logicDB.Jdbc" scope="request" />

<%
String userType = (String)session.getAttribute("userType");
if(userType!=null){
String password = request.getParameter("old_password");
String newPassword = request.getParameter("new_password");
Vector v;
String userId;
	if(userType.equals("user")){
	v = (Vector)session.getAttribute("user_details");
	}else{
	v = (Vector)session.getAttribute("cops_details");
	}
		if(password.equals((String)v.get(1))){
			if(userType.equals("user")){
				userId = (String) v.get(0);
				int result = connection.userPasswordChange(userId,newPassword);
				connection.connClose();
					if(result==1){
					response.sendRedirect("user_home.jsp?msg=Password Changed successfully.");
					}
					else{
					response.sendRedirect("user_home.jsp?msg=Some error occoured!");
					}
			}
			else{
			userId = (String) v.get(0);
				int result = connection.copsPasswordChange(userId,newPassword);
				connection.connClose();
					if(result==1){
					response.sendRedirect("cops_home.jsp?msg=Password Changed successfully.");
					}
					else{
					response.sendRedirect("cops_home.jsp?msg=Some error occoured!");
					}
			}
		}
		else{
		response.sendRedirect(userType+"_home.jsp?msg=Password not matched!");
		}
%>

<%
}
else{
response.sendRedirect("login.jsp");
}
%>