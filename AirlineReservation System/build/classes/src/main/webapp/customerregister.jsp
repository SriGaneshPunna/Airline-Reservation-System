<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page  import=" java.sql.*" %>
  <%@  page import= "airline.DbUtill"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
try{
	DbUtill.Connect();
	int i= DbUtill.st.executeUpdate("insert into customer values('"+username+"','"+email+"','"+password+"');");
	if(i>0)
	{
		response.sendRedirect("customerlogin.html");
	}
	else
	{
		out.println("enter the correct values ");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>