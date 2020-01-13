<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Welcome to the Contacts Manager!</h1>

    <c:forEach var="contact" items="${contacts}">
        <div class="col-md-6">
            <h2>${contact.firstName} ${contact.lastName}</h2>
            <p>${contact.telephone}</p>

            <form  action="/UpdateContact">
                <input type="hidden" name="id" value="${contact.id}">
                <button type="submit">Edit a Contact</button>
            </form>
        </div>
    </c:forEach>
</div>

<form action="/ContactsManager/AddContact.jsp">
    <button>Add a Contact</button>
</form>

<form action="/ContactsManager/UpdateContact.jsp">
    <button>Add a Contact</button>
</form>

<%--<form action="AddContactServlet">--%>
<%--    <button>Add a Contact</button>--%>
<%--</form>--%>

</body>
</html>