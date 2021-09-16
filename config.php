<?php
    session_start();

    $conn = pg_connect(getenv("DATABSE_URL"));

    if (!$conn) {
        die( 'Failed to connect to database ' . pg_last_error());
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
    define('BASE_URL', 'http://localhost/car-app/');
?>