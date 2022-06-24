<!DOCTYPE html>
<html>
<head>
	<title></title>
<script src="skrypt.js"></script>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1> Tworzenie zestawu komputerowego </h1>


<img src="preloader.gif" style="width: 70px; visibility: hidden;" id="pre">
<div id="div1">
Dysk
		<input type="text" id="fraza" onkeyup="szukaj_dyski()">
		<div id="podpowiedzi"></div>

Karta Graficzna
<input type="text" id="fraza1" onkeyup="szukaj_karty()">
<div id="podpowiedzi1"> </div>

		Ram
		<input type="text" id="fraza2" onkeyup="szukaj_ram()">
		<div id="podpowiedzi2"></div>

		Procesor
		<input type="text" id="fraza3" onkeyup="szukaj_proc()">
		<div id="podpowiedzi3"></div>
	</div>
<div id="pokaz">
<form action="koniec.php" method="post">
 
<input type="text" id="wdysk" name="wdysk" placeholder="Wybierz dysk"> <br>
<input type="text" id="wkarta" name="wkarta" placeholder="Wybierz kartę graficzną"> <br>
<input type="text" id="wram" name="wram" placeholder="Wybierz pamięć RAM"> <br>
 <input type="text" id="wprocesor" name="wprocesor" placeholder="Wybierz procesor"> <br>

<div id="alert">
Błąd! Nie wpisałeś wszystkiego
</div>

<div id="git">
 Wszystko gra! Możesz dodać zestaw do bazy!
</div>
<input type="button" value="Zatwierdź" onclick="wpis()">
 <div id="dodaj">
 	<button id="guzik"> Dodaj </button>
 </div>
</form>
</div>

<h2> autor: Patryk Kruzel </h2>
</body>

</html>