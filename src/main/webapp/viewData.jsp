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
    <title>by.it-academy.web-viewData</title>
    <style>
        body {
            background-color: #D0E4F5;
            border: 2px solid #1C6EA4;
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: 0 0;
        }
        table.blueTable {
            border: 1px solid #1C6EA4;
            background-color: #EEEEEE;
            width: 100%;
            text-align: center;
            border-collapse: collapse;
        }
        table.blueTable td, table.blueTable th {
            border: 1px solid #AAAAAA;
            padding: 3px 2px;
        }
        table.blueTable tbody td {
            font-size: 13px;
        }
        table.blueTable tr:nth-child(even) {
            background: #D0E4F5;
        }
        table.blueTable thead {
            background: #1C6EA4;
            background: -moz-linear-gradient(top, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
            background: -webkit-linear-gradient(top, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
            background: linear-gradient(to bottom, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
            border-bottom: 2px solid #444444;
        }
        table.blueTable thead th {
            font-size: 24px;
            font-weight: bold;
            color: #FFFFFF;
            text-align: center;
            border-left: 2px solid #D0E4F5;
        }
        table.blueTable thead th:first-child {
            border-left: none;
        }

        table.blueTable tfoot {
            font-size: 15px;
            font-weight: bold;
            color: #FFFFFF;
            background: #D0E4F5;
            background: -moz-linear-gradient(top, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
            background: -webkit-linear-gradient(top, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
            background: linear-gradient(to bottom, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
            border-top: 2px solid #444444;
        }
        table.blueTable tfoot td {
            font-size: 15px;
        }
        table.blueTable tfoot .links {
            text-align: right;
        }
        table.blueTable tfoot .links a{
            display: inline-block;
            background: #1C6EA4;
            color: #FFFFFF;
            padding: 2px 8px;
            border-radius: 5px;
        }
        img {
            width: 100px;
            height: 100px;
            position: relative;
            animation-name: example;
            animation-duration: 3s;
            animation-fill-mode: forwards;
        }
        @keyframes example {
            from {top: -200px;}
            to {top: 10px;}
        }
        .myButton {
            color: rgb(255, 255, 255);
            font-size: 29px;
            line-height: 29px;
            padding: 20px;
            border-radius: 8px;
            font-family: Georgia, serif;
            font-weight: normal;
            text-decoration: none;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            background-image: linear-gradient(to right, rgb(28, 110, 164) 0%, rgb(35, 136, 203) 50%, rgb(20, 78, 117) 100%);
            box-shadow: rgb(0, 0, 0) 5px 5px 15px 5px;
            border: 2px solid rgb(28, 110, 164);
            display: inline-block;
            position: relative;
        }


        .myButton:hover {
            background: #1C6EA4;
        }

        .myButton:active {
            background: #144E75;
        }
    </style>
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
