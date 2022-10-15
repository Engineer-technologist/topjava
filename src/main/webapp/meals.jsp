<%--
  Created by IntelliJ IDEA.
  User: Елена
  Date: 15.10.2022
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<hr>
<table>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories!</th>
    </tr>
    <jsp:useBean id="meals" class="ru.javawebinar.topjava.util.MealsUtil"/>
<%--    <jsp:useBean id="meals" scope="request" type="java.util.List"/>--%>
    <c:forEach var="meal" items="${meals}">
        <tr>
            <td>${meal.get().getTime()}</td>
            <td>${meal.get().getDescription()}</td>
            <td>${meal.get().getCalories()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
