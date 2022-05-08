<%--
  Created by IntelliJ IDEA.
  User: JustShooter
  Date: 08.05.2022
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xml:lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/ico" href="images/img_1.png" >
    <title>by.it-academy.web-success</title>
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

        #demoFont {
            font-family: Georgia, serif;
            font-size: 35px;
            letter-spacing: 2px;
            word-spacing: 2px;
            font-weight: 700;
            font-style: normal;
            font-variant: normal;
            color: #110033;
            text-shadow: 0 1px 0 #CCCCCC, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0, 0, 0, .1), 0 0 5px rgba(0, 0, 0, .1), 0 1px 3px rgba(0, 0, 0, .3), 0 3px 5px rgba(0, 0, 0, .2), 0 5px 10px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .2), 0 20px 20px rgba(0, 0, 0, .15);
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
<p>
<div id="demoFont">Поля не должны быть пустымии!</div>
</p>
<p>
<form action="index.jsp">
    <input type="submit" class="myButton" value="Возврат на главную страницу"/>
</form>
</p>
</body>
</html>
