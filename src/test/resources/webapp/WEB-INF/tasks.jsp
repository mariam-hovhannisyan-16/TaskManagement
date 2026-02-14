<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Task" %>

<%
    List<Task> tasks = (List<Task>) request.getAttribute("tasks");
%>

<html>
<head>
    <title>Tasks</title>
</head>
<body>

<h2>Tasks</h2>

<table border="1">
    <tr>
        <th>Title</th>
        <th>Status</th>
        <th>Change Status</th>
    </tr>

    <% if (tasks != null) {
        for (Task task : tasks) { %>
    <tr>
        <td><%= task.getStatus() %></td>
        <td>
            <form action="<%=request.getContextPath()%>/task" method="post">
                <input type="hidden" name="taskId" value="<%= task.getId() %>"/>
                <select name="status">
                    <option>TODO</option>
                    <option>IN_PROGRESS</option>
                    <option>FINISHED</option>
                </select>
                <button type="submit">Change</button>
            </form>
        </td>
    </tr>
    <% }} %>

</table>

</body>
</html>