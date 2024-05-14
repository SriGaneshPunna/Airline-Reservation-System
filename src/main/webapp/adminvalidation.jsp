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
String email=request.getParameter("email");
String password=request.getParameter("password");
try{
	DbUtill.Connect();
	ResultSet rs=DbUtill.st.executeQuery("SELECT * FROM admin WHERE email='"+email+"' AND password='"+password+"';");
	if(rs.next())
	{
		response.sendRedirect("adminportal.html");
	}
	else
	{
		response.sendRedirect("adminlogin.html");
		
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>