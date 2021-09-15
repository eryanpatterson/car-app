<?php
    session_start();

    $host = 'ec2-44-193-228-249.compute-1.amazonaws.com';
    $user = 'dmfcuuuklliuqc';
    $password = $_ENV['DB_PASSWORD'];
    $db = 'dfo8dbpa5aijgo';
    $port = 5432;

    $conn = pg_connect("host='$host' port=$port user='$user' password='$password', dbname='$db'");

    if (!$conn) {
        die("Error connecting to ye olde database: " . mysqli_connect_error());
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
    define('BASE_URL', 'http://localhost/car-app/');
?>