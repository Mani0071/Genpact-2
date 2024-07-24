<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Daily Pie Chart</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5 30%, #acb6e5 100%);
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333;
        }

        .chart-container {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            text-align: center;
            max-width: 700px;
            width: 100%;
            margin: 20px;
        }

        h1 {
            font-size: 28px;
            color: #3498db;
            margin-bottom: 20px;
        }

        img {
            max-width: 100%;
            height: auto;
            border: 2px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="chart-container">
        <h1>Daily Pie Chart</h1>
        <img src="ChartServlet?action=viewCharts&type=daily&employeeName=<%= request.getParameter("employeeName") %>" alt="Daily Pie Chart" />
        <a href="index.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>
