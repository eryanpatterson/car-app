<?php

function getMakes() {
    global $conn;
    $sql = "SELECT * FROM makes";
    $result = mysqli_query($conn, $sql);

    $makes = mysqli_fetch_all($result, MYSQLI_ASSOC);

    return $makes;
}

function getStyles() {
    global $conn;
    $sql = "SELECT * FROM styles";
    $result = mysqli_query($conn, $sql);

    $styles = mysqli_fetch_all($result, MYSQLI_ASSOC);

    return $styles;
}

function getMakeData($slug) {
    global $conn;
    $sql = "SELECT * FROM makes WHERE slug='$slug'";
    $result = mysqli_query($conn, $sql);

    $data = mysqli_fetch_assoc($result);

    return $data;
}

function getStyleData($slug) {
    global $conn;
    $sql = "SELECT * FROM styles WHERE slug='$slug'";
    $result = mysqli_query($conn, $sql);

    $data = mysqli_fetch_assoc($result);

    return $data;
}

function getCarsForMake($make) {
    global $conn;
    $sql = "SELECT * FROM cars WHERE make='$make'";
    $result = mysqli_query($conn, $sql);

    $cars = mysqli_fetch_all($result, MYSQLI_ASSOC);

    return $cars;
}

function getCarsForStyle($style) {
    global $conn;
    $sql = "SELECT * FROM cars WHERE style='$style'";
    $result = mysqli_query($conn, $sql);

    $cars = mysqli_fetch_all($result, MYSQLI_ASSOC);

    return $cars;
}

function getCarData($slug) {
    global $conn;
    $sql = "SELECT * FROM cars WHERE slug='$slug'";
    $result = mysqli_query($conn, $sql);

    $car = mysqli_fetch_assoc($result);

    return $car;
}

function getCarImages($car) {
    global $conn;
    $sql = "SELECT * FROM images WHERE car='$car'";
    $result = mysqli_query($conn, $sql);

    $images = mysqli_fetch_all($result, MYSQLI_ASSOC);

    return $images;
}

function getMakeOfCar($make_name) {
    global $conn;
    $sql = "SELECT * FROM makes WHERE make_name='$make_name'";
    $result = mysqli_query($conn, $sql);

    $make = mysqli_fetch_assoc($result);

    return $make;
}

function getStyleOfCar($style_name) {
    global $conn;
    $sql = "SELECT * FROM styles WHERE style_name='$style_name'";
    $result = mysqli_query($conn, $sql);

    $style = mysqli_fetch_assoc($result);

    return $style;
}