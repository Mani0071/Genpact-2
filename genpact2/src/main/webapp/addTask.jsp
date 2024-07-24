<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333333;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            display: grid;
            gap: 20px;
        }

        label {
            font-weight: bold;
            color: #555555;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"],
        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333333;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="time"]:focus,
        textarea:focus {
            outline: none;
            border-color: #2980b9;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        button {
            padding: 12px 24px;
            background-color: #2980b9;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2c3e50;
        }

        .error {
            color: #c0392b;
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Task</h1>
        <div class="error">
            <% if (request.getAttribute("error") != null) { %>
                <%= request.getAttribute("error") %>
            <% } %>
        </div>
        <form action="TaskServlet" method="post">
            <label for="project">Project:</label>
            <input type="text" id="project" name="project" required>
            
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            
            <label for="start_time">Start Time:</label>
            <input type="time" id="start_time" name="start_time" required>
            
            <label for="end_time">End Time:</label>
            <input type="time" id="end_time" name="end_time" required>
            
            <label for="task_category">Task Category:</label>
            <input type="text" id="task_category" name="task_category" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>
            
            <input type="hidden" name="action" value="add">
            
            <div style="text-align: center;">
                <button type="submit">Add Task</button>
            </div>
        </form>
    </div>
</body>
</html>
