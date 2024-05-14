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
try {
    DbUtill.Connect();
    String email=request.getParameter("email");
    int id = Integer.parseInt(request.getParameter("tid"));
    int card = Integer.parseInt(request.getParameter("card"));
    int amount = Integer.parseInt(request.getParameter("amount"));

    
    int i = DbUtill.st.executeUpdate("insert into payment values('" + email + "'," + id + "," + card + ","+amount+")");
    
    if(i>0)
    {
    	%>
    	
    	<h1 color="green" >payment successfully done 
    	
    	</h1>
    <% }
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>