<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="index.css" />
<link rel="stylesheet" type="text/css" href="gradientBtn.css" />
<style type="text/css">
body {
	background-image: url("images/silver-eagle-flag-usa.jpg");
	background-color: #000;
	color: white;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

h1, h3 { 
	font-weight: bold; 
	text-shadow: rgba(0, 0, 0, 0.5) 0 4px 4px;
}
</style>
</head>
<body>
<%@include file="topo.jsp"%>
<br/>
<h1 align="center">Curso de Inglês</h1>
<h3 align="center">Avançado</h3>
<button id="btnGradient" onClick="location.href='module.jsp'">Iniciar Curso</button>  <!-- location.href = 'url' -->

</body>
</html>