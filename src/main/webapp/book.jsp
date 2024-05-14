<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="airline.DbUtill" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>
<link rel="stylesheet" href="reg.css">
</head>
<body>
<%
try {
    DbUtill.Connect();
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    int seats = Integer.parseInt(request.getParameter("seats"));
    String date = request.getParameter("date");
    
    int i = DbUtill.st.executeUpdate("insert into book values(" + id + ",'" + name + "'," + seats + ",'" + date + "')");
    if (i > 0) {
    	
        // Display inserted values
%>
        <h2>Booking Details</h2>
        <p>Flight ID: <%= id %></p>
        <p>Name: <%= name %></p>
        <p>Seats: <%= seats %></p>
        
        <p>Date: <%= date %></p>
        <hr>
        <form action="payment.jsp" method="post">
            <input type="hidden" name="id" value="<%= id %>">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="seats" value="<%= seats %>">
            <input type="hidden" name="date" value="<%= date %>">
            Email:<input type="text" placeholdee="enter email" name="email">
            Transaction ID: <input type="text" placeholder="T12012231456" name="tid"><br>
            Credit/Debit Card Number: <input type="text" placeholder="Enter card number" name="card"><br>
            Amount: <input type="text" placeholder="Amount" name="amount"><br>
            <input type="submit" value="Pay Amount">
        </form>
<%
    }
} catch (Exception e) {
    // Handle exceptions
    e.printStackTrace();
}
%>
</body>
</html>
