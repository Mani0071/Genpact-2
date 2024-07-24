<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Monthly Bar Chart</title>
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
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            text-align: center;
            max-width: 80%;
            width: 700px;
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
            border-radius: 15px;
            border: 2px solid #ddd;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        img:hover {
            transform: scale(1.05);
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
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .back-link:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="chart-container">
        <h1>Monthly Bar Chart</h1>
        <img src="ChartServlet?action=viewCharts&type=monthly&employeeName=<%= request.getParameter("employeeName") %>" alt="Monthly Bar Chart" />
        <a href="index.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>
