<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Users</title>
</head>
<body>
    <h2>USERS TABLE</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>USER</th>
            <th>SURNAME</th>
            <th>YearOfBirth</th>
            <th colspan="2">ACTION</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.yearOfBirth}</td>
                <td>
                    <a href="/edit?id=${user.id}">EDIT</a>
                </td>
                <td>
                    <a href="/delete/${user.id}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>Create new user</h2>
    <c:url value="/add" var="add"/>
    <a href="${add}">ADD</a>

</body>
</html>
