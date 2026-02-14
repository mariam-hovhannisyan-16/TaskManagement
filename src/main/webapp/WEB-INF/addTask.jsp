<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Add Task</title>
</head>
<body>

<h2>Add Task</h2>

<form action="${pageContext.request.contextPath}/addTask" method="post">

    Name:<br/>
    <input type="text" name="name" required/><br/><br/>

    Description:<br/>
    <input type="text" name="description" required/><br/><br/>

    Deadline:<br/>
    <input type="date" name="deadline" required/><br/><br/>

    User ID:<br/>
    <input type="number" name="userId" required/><br/><br/>

    <button type="submit">Add Task</button>
</form>

<br/>
<a href="${pageContext.request.contextPath}/managerHome">
    Back
</a>

</body>
</html>