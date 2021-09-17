<?php
    session_start();
    $db_password = getenv("MYSQL_PASSWORD");
    $user = getenv("MYSQL_USER");
    $conn = mysqli_connect('localhost', "$user", $db_password, 'car_compare');

    if (!$conn) {
        die( 'Failed to connect to database ' . mysqli_connect_error());
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
?>