<%--
  Created by IntelliJ IDEA.
  User: JustShooter
  Date: 08.05.2022
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xml:lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/ico" href="images/img_1.png" >
    <title>by.it-academy.web-addData</title>
    <style>
        body {
            background-color: #D0E4F5;
            border: 2px solid #1C6EA4;
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: 0 0;
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

        img {
            width: 100px;
            height: 100px;
            position: relative;
            animation-name: example;
            animation-duration: 3s;
            animation-fill-mode: forwards;
        }

        @keyframes example {
            from {
                top: -200px;
            }
            to {
                top: 10px;
            }
        }
    </style>
</head>
<body>
<img style="
width: 100px;
float: left;
top: auto;
margin: 2px 20px 10px 0;
padding-top: 10px;
padding-left: 80px"
     src="images/img.png" alt=""/>
<form accept-charset="UTF-8"
      content="text/html; charset=UTF-8"
      action="ServletStudent"
      autocomplete="off"
      method="post">
    <fieldset>
        <legend>Введите данные:</legend>
        <label>Имя
            <input name="first_name" type="text" value="Имя"
                   style="border: 6px double #1C6EA4;border-radius: 10px;"/>
            <strong>*</strong> <br/>
        </label>
        <label>Фамилия
            <input name="last_name" type="text" value="Фамилия"
                   style="border: 6px double #1C6EA4;border-radius: 10px;"/>
            <strong>*</strong> <br/>
        </label>
        <label>Дата рождения
            <input name="birth_day" type="date" value="1970-01-01"
                   style="border: 6px double #1C6EA4;border-radius: 10px;"/>
            <strong>*</strong> <br/>
        </label>
        <h5>* - Обязательные поля</h5>
    </fieldset>
    <input type="submit" class="myButton" value="Вставить данные в БД" style="left: 10%"/>

    <h5>* - Обязательные поля</h5>
</form>
</body>
<BR>
<p><form action="index.jsp">
    <input type="submit" class="myButton" value="Возврат на главную страницу" style="left: 20%"/>
</form></p>
</html>
