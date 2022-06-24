<?php
include("polaczenie.php");
$word = $_POST ['word'];
$polaczenie =  new mysqli ($serwer, $user, $haslo, $baza) or die("Wystąpił błąd z połączeniem");
mysqli_query ($polaczenie, 'SET NAMES utf-8');
$pytanie = $polaczenie->query("SELECT * FROM `karty graficzne` WHERE `Nazwa` LIKE '$word%'");





while ($row = mysqli_fetch_array($pytanie))
{

$karta = $row["Nazwa"];

echo "<input type='radio' name='karta'  value='$karta' id='karta'> $karta <br>";


}
echo "<button value='click' onclick='napisz_karty()'>Klik</button>";




$polaczenie->close();

?>