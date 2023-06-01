<?php
session_start();
include_once "realDBConnect.php";

global $dbConnectie;

if (isset($_POST['submit'])) {

    $query = $dbConnectie->prepare("
UPDATE profiel
SET username = :phname, password = :phPassword, 
WHERE username = :phname
");
    $query->execute([
        "phname" => $_POST['username'],
        "phPassword" => $_POST['password'],
        "phUsername" => $_SESSION['username']
    ]);

}


$query = $dbConnectie->prepare("SELECT * FROM users WHERE name = :phname");
$query->execute([
    "phUsername" => $_SESSION['username']
]);
$profiel = $query->fetch(PDO::FETCH_ASSOC);
?>

<head>
    <link rel="stylesheet" href="">
</head>

<h1>Edit profile</h1>
<div class="container">
    <form class="login-form" method="post" action="">
        <label for="voornaam">username:</label>
        <input type="text" name="username" value="<?php echo $profiel['username']; ?>"><br>

        <label for="achternaam">password:</label>
        <input type="text" name="password" value="<?php echo $profiel['password']; ?>"><br>

        <label for="email">Email:</label>
        <input type="text" name="email" value="<?php echo $profiel['email']; ?>"><br>

        <div class="button-container">
            <input type="submit" name="submit" value="Save changes">
        </div>
        <div class="link-container">
            <a href="post.php">back</a>
        </div>
        <div style="clear: both;"></div>
    </form>
</div>