<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>Login</h2>

<form action="<%=request.getContextPath()%>/login" method="post">
    Email: <input type="text" name="email"/><br/><br/>
    Password: <input type="password" name="password"/><br/><br/>
    <button type="submit">Login</button>
</form>

<% if (request.getParameter("error") != null) { %>
<p style="color:red">Wrong email or password</p>
<% } %>

</body>
</html>