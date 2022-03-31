<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="users" scope="request" type="java.util.List"/>
<html>
<body>
<h1>
    This is an index page!
</h1>
<c:forEach var="users" items="${users}">
    <div>
            ${users.email}
    </div>
</c:forEach>
</body>
</html>

