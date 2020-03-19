<?php

include 'db.php';

$login = $_POST['login'];
$password = $_POST['password'];
//echo 'your login: ' . $_POST['login'];

$count = mysqli_query($connection,
    "select * from users where login = '$login' and password = '$password'");

if(mysqli_num_rows($count)==0){
    echo 'you are not registered';
}else{
    echo  'hello, ' . $login . ' !';
}