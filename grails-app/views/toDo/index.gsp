<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <title>To-Do List</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
        color: #333;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #333;
    }
    ul {
        list-style-type: none;
        padding: 0;
    }
    li {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
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
        cursor: pointer;
    }
    .btn:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
<div class="container">
    <h1>To-Do List</h1>
    <a href="${createLink(controller: 'toDo', action: 'create')}" class="btn">Create New Task</a>
    <ul>
        <g:each in="${toDoList}" var="toDo">
            <li>
                <a href="${createLink(controller: 'toDo', action: 'show', id: toDo.id)}">${toDo.title}</a>
                (<a href="${createLink(controller: 'toDo', action: 'edit', id: toDo.id)}">Edit</a>)
            (<a href="${createLink(controller: 'toDo', action: 'delete', id: toDo.id)}" method="DELETE">Delete</a>)
            </li>
        </g:each>
    </ul>
</div>
</body>
</html>

