<?php

// Database configuration  
define('DB_HOST', 'localhost'); 
define('DB_USERNAME', 'username'); //your db_username
define('DB_PASSWORD', 'password'); //your db_password
define('DB_NAME', 'db_name'); //your db_name

// date_default_timezone_set("Asia/Karachi");

// Connect with the database  
$conn = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);  
  
// Display error if failed to connect  
if ($conn->connect_errno) {  
    printf("Connect failed: %s\n", $conn->connect_error);  
    exit();  
}

?>