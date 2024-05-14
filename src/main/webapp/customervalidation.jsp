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
	ResultSet rs=DbUtill.st.executeQuery("SELECT * FROM customer WHERE email='"+email+"' AND password='"+password+"';");
	if(rs.next())
	{
		response.sendRedirect("customerportal.html");
	}
	else
	{
		response.sendRedirect("customerlogin.html");
		
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>