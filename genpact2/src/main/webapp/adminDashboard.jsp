<%@ page import="java.util.List" %>
<%@ page import="com.tracker.model.User" %>
<%@ page import="com.tracker.dao.UserDAO" %>
<%@ page import="com.tracker.dbconnection.DBConnection" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || user.getRoleId() != 2) { // Assuming 2 is the Admin role
        response.sendRedirect("adminLogin.jsp");
        return;
    }

    UserDAO userDAO = new UserDAO(DBConnection.getConnection());
    List<User> employees = userDAO.getAllEmployees();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 800px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #495057;
            text-align: center;
            margin-bottom: 20px;
        }

        h3 {
            color: #343a40;
            margin-bottom: 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }

        th {
            background-color: #007bff;
            color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #dc3545;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, Admin</h2>
        <h3>All Employees</h3>
        <table>
            <thead>
                <tr>
                    <th>Employee Name</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% for (User employee : employees) { %>
                <tr>
                    <td><%= employee.getUsername() %></td>
                    <td><%= employee.getRoleId() == 1 ? "Associate" : "Admin" %></td>
                    <td><a href="viewEmployeeTasks.jsp?employeeName=<%= employee.getUsername() %>">View Tasks</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <form action="logout.jsp" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
