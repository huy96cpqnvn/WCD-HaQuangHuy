<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/17/2021
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Phone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<c:set var="p" value="${requestScope.phones}" />

<div class="w3-container">

    <table class="w3-table w3-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Brand</th>
            <th>Price</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <th>${p.brand}</th>
            <td>${p.price}</td>
            <td>${p.description}</td>
        </tr>
    </table>
</div>
</body>
</html>
