<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: joshuatalltree
  Date: 3/9/21
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Ads</title>
</head>
<body>
<h3>Add you own ads here!</h3>
<form class="container" method="post" action="/ads">
    <label for="id">Id:
        <input name="id" id="id" type="number">
    </label>
    <br>
    <label for="userId">User ID
        <input name="userId" id="userId" type="number">
    </label>
    <br>
    <label for="title">Title
        <input name="title" id="title" type="text">
    </label>
    <br>
    <label>Description
        <input name="description" id="description" type="text">
    </label>
    <br>
    <button type="submit">Submit</button>
</form>

<h3>Here is you list of ads!</h3>
<c:forEach var="adList" items="${adList}">
    <div class="container adList">
        <p>Id: ${adList.id}</p>
        <p>User ID:${adList.userId}</p>
        <p>Title: ${adList.title}</p>
        <p>Description: ${adList.description}</p>
    </div>
</c:forEach>
<h3>New Ads here!</h3>
<div class="container">
    <p>Id: ${adsDao.setId()}</p>
    <p>User ID:${adsDao.setUserId()}</p>
    <p>Title: ${adsDao.setTitle()}</p>
    <p>Description: ${adsDao.setDescription()}</p>
</div>

</body>
</html>
