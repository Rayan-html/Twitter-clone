<?php
session_start();
?>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href= "mijnkluis.css">
    <title>Chirpify</title>
</head>

<body>

<header>

    <div class="container">
        <h2>Chirpify</h2>
        <ul>
            <li><a href="post.php"> Chirp</li>
            <li><a href="edit_profile.php">Profiel</a></li>
            <li> <a href="registreer.php"> Account maken </a> </li>
            <li> <a href="login.php"> login </a> </li>
            <li><a href="logout.php">Logout</a></li>

        </ul>
    </div>
</header>

<section id="displa">
    <div id="tweets">
<?php
include_once "databaseConnectie.php";
global $dbConnectie;

$voorbereideQuery = $dbConnectie->prepare("SELECT * FROM users, tweets;");
$voorbereideQuery->execute([]);
$data = $voorbereideQuery->fetchAll(PDO::FETCH_ASSOC);
//var_dump($data);
foreach ($data as $item){

    ?>
        <div id="tweets">
    <div class="dePost">
       <h1 class="user"> <? echo $item["profiel"] ?> </h1>
        <p class="bericht"> <? echo $item["inhoud"] ?> </p>
        <p class="tijd"> <? echo $item["datum"] ?> </p>
    </div>
        </div>
    <?php
}
?>
      </div>
</section>
</body>
</html>
    <h1 class="both"> Welcome  <? echo $_SESSION["user"] ?> ! </h1>

    <button class="btn btn-primary"> <a href="Post.php"> Click here to post </a></button>
