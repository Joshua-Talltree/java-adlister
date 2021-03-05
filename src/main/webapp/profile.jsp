<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: joshuatalltree
  Date: 3/5/21
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <jsp:useBean id="boolean_expression_1" scope="request" type=""/>
    <c:when test="${boolean_expression_1}">
        <p>boolean_expression_1 was true</p>
    </c:when>
    <jsp:useBean id="boolean_expression_2" scope="request" type=""/>
    <c:when test="${boolean_expression_2}">
        <p>boolean_expression_1 was false, and boolean_expression_2 was true</p>
    </c:when>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>
</c:choose>
</body>
</html>
