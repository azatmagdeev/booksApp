<?php
$connection = mysqli_connect('test.ru','root','','test_db');
if ($connection == false) {
    echo 'false';
    echo mysqli_connect_error();
    exit();
}