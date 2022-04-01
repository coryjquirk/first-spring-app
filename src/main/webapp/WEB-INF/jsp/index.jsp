<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="users" scope="request" type="java.util.List"/>
<html>
<head>
    <style>
    td, th, tr{
        border: solid black 1px;
        padding: 5px;
        background-color: #9cfff4;
    }
    body{
        background: linear-gradient(217deg, rgba(255,0,0,.8), rgba(255,0,0,0) 70.71%),
        linear-gradient(127deg, rgba(0,255,0,.8), rgba(0,255,0,0) 70.71%),
        linear-gradient(336deg, rgba(0,0,255,.8), rgba(0,0,255,0) 70.71%);
    }
</style>
</head>
<body>
<h1>
    This is an index page!
</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Create Date</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.firstName} ${user.lastName}</td>
            <td>${user.email}</td>
            <td>${user.createDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
