<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <title>Task Details</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
        color: #333;
    }
    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #333;
    }
    p {
        font-size: 16px;
        line-height: 1.5;
    }
    .task-details {
        margin-bottom: 20px;
    }
    .btn {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        text-decoration: none;
        text-align: center;
    }
    .btn:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
<div class="container">
    <h1>Task Details</h1>
    <div class="task-details">
        <p><strong>Title:</strong> ${toDoInstance?.title ?: 'No title provided'}</p>
        <p><strong>Description:</strong> ${toDoInstance?.description ?: 'No description provided'}</p>
        <p><strong>Completed:</strong> ${toDoInstance?.completed ? 'Yes' : 'No'}</p>
    </div>
    <a href="${createLink(controller: 'toDo', action: 'index')}" class="btn">Back to List</a>
</div>
</body>
</html>
