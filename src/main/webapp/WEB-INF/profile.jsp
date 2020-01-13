<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:choose>--%>
<%--    <c:when test="${sessionScope.user.toString().equals('admin')}">--%>

        <html>
        <head>
            <jsp:include page="../partials/head.jsp">
                <jsp:param name="title" value="Your Profile"/>
            </jsp:include>
        </head>
        <body>
        <jsp:include page="../partials/navbar.jsp"/>

        <div class="container">
            <h1>Viewing your profile.</h1>
            <h3>hello ${sessionScope.user}</h3>
        </div>


        </body>
        </html>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        <% response.sendRedirect("/login");%>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>
