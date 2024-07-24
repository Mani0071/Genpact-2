<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Task Management</title>
    <style>
        /* Reset and basic styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
            line-height: 1.6;
        }

        /* Header styling */
        header {
            background-color: #343a40;
            color: #ffffff;
            padding: 10px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            text-transform: uppercase;
        }

        /* Main container styling */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        /* Section styling */
        .section {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            width: 100%;
            max-width: 600px;
            margin: 0 20px;
        }

        .section:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.15);
        }

        .section h3 {
            color: #343a40;
            font-size: 1.5em;
            margin-bottom: 20px;
            text-align: center;
            text-transform: uppercase;
        }

        /* List styling */
        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }

        ul li {
            margin-bottom: 10px;
        }

        /* Link styling */
        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }

        /* Footer styling */
        footer {
            background-color: #343a40;
            color: #ffffff;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Employee Task Management System</h1>
    </header>
    
    <div class="container">
        <div class="section">
            <h3>Admin Section</h3>
            <ul>
                <li><a href="adminLogin.jsp">Admin Login</a></li>
            </ul>
        </div>

        <div class="section">
            <h3>User Section</h3>
            <ul>
                <li><a href="login.jsp">User Login</a></li>
                <li><a href="register.jsp">User Registration</a></li>
            </ul>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Employee Task Management System. All rights reserved.</p>
    </footer>
</body>
</html>






