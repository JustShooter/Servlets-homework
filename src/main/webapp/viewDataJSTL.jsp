<%--
  Created by IntelliJ IDEA.
  User: JustShooter
  Date: 16.05.2022
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html xml:lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/ico" href="images/img_1.png" >
    <link rel="stylesheet" href="style.css">
    <title>by.it-academy.web-viewDataJSTL</title>
</head>
<body>
<img style="width: 100px;
float: left;
top: auto;
margin: 2px 20px 10px 0;
padding-top: 10px;
padding-left: 80px"
     src="images/img.png" alt=""/>
<h1>Получение данных из базы данных</h1>
<jsp:useBean id="studentList" scope="request" type="java.util.List"/>
<h3>Всего элементов в таблице : <c:out value="${studentList.size()}"/></h3>
<table class="blueTable">
    <tr>
        <th>Id</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Дата рождения</th>
    </tr>
<c:forEach items="${studentList}" var="lists">
    <tr>
        <td><c:out value="${lists.getId()}"/></td>
        <td><c:out value="${lists.getFirstName()}"/></td>
        <td><c:out value="${lists.getLastName()}"/></td>
        <td><c:out value="${lists.getBirthDay()}"/></td>
    </tr>
</c:forEach>
</table>
</body>
<BR>
<p><form action="index.jsp">
    <input type="submit" class="myButton" value="Возврат на главную страницу" style="left: 20%"/>
</form>
</html>
