<?php
$connection = mysqli_connect(
    'zpj83vpaccjer3ah.chr7pe7iynqr.eu-west-1.rds.amazonaws.com',
    'm9wt7vvlnlfh9vkd',
    'b6ox6ai0q5g0kurs',
    'q33820pojzrriioz');
if ($connection == false) {
    echo 'false';
    echo mysqli_connect_error();
    exit();
}
