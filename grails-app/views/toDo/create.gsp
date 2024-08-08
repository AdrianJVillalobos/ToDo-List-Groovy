<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main"/>
  <meta charset="UTF-8">
  <title>Create New Task</title>
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
    text-align: center;
  }
  label {
    display: block;
    margin: 10px 0 5px;
  }
  input, textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 10px;
  }
  textarea {
    height: 100px;
  }
  .checkbox-label {
    display: inline-block;
    margin: 0 10px;
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
    text-align: center;
  }
  .btn:hover {
    background-color: #0056b3;
  }
  .form-group {
    margin-bottom: 15px;
  }
  </style>
</head>
<body>
<div class="container">
  <h1>Create New Task</h1>
  <g:form controller="toDo" action="save">
    <div class="form-group">
      <label for="title">Title:</label>
      <g:textField name="title" value="${toDo?.title}" required="true"/>
    </div>
    <div class="form-group">
      <label for="description">Description:</label>
      <g:textArea name="description" value="${toDo?.description}"/>
    </div>
    <div class="form-group">
      <label class="checkbox-label">
        <g:checkBox name="completed" checked="${toDo?.completed}"/>
        Completed
      </label>
    </div>
    <g:submitButton name="create" value="Create" class="btn"/>
  </g:form>
</div>
</body>
</html>

