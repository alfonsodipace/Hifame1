<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
<script src="js/jquery.js"></script>  <!--  LIBRERIA JQUERY -->
<script type="text/javascript" src="js/Validation.js"></script>
</head>

<body>
<!-- 
<script>

function valida()
{
	CheckEmpty();
}

function CheckEmpty()  
{
	if(document.getElementById("nome").value == "") {
		document.getElementById("name").innerHTML = "*";
	}
	if(document.getElementById("cognome").value == "") {
		document.getElementById("surname").innerHTML = "*";
	}
	if(document.getElementById("indirizzo").value == "") {
		document.getElementById("address").innerHTML = "*";
	}
	if(document.getElementById("pass").value=="") {
		document.getElementById("pasw").innerHTML = "*";
	} 
	else if(document.getElementById("pass").value.length < 6) {		
			document.getElementById("pasw").innerHTML = "La password deve essere lunga almeno 6 caratteri";
		}		
	if(document.getElementById("email").value == "") {
		document.getElementById("emo").innerHTML = "*";
	}
	else {
		validamail();
	};
}

function validamail()
{
	var atpos = document.getElementById("email").value.indexOf("@");
	var dotpos = document.getElementById("email").value.indexOf(".");
	if((atpos <1) || (dotpos < atpos+2) || (dotpos+2 >= document.getElementById("email").value.lenght) ) {
		document.getElementById("emo").innerHTML = "Email non valida";
	}
}



</script>

 -->
 
 <script>
	$(document).ready(function(){
 		$('#submit').prop("disabled",true);
 	});
</script>

<form name="reg">
Nome: <input type="text" id="nome" name="nome" onkeyup ="ValidareNome(document.reg.nome)"> <a id="name"></a> </br>
Cognome: <input type="text" id="cognome" onkeyup ="ValidareCognome(document.reg.cognome)"> <a id="surname"></a> </br>
Indirizzo: <input type="text" id="indirizzo" onkeyup ="ValidareIndirizzo(document.reg.indirizzo)"> <a id="address"></a> </br>
Email: <input type="text" id="email" name="email" onkeyup ="ValidareEmail(document.reg.email)"> <a id="emo"></a><a id="emo2"></a></br>
Password: <input type="password" id="pass" onkeyup ="ValidarePassword(document.reg.pass)"> <a id="pasw"> </a> </br>


<input type="submit" id="submit" value="Invia" onclick="">

</form>
</body>
</html>