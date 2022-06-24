<?php
include("polaczenie.php");
$word = $_POST ['word'];
$polaczenie =  new mysqli ($serwer, $user, $haslo, $baza) or die("Wystąpił błąd z połączeniem");
mysqli_query ($polaczenie, 'SET NAMES utf-8');
$pytanie = $polaczenie->query("SELECT * FROM `procesory` WHERE `Nazwa` LIKE '$word%'");





while ($row = mysqli_fetch_array($pytanie))
{

$proc = $row["Nazwa"];

echo "<input type='radio' name='proc'  value='$proc' id='proc'> $proc <br>";


}
echo "<button value='click' onclick='napisz_procesory()'>Klik</button>";




$polaczenie->close();

?>
