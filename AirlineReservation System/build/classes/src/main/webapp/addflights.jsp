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
int id =Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String from=request.getParameter("from");
String to=request.getParameter("to");
int price=Integer.parseInt(request.getParameter("price"));
String type=request.getParameter("type");
String seats=request.getParameter("seats");
try{
	DbUtill.Connect();
	int i= DbUtill.st.executeUpdate("insert into flights values("+id+",'"+from+"','"+to+"','"+seats+"','"+type+"',"+price+",'"+name+"');");
	if(i>0)
	{
		out.println("record inserted");
	}
	else
	{
		out.println("record not inserted");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>