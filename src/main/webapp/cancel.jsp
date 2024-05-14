<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="airline.DbUtill" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
    DbUtill.Connect();
    String email=request.getParameter("email");
    int id = Integer.parseInt(request.getParameter("id"));
    

    
    int i = DbUtill.st.executeUpdate("delete from payment where email='"+email+"'");
    int j=DbUtill.st.executeUpdate("delete from book where id='"+id+"'");
    if(i>0 && j>0)
    {
    	out.println("cancelled ticket successfully");
    }
    
}
catch(Exception e)
{
	
}
    	%>
    	
</body>
</html>