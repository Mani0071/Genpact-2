<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Reset and basic styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2; /* Updated background color */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333333;
            text-align: center;
            margin-bottom: 30px;
            text-transform: uppercase;
        }

        form {
            display: grid;
            gap: 20px;
        }

        label {
            font-weight: bold;
            color: #555555;
            text-transform: uppercase;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"],
        textarea {
            width: 100%;
            padding: 14px;
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
            padding: 14px 24px;
            background-color: #2980b9;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2c3e50;
        }

        .error {
            color: #c0392b;
            margin-bottom: 15px;
            text-align: center;
            font-size: 14px;
        }

        /* Custom styling for icons */
        .input-icon {
            position: relative;
        }

        .input-icon i {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            color: #555555;
            cursor: pointer;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .container {
                padding: 30px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Task</h1>
        <div class="error">
            <!-- Error message display if needed -->
            <!-- Example: <span class="error-message">Please fill in all fields.</span> -->
        </div>
        <form action="TaskServlet" method="post">
            <div class="input-icon">
                <label for="project">Project:</label>
                <input type="text" id="project" name="project" required>
                <i class="fas fa-building"></i>
            </div>
            
            <div class="input-icon">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required>
                <i class="far fa-calendar-alt"></i>
            </div>
            
            <div class="input-icon">
                <label for="start_time">Start Time:</label>
                <input type="time" id="start_time" name="start_time" required>
                <i class="far fa-clock"></i>
            </div>
            
            <div class="input-icon">
                <label for="end_time">End Time:</label>
                <input type="time" id="end_time" name="end_time" required>
                <i class="far fa-clock"></i>
            </div>
            
            <div class="input-icon">
                <label for="task_category">Task Category:</label>
                <input type="text" id="task_category" name="task_category" required>
                <i class="fas fa-tags"></i>
            </div>
            
            <div class="input-icon">
                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea>
                <i class="far fa-comment"></i>
            </div>
            
            <input type="hidden" name="action" value="add">
            
            <div style="text-align: center;">
                <button type="submit">Add Task</button>
            </div>
        </form>
    </div>

    <!-- Font Awesome CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>
