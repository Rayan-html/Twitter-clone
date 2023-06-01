<?php
session_start();
include_once "realDBConnect.php";
global $conn;

if(isset($_POST["username"], $_POST["password"])) {
    $statement = $conn->prepare("SELECT * FROM users WHERE name = :name AND password = :pass");
    $statement->execute([
        "name" => $_POST["username"],
        "pass" => $_POST["password"]
    ]);

    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
    if(count($result) == 1){
        // Login successful
        $_SESSION["user"] = $_POST["username"];
        header("location: index.php");
        exit();
    } else {
        // Login failed
        echo '<p class="error">Invalid login credentials</p>';
    }
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="aanmaak-login.css">
</head>
<body>
<div class="login-box">
    <h2>Login Here</h2>
    <form method="POST">
        <label>Username</label>
        <input type="text" name="username" placeholder="Enter_Username">
        <label>Password</label>
        <input type="password" name="password" placeholder="Enter_Password">
        <input type="submit" name="submit" value="Login" >
    </form>
</div>
</body>
</html>
