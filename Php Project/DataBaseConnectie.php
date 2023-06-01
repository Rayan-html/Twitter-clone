<?php

error_reporting(E_ALL);
ini_set('display_errors', 'On');


try {
    $dbConnectie = new PDO("mysql:host=localhost;dbname=Chirpify",
        "root", "root");
} catch (PDOException $e){
    die("Error!: " . $e->getMessage());
}

//DataBaseConnectie

//om bij de Database te komen http://localhost/phpMyAdmin/


