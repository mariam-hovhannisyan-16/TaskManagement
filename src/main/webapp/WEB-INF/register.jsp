<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13.02.2026
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Register</title>
</head>
<body>

<h2>Register</h2>

<form action="${pageContext.request.contextPath}/register" method="post">

    Name:<br/>
    <input type="text" name="name" required/><br/><br/>

    Surname:<br/>
    <input type="text" name="surname" required/><br/><br/>

    Email:<br/>
    <input type="email" name="email" required/><br/><br/>

    Password:<br/>
    <input type="password" name="password" required/><br/><br/>

    <button type="submit">Register</button>
</form>

<br/>
<a href="${pageContext.request.contextPath}/login.jsp">
    Back to Login
</a>

</body>
</html>