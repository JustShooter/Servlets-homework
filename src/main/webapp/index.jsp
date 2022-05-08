<!DOCTYPE html>
<html style="font-size: large;" xml:lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/ico" href="images/img_1.png" >
    <title>by.it-academy.web-index</title>
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
            from {top: -200px;}
            to {top: 10px;}
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
<div style="text-align: left; padding-left: 80px;">
    <h1 style="font-size: x-large" xml:lang="ru">
        Домашняя работа по Java servlet. Июньский А.Н.
    </h1>
    <p>
    <form action="addinfo.jsp">
        <input type="submit" class="myButton" value="Вставка данных в БД" style="left: 6%"/>
    </form>
    </p>
    <p>
    <form action="getInfo" method="get">
        <input type="submit" class="myButton" value="Чтение всех данных из БД" style="left: 10%"/>
    </form>
    </p>
</div>
</body>
</html>