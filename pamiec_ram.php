<?php
include("polaczenie.php");
$word = $_POST ['word'];
$polaczenie =  new mysqli ($serwer, $user, $haslo, $baza) or die("Wystąpił błąd z połączeniem");
mysqli_query ($polaczenie, 'SET NAMES utf-8');
$pytanie = $polaczenie->query("SELECT * FROM `pamięć ram` WHERE `Nazwa` LIKE '$word%'");





while ($row = mysqli_fetch_array($pytanie))
{

$ram = $row["Nazwa"];

echo "<input type='radio' name='ram'  value='$ram' id='ram'> $ram <br>";


}
echo "<button value='click' onclick='napisz_ram()'>Klik</button>";




$polaczenie->close();

?>
