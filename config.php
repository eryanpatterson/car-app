<?php
    session_start();

    $test_string = getenv("TEST_STRING");

    $conn = pg_connect(getenv("DB_URI"));

    echo $test_string;

    if (!$conn) {
        die("$test_string" . mysqli_connect_error());
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
    define('BASE_URL', 'http://localhost/car-app/');
?>