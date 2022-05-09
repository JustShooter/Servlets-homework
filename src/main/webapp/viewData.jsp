<%@ page import="by.it_academy.web.entity.Student" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Instant" %>
<%@ page import="java.time.ZoneId" %><%--
  Created by IntelliJ IDEA.
  User: JustShooter
  Date: 07.05.2022
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page session="false" contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xml:lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/ico" href="images/img_1.png" >
    <link rel="stylesheet" href="style.css">
    <title>by.it-academy.web-viewData</title>
</head>
<body>
<img style="width: 100px;
float: left;
top: auto;
margin: 2px 20px 10px 0;
padding-top: 10px;
padding-left: 80px"
     src="images/img.png" alt=""/>
<jsp:useBean id="studentList" scope="request" type="java.util.List"/>
<h1>Получение данных из базы данных</h1>
<h3>Всего элементов в таблице : <%= studentList.size() %>
</h3>
<br>
<figure>
    <figcaption>Студенты</figcaption>
<table class="blueTable">
    <tr>
        <th>Id</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Дата рождения</th>
        <th>Возраст</th>
    </tr>
    <%
        for (Object o : studentList) {
            out.println("<tr>");
            Student student = (Student) o;
            out.println("<td> " + student.getId() + " </td>");
            out.println("<td> " + student.getFirstName() + " </td>");
            out.println("<td> " + student.getLastName() + " </td>");
            out.println("<td> " + student.getBirthDay() + " </td>");
            out.println("<td> " + (LocalDate.now().getYear()
                    - Instant.ofEpochMilli(student.getBirthDay().getTime())
                    .atZone(ZoneId.systemDefault())
                    .toLocalDate().getYear()) + " </td>");
            out.println("</tr>");
        }
    %>
</table>
</figure>
</body>
<BR>
<p><form action="index.jsp">
    <input type="submit" class="myButton" value="Возврат на главную страницу" style="left: 20%"/>
</form></p>
</html>
