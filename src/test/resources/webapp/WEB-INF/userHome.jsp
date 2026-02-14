<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.User" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<html>
<head>
    <title>User Home</title>
</head>
<body>

<h2>Welcome, <%= user.getName() %></h2>

<a href="tasks.jsp">My Tasks</a>

</body>
</html>