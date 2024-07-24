<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        label {
            margin-bottom: 5px;
            color: #2c3e50;
            text-align: left;
        }

        input {
            margin-bottom: 15px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            color: #333;
        }

        button {
            padding: 15px;
            border: none;
            background-color: #2980b9;
            color: white;
            font-size: 18px;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2c3e50;
        }

        .error-message {
            color: red;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="AuthServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <%
            if (request.getParameter("error") != null) {
        %>
        <p class="error-message"><%= request.getParameter("error") %></p>
        <%
            }
        %>
    </div>
</body>
</html>
