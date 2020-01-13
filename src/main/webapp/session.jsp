<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/13/20
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSP sessions</title>
</head>
<body>

<h1> This is the session JSP</h1>

<h2> This is how to get session data: <c:out value="${sessionScope.sesAt}"/> </h2>

<h2> <c:out value="${requestScope.reqAt}"/></h2>

<h2> <c:out value="${applicationScope.conAt}"/></h2>

<h3> My name is : <c:out value="${sessionScope.name}"/></h3>
<h4> You have <c:out value="${sessionScope.cart.numItems}"/> items in your cart</h4>
<h5>Timeout in seconds: ${sessionScope.timeout}</h5>


</body>
</html>
