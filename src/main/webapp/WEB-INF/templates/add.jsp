<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Create</title>
</head>
<body>
    <h2>Create new user</h2>
    <c:form action="add" method="post" modelAttribute="user">
        <table>
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
                <td><input type="submit" value="add"></td>
            </tr>
        </table>
    </c:form>
</body>
</html>
