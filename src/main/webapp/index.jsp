<%--
  Created by IntelliJ IDEA.
  User: joshuatalltree
  Date: 3/4/21
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1><% request.getAttribute("Hello, World!"); %></h1>
<%! int counter = 0; %>
<% counter += 1; %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Java Server Page</title>
</head>
<body>
<%  %>
<%@ include file="partials/navbar.jsp" %>

<h1>The current count is <%= counter %>.</h1>

View the page source!


<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>