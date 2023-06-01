<?php
session_start();
?>

<head>
    <title>Chirpy</title>
    <link rel="stylesheet" href="poststijl.css">
</head>

<header>

    <div class="container">
        <h2><a href="index.php"> Chirpify </h2>
        <ul>
            <li><a href="edit_profile.php">Profiel</a></li>
            <li> <a href="registreer.php"> Account </a> </li>
            <li> <a href="login.php"> login </a> </li>
            <li><a href="logout.php">Logout</a></li>

        </ul>
    </div>
</header>
<section id="invul">
<form id="karaka" method="POST">
    <p class="both">Naam:</p>
    <input id="den" type="text" name="profielInput">
  <p class="both">  Jou verhaal:</p>
    <input id="invullen" type="text" name="inhoudInput">

    <input type="submit" name="submit">
</form>
</section>
<?php
include_once "databaseConnectie.php";

global $dbConnectie;

if (isset($_POST["submit"])) {
    $query = $dbConnectie->prepare("
        INSERT INTO tweets (User_id, profiel, inhoud, datum)
        VALUES (:userId, :profielInput, :inhoudInput, CURRENT_TIME())
    ");
    $query->execute([
        "userId" => $_SESSION["name"], // vervang "userId" met de naam van jouw user ID-veld
        "profielInput" => $_POST["profielInput"],
        "inhoudInput" => $_POST["inhoudInput"]
    ]);
}

if (isset($_POST["delete"])) {
    $query = $dbConnectie->prepare("
        DELETE FROM tweets
        WHERE id = :tweetId
    ");
    $query->execute([
        "tweetId" => $_POST["tweetId"]
    ]);
}

$voorbereideQuery = $dbConnectie->prepare("SELECT * FROM tweets;");
$voorbereideQuery->execute([]);
$data = $voorbereideQuery->fetchAll(PDO::FETCH_ASSOC);

foreach ($data as $item) {
    ?>
    <div id="tweets">
        <div class="dePost">
            <h1 class="user"><?php echo $item["profiel"] ?></h1>
            <p class="bericht"><?php echo $item["inhoud"] ?></p>
            <p class="tijd"><?php echo $item["datum"] ?></p>
        </div>

        <form method="POST">
            <input type="hidden" name="tweetId" value="<?php echo $item["id"] ?>">
            <button name="delete">verwijder</button>
        </form>
    </div>
    <?php
}
?>
