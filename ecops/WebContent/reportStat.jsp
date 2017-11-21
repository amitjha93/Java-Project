<%@page import="logicDB.Jdbc"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<%
Vector details = (Vector)session.getAttribute("cops_details");
if(details!=null){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%
String rid=request.getParameter("rid");
String st=request.getParameter("st");
logicDB.Jdbc j=new logicDB.Jdbc();
int i=j.reportStat(rid,st);
j.connClose();
if(i==1)
{
	response.sendRedirect("view_complain.jsp?msg=SUCCESSFULLY ACCEPTED");
}
else
{
	response.sendRedirect("view_complain.jsp?msg=TRY AGAIN LATER");
}
%>
</body>
</html>
<%
}
else{
response.sendRedirect("login.jsp?msg_cops=Please Login");
}
%>