<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tracker.model.User" %>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session==null || session.getAttribute("user") == null) {
    response.sendRedirect("home.jsp");
    return;
}
User user = (User) session.getAttribute("user");
if (user == null) {
    response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task Tracker</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333;
        }

        .navbar {
            width: 100%;
            background-color: #2c3e50;
            padding: 15px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar h1 {
            color: #fff;
            margin: 0;
            text-align: center;
            font-size: 1.5em;
        }

        .container {
            background-color: white;
            padding: 40px;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
            max-width: 400px;
            width: 100%;
            margin-top: 20px;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        form, a {
            margin: 15px 0;
            display: block;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #2c3e50;
        }

        input[type="submit"] {
            padding: 15px;
            border: none;
            background-color: #2980b9;
            color: white;
            font-size: 16px;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #2c3e50;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Task Tracker</h1>
    </div>
    <div class="container">
        <h2>Welcome, <%= user.getUsername() %>!</h2>
        <form action="addTask.jsp" method="post">
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add Task">
        </form>
        
        <a href="TaskServlet?employeeName=<%= user.getUsername() %>">View Tasks</a>
        <a href="charts.jsp?employeeName=<%= user.getUsername() %>">View Charts</a>
        
        <form action="logout.jsp" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
