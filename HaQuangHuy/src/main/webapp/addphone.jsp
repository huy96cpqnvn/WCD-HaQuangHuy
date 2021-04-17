<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/17/2021
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Phone</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<c:set var="p" value="${requestScope.phones}"/>

<div class="container">
    <div class="row">
        <h2 class="col-8 offset-2 text-center font-weight-bold my-3">Phone Details</h2>
        <form class="col-12" action="${pageContext.request.contextPath}/addphone" method="post">
            <input type="hidden" name="id" value="${p.id}">
            <div class="form-group">
                <label>Name :</label>
                <input class="form-control" type="text" name="name" value="${p.name}">
            </div>
            <div class="form-group">
                <label>Choose a brand :</label>
                <select name="brand">
                    <option value="Apple">Apple</option>
                    <option value="Samsung">Samsung</option>
                    <option value="Nokia">Nokia</option>
                    <option value="Others">Others</option>
                </select>
            </div>

            <div class="form-group">
                <label>Price :</label>
                <input class="form-control" type="text" name="price" value="${p.price}">
            </div>
            <div class="form-group">
                <label>Description :</label>
                <input class="form-control" type="text" name="description" value="${p.description}">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
            <a class="btn btn-info align-self-center" href="${pageContext.request.contextPath}/addphone">Reset</a>
        </form>
    </div>
</div>
</body>
</html>
