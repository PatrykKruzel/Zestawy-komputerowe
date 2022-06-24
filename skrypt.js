//funkcje wyszukujące dostępne podzespoły z bazy danych
function szukaj_dyski()
{
    var slowo = document.getElementById('fraza').value;
    var preload = document.getElementById('pre');
    preload.style.visibility="visible";
    console.log(slowo);
    $.ajax({
	type: "POST",
	data: {
    		word: slowo,
			},

url: "dysk.php",

success: function(odpowiedz) {
	$("#podpowiedzi").html(odpowiedz);
},
complete: function() {
	preload.style.visibility="hidden";
	},
	error: function() {
		alert("Błąd w połączeniu");
	}
});

}

function szukaj_karty()
{
    var slowo = document.getElementById('fraza1').value;
    var preload = document.getElementById('pre');
    preload.style.visibility="visible";
    console.log(slowo);
    $.ajax({
	type: "POST",
	data: {
    		word: slowo,
			},

url: "karty_graficzne.php",

success: function(odpowiedz) {
	$("#podpowiedzi1").html(odpowiedz);
},
complete: function() {
	preload.style.visibility="hidden";
	},
	error: function() {
		alert("Błąd w połączeniu");
	}
});
}


function szukaj_ram()
{
    var slowo = document.getElementById('fraza2').value;
    var preload = document.getElementById('pre');
    preload.style.visibility="visible";
    console.log(slowo);
    $.ajax({
	type: "POST",
	data: {
    		word: slowo,
			},

url: "pamiec_ram.php",

success: function(odpowiedz) {
	$("#podpowiedzi2").html(odpowiedz);
},
complete: function() {
	preload.style.visibility="hidden";
	},
	error: function() {
		alert("Błąd w połączeniu");
	}
});


}

function szukaj_proc()
{
    var slowo = document.getElementById('fraza3').value;
    var preload = document.getElementById('pre');
    preload.style.visibility="visible";
    console.log(slowo);
    $.ajax({
	type: "POST",
	data: {
    		word: slowo,
			},

url: "procesory.php",

success: function(odpowiedz) {
	$("#podpowiedzi3").html(odpowiedz);
},
complete: function() {
	preload.style.visibility="hidden";
	},
	error: function() {
		alert("Błąd w połączeniu");
	}
});

}

//funkcje wpisujące podzespoły do listy

function napisz_dyski() 
{

var d = document.querySelector('input[id="dysk"]:checked').value;
document.getElementById("wdysk").value =   d;

}


function napisz_karty() 
{

var k = document.querySelector('input[id="karta"]:checked').value;
document.getElementById("wkarta").value =   k;

}

function napisz_ram() 
{

var r = document.querySelector('input[id="ram"]:checked').value;
document.getElementById("wram").value =  r;

}

function napisz_procesory() 
{

var p = document.querySelector('input[id="proc"]:checked').value;
document.getElementById("wprocesor").value = p;

}



function wpis() {
var dysk = document.getElementById("wdysk").value;
var karta = document.getElementById("wkarta").value;
var ram = document.getElementById("wram").value;
var procesor = document.getElementById("wprocesor").value;

if(dysk =="" || karta =="" || ram=="" || procesor=="" || procesor=="") {
	document.getElementById("alert").style.display="block";
	document.getElementById("alert").style.visibility="visible";

	document.getElementById("git").style.display="none";
	document.getElementById("git").style.visibility="hidden";
	document.getElementById("dodaj").style.display="none";
	document.getElementById("dodaj").style.visibility="hidden";
} else {
	document.getElementById("git").style.display="block";
	document.getElementById("git").style.visibility="visible";
	document.getElementById("dodaj").style.display="block";
	document.getElementById("dodaj").style.visibility="visible";

	document.getElementById("alert").style.display="none";
	document.getElementById("alert").style.visibility="hidden";
}

}





