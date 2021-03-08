<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
<%--Bootstrap link--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<%--CSS Link--%>
    <link rel="stylesheet" href="CSS/login.css">
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<%
    String wrongCredentialsMessage = "";

    if (request.getMethod().equals("POST")) {

        if (request.getParameter("username").equals("admin") && request.getParameter("userPassword").equals("password")) {
            response.sendRedirect("/profile.jsp?username=" + request.getParameter("username"));
        }
        wrongCredentialsMessage = "Username or Password Invalid";
    }

%>

<form method="POST" action="login.jsp" class="container col-6 m-3 justify-content-center">
    <div class="form-group">
        <label>Username</label>
        <label for="username"></label>
        <input type="text" name="username" class="form-control" id="username" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
    </div>
    <div class="form-group">
        <label>Password</label>
        <label for="userPassword"></label>
        <input type="password" class="form-control" id="userPassword">
    </div>
    <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<%--JS links--%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

</body>
</html>
