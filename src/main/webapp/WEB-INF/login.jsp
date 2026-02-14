<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>Login</h2>

<form action="${pageContext.request.contextPath}/login" method="post">

    Email:<br/>
    <input type="text" name="email" required/><br/><br/>

    Password:<br/>
    <input type="password" name="password" required/><br/><br/>

    <button type="submit">Login</button>
</form>

<br/>
<a href="${pageContext.request.contextPath}/register.jsp">
    Register
</a>

</body>
</html>