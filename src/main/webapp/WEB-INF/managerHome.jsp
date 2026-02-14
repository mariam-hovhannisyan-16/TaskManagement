<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manager Panel</title>
</head>
<body>

<h2>Manager Dashboard</h2>

<a href="${pageContext.request.contextPath}/addTask.jsp">
    Add New Task
</a>

<h3>All Tasks</h3>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Deadline</th>
        <th>Status</th>
        <th>Assigned User</th>
    </tr>

    <c:forEach var="task" items="${tasks}">
        <tr>
            <td>${task.id}</td>
            <td>${task.name}</td>
            <td>${task.description}</td>
            <td>${task.deadline}</td>
            <td>${task.status}</td>
            <td>${task.assignedUser.name}</td>
        </tr>
    </c:forEach>

</table>

<br/>
<a href="${pageContext.request.contextPath}/logout">Logout</a>

</body>
</html>