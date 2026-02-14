<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>

<%
    List<User> users = (List<User>) request.getAttribute("users");
%>

<html>
<head>
    <title>Users</title>
</head>
<body>

<h2>Users</h2>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Action</th>
    </tr>

    <% if (users != null) {
        for (User u : users) { %>
    <tr>
        <td><%= u.getName() %></td>
        <td><%= u.getEmail() %></td>
        <td>
            <form action="<%=request.getContextPath()%>/deleteUser" method="post">
                <input type="hidden" name="id" value="<%= u.getId() %>"/>
                <button type="submit">Delete</button>
            </form>
        </td>
    </tr>
    <% }} %>

</table>

</body>
</html>