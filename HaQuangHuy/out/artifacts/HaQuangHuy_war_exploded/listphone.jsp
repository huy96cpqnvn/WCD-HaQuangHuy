<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/17/2021
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Phone Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-container">
    <h1 style="text-align: center">Phone Management</h1>
    <c:url var="url" value="addphone">
        <c:param name="id" value="${p.id}"/>
    </c:url>
    <a href="${url}" class="button btn btn-primary">Create</a>
    <table class="w3-table w3-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Brand</th>
            <th>Price</th>
            <th>Description</th>
            <th>Details</th>
        </tr>
        <c:forEach var="p" items="${requestScope.phones}">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.brand}</td>
                <td>${p.price}</td>
                <td>${p.description}</td>
                <td>
                    <c:url var="url" value="phone">
                        <c:param name="id" value="${p.id}"/>
                    </c:url>
                    <a href="${url}">Detail</a>
                </td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>

