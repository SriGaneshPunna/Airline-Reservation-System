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
int price=Integer.parseInt(request.getParameter("price"));
try{
	DbUtill.Connect();
	int i=DbUtill.st.executeUpdate("update flights Set price="+price+" where flightid="+id+";");
	if(i>0){
		out.println("price updated successfully");
	}
	else{
		out.println("not updated");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>