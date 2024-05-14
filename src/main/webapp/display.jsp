<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="airline.DbUtill" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Flight Information</title>
<link rel="stylesheet" href="display.css">
</head>
<body>
    
    <div id="bus">
        <table>
            <thead>
                <tr>
                    <th>Flight ID</th>
                    <th>Flight From</th>
                    <th>Flight To</th>
                    <th>Flight Seats</th>
                    <th>Flight Type</th>
                    <th>Flight Price</th>
                    <th>Flight Name</th>
                </tr>
            </thead>
            <tbody>
                <%
                try {
                    DbUtill.Connect();
                    ResultSet rs = DbUtill.st.executeQuery("select * from flights");
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getInt(4) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td><%= rs.getInt(6) %></td>
                    <td><%= rs.getString(7) %></td>
                   
                </tr>
                <% 
                    }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
