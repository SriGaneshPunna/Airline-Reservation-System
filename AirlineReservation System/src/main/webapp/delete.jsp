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
int id=Integer.parseInt(request.getParameter("id"));

try{
	DbUtill.Connect();
	int i=DbUtill.st.executeUpdate("delete from flights  where flightid="+id+";");
	if(i>0){
		out.println("deleted successfully");
	}
	else{
		out.println("Above id doesnot exists.... plzz  enter correct id");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>