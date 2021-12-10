<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
    <h2>Edit user</h2>
    <c:form action="edit" method="post" modelAttribute="user">
        <table>
            <tr>
                <td>Id:</td>
                <td>${user.id}<c:hidden path="id"/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><c:input path="name"/></td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td><c:input path="surname"/></td>
            </tr>
            <tr>
                <td>YearOfBirth:</td>
                <td><c:input path="yearOfBirth"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </c:form>
</body>
</html>
