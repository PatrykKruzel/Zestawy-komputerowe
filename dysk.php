<?php
include("polaczenie.php");
$word = $_POST ['word'];
$polaczenie =  new mysqli ($serwer, $user, $haslo, $baza) or die("Wystąpił błąd z połączeniem");
mysqli_query ($polaczenie, 'SET NAMES utf-8');
$pytanie = $polaczenie->query("SELECT * FROM `dyski` WHERE `Nazwa` LIKE '$word%'");


while ($row = mysqli_fetch_array($pytanie))
{

$dysk = $row["Nazwa"];

echo "<input type='radio' name='dysk'  value='$dysk' id='dysk'> $dysk <br>";


}
echo "<button value='click' onclick='napisz_dyski()'>Klik</button>";


$polaczenie->close();

?>