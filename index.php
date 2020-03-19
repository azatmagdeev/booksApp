<?php
require "./php/includes/config.php";
include  "./php/includes/functions.php";
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title><? echo $config['title'] ?></title>
    <style>
        ul{
            list-style: none;
            padding: 0;
        }
        .color1{
            background-color: lightslategrey;
        }
        .color2{ background-color: darkgrey;}
        .color3{ background-color: lightgrey;}
        table{
            border-collapse: separate;
           border-spacing: 10px;
        }

        h1{
            padding: 1%;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="row color1">
        <div class="col">
            <h1><? echo $config['title'] ?></h1>
        </div>
    </div>
    <div class="row">
        <div class="col color2">
            <div>
                <? include 'php/form.php' ?>
            </div>
        </div>
        <div class="col color3">
            <div>
                <? include 'php/result.php' ?>
            </div>
        </div>
    </div>
</div>


</body>
</html>





