<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
</head>
<body>

<form>
Email: <input type="text" id="emai"> <p id="emo"></p> </br>
Password: <input type="password" id="pass"> <p id="pasw"> </p> </br>
Nome <input type="text" id="nome"> <p fontcolor="red"  id="name"></p> </br>
Cognome <input type="text" id="cognome"> <p id="surname"></p> </br>
Indirizzo <input type="text" id="indirizzo"> </br>

<input type="button" value="Invia" onclick="valida()">

<script type="text/javascript">

function valida()
{
	assenza();

}

function assenza()
{
	if(document.getElementById("nome").value == "")
	{
		document.getElementById("name").innerHTML = "Nome vuoto";
	}
	else document.getElementById("name").innerHTML = " ";
	
	if(document.getElementById("cognome").value == "")
	{
		document.getElementById("surname").innerHTML = "Cognome vuoto";
	}
	else document.getElementById("surname").innerHTML = " ";
	
	 if(document.getElementById("pass").value=="")
		{
		document.getElementById("pasw").innerHTML = "Password vuota";
		} 
	 else if(document.getElementById("pass").value.length < 6)
		{
		console.log("Sono dentro");
		
		document.getElementById("pasw").innerHTML = "La password deve essere lunga almeno 6 caratteri";
		}
	 else document.getElementById("pasw").innerHTML = " ";
			
	
	if(document.getElementById("emai").value == "")
		{
			document.getElementById("emo").innerHTML = "Email vuota";
		}
	else {
		document.getElementById("emo").innerHTML = " ";
		validamail();
		};

}

function validamail()
{
	var atpos = document.getElementById("emai").value.indexOf("@");
	console.log(atpos);
	var dotpos = document.getElementById("emai").value.indexOf(".");
	console.log(dotpos);
	if(atpos <1 || dotpos < atpos+2 || dotpos+2 >= document.getElementById("emai").value.lenght )
		{
		console.log("Sono dentro");
		document.getElementById("emo").innerHTML = "Email non valida";
		}
	else {
		document.getElementById("emo").innerHTML = " ";
		
		};
}
</script>

</form>
</body>
</html>