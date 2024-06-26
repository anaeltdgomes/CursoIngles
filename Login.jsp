<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="index.css" />
<link rel="stylesheet" type="text/css" href="Login.css" />

</head>
<body>
<%@include file="topo.jsp"%>

<div id="mainBox">

<div id="loginContainer">
<img src="images\ConnectLogo.png" /><br/><br/>
	<form method="post" action="index.jsp">
		<label for="email">Email:</label>
		<input type="email" class="email" name="loginEmail" id="loginEmail" required />
		<br/>
		<label for="pass">Senha:</label>
		<input type="password" class="pass" minlength="6" required />
		<br/><br/>
		<input type="submit" value="Login" id="submitLogin" />
		<br/><br/>
		<p>-------------------- ou --------------------</p>
		<br/>
		<a href="#" id="linkRegister">Criar conta!</a>
		<br/><br/>
		
	</form>
</div>

<div id="registerContainer">
<img src="images\ConnectLogo.png" /><br/><br/>
	<form method="post" target="_self" id="formRegister">
		<label for="name">Nome:</label>
		<input type="text" class="name" minlength="5" required />
		<br/>
		<label for="email">Email:</label>
		<input type="email" class="email" id="registerEmail" required />
		<br/>
		<label for="pass">Criar senha:</label>
		<input type="password" class="passCreate" minlength="6" required />
		<br/>
		<label for="pass">Repetir senha:</label>
		<input type="password" class="passRedo" minlength="6" required />
		<br/><br/>
		<input type="submit" value="Login" id="submitRegister" />
	</form>
</div>

<img src="images/LoginPage3BG.png" id="imgRight" />
</div>

<script>
document.getElementById('linkRegister').addEventListener('click', function(e){
	document.getElementById('loginContainer').style.display = 'none';
	document.getElementById('registerContainer').style.display = 'block';	
});

document.getElementById('formRegister').addEventListener('submit', function(e){
	email = document.getElementById('registerEmail').value; 
	alert("Olá "+ email +"\nRegistrado com sucesso!");
	return false;
});	
</script>

</body>
</html>