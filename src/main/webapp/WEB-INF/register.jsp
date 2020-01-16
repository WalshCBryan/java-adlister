<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/16/20
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1> Register </h1>
<h2> Please enter account credentials below </h2>
<br>
<form action="/register" method="post">
    <label for="username">Username: </label>
    <input type="text" name="username" id="username">
    <br>
    <label for="email">Email: </label>
    <input type="text" name="email" id="email">
    <br>
    <label for="password">Password: </label>
    <input type="password" name="password" id="password">
    <br>
    <input type="submit">
</form>

</body>
</html>
