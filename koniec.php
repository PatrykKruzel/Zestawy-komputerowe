<?php  
include("polaczenie.php");

$dysk = $_POST['wdysk'];
$karta = $_POST['wkarta'];
$ram = $_POST['wram'];
$procesor = $_POST['wprocesor'];

$polaczenie = new mysqli($serwer, $user, $haslo, $baza) or die('Kłopoty z połączeniem');
mysqli_query ($polaczenie,'SET NAMES utf8');
$pytanie = $polaczenie->query("INSERT INTO `stworzone zestawy` (`ID`, `Dysk`, `Karta Graficzna`, `RAM`, `Procesor`) VALUES (NULL, '$dysk', '$karta', '$ram', '$procesor');");

if($pytanie)
	echo "Udało się!";
	else echo "Coś się, coś się popsuło";

	$polaczenie->close() ;
?>





