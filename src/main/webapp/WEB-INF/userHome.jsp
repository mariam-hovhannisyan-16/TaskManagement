<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Home</title>
</head>
<body>

<h2>My Tasks</h2>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Deadline</th>
        <th>Status</th>
    </tr>

    <c:forEach var="task" items="${tasks}">
        <tr>
            <td>${task.id}</td>
            <td>${task.name}</td>
            <td>${task.description}</td>
            <td>${task.deadline}</td>
            <td>${task.status}</td>
        </tr>
    </c:forEach>

</table>

<br/>
<a href="${pageContext.request.contextPath}/logout">Logout</a>

</body>
</html>