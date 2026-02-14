<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.User" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"MANAGER".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<html>
<head>
    <title>Manager Home</title>
</head>
<body>

<h2>Manager Panel</h2>

<ul>
    <li><a href="users.jsp">Users</a></li>
    <li><a href="tasks.jsp">Tasks</a></li>
</ul>

</body>
</html>