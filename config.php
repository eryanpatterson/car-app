<?php
    session_start();

    $host = 'ec2-44-193-228-249.compute-1.amazonaws.com';
    $user = 'dmfcuuuklliuqc';
    $password = $_ENV['DB_PASSWORD'];
    $db = 'dfo8dbpa5aijgo';
    $conn = mysqli_connect($host, $user, $password, $db);

    if (!$conn) {
        die("Error connecting to ye olde database: " . mysqli_connect_error());
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
    define('BASE_URL', 'http://localhost/car-app/');
?>