<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Task Charts</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5 30%, #acb6e5 100%);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        h1 {
            font-size: 28px;
            color: #3498db;
            margin-bottom: 20px;
        }

        form {
            margin-bottom: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #fafafa;
        }

        form h2 {
            margin: 0 0 15px;
            color: #333;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3498db;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #2c3e50;
            color: white;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #34495e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Task Charts for <%= request.getParameter("employeeName") %></h1>
        <form action="daily.jsp">
            <h2>See where you have spent most of your time today</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="daily">
            <input type="hidden" name="employeeName" value="<%= request.getParameter("employeeName") %>">
            <input type="submit" value="Daily Task">
        </form>

        <form action="weekly.jsp">
            <h2>See where you have spent most of your time this week</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="weekly">
            <input type="hidden" name="employeeName" value="<%= request.getParameter("employeeName") %>">
            <input type="submit" value="Weekly Task">
        </form>

        <form action="monthly.jsp">
            <h2>See where you have spent most of your time this month</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="monthly">
            <input type="hidden" name="employeeName" value="<%= request.getParameter("employeeName") %>">
            <input type="submit" value="Monthly Task">
        </form>

        <a href="index.jsp">Back</a>
    </div>
</body>
</html>
