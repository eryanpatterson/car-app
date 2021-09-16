<?php
    session_start();

    $conn = mysqli_connect('localhost', 'root', '', 'car_compare');

    if (!$conn) {
        die( 'Failed to connect to database ' . mysqli_connect_error());
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
    define('BASE_URL', 'http://localhost/car-app/');
?>