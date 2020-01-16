<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
       <h1> Welcome! </h1>
        <br><br>
        <h3>Your Username: ${sessionScope.user.getUsername()}!</h3>
        <h3>Your Email: ${sessionScope.user.getEmail()}!</h3>
    </div>

</body>
</html>
