<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/13/20
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Access JSP</title>
</head>
<body>

<h1> Access Page </h1>

<form action="/admin" method="post">
    <label for="code">Enter the Admin code</label>
    <input type="password" id="code" name="code">
    <input type="submit">
</form>

</body>
</html>
