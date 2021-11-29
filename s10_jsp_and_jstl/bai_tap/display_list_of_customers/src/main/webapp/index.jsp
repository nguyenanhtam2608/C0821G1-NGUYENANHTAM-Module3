<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 29/11/2021
  Time: 10:40 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2> List Customer</h2>

<table border="1">
    <tr>
        <th>No</th>
        <th>Name</th>
        <th>DayOfBirth</th>
        <th>Address</th>
        <th>Inmage</th>
    </tr>

    <c:forEach var="customerObj" items="${customerListServlet}" varStatus="loop">
        <tr>
            <td><c:out value="${loop.count}"/></td>
            <td><c:out value="${customerObj.name}"/></td>
            <td><c:out value="${customerObj.dayOfBirth}"/></td>
            <td><c:out value="${customerObj.address}"/></td>
            <td> <img src="<c:url value="${customerObj.inmage}"/>" width="30px"/> </td>

        </tr>
    </c:forEach>

</table>
</body>
</html>
