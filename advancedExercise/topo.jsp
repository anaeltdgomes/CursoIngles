<%@ page language="java" import="java.util.Date, java.text.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../responsive.css" />

<script type="text/javascript">
function showSidebar(){
	const sidebar = document.querySelector('.sidebar');
	sidebar.style.display = 'flex'
}
function hideSidebar(){
	const sidebar = document.querySelector('.sidebar');
	sidebar.style.display = 'none'
}
</script>
<title>Curso de Inglês</title>
</head>
<body>
<nav>
	<ul class="sidebar">
		<li onClick="hideSidebar()"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg></a></li>
		<li><a href="../module.jsp">Cursos</a></li>
		<li><a href="../Login.jsp">Login</a></li>
		<li><a href="../About.jsp">Sobre</a></li>
		<li><a href="../Contact.jsp">Contato</a></li>
	</ul>
	<ul>
		<li><a href="../index.jsp">Home</a></li>
		<li class="hideOnMobile"><a href="../module.jsp">Cursos</a></li>
		<li class="hideOnMobile"><a href="../Login.jsp">Login</a></li>
		<li class="hideOnMobile"><a href="../About.jsp">Sobre</a></li>
		<li class="hideOnMobile"><a href="../Contact.jsp">Contato</a></li>
		<li class="menuBtn" onClick="showSidebar()"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
	</ul>	
</nav>

<%!
public  String fncMES(int mes)
{
    String retorno ="";
    switch(mes){
        case 1: retorno="Janeiro"; break;
        case 2: retorno="Fevereiro"; break;
        case 3: retorno="Março"; break;
        case 4: retorno="Abril"; break;
        case 5: retorno="Maio"; break;
        case 6: retorno="Junho"; break;
        case 7: retorno="Julho"; break;
        case 8: retorno="Agosto"; break;
        case 9: retorno="Setembro"; break;
        case 10: retorno="Outubro"; break;
        case 11: retorno="Novembro"; break;
        case 12: retorno="Dezembro"; break;
    }
    return retorno;
    }
%>
<h4>
 <%
int mes = Integer.parseInt(new SimpleDateFormat("M").format(new Date()));
int dia = Integer.parseInt(new SimpleDateFormat("dd").format(new Date()));
int ano = Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));

if((request.getParameter("loginEmail") != null) && (request.getParameter("loginEmail") != "")){
	request.setAttribute("loginEmail", request.getParameter("loginEmail"));
}

if((request.getAttribute("loginEmail") != null) && (request.getAttribute("loginEmail") != "")){
	out.println("<p id='javaData'>Olá "+ request.getAttribute("loginEmail") +", bem vindo!</p>");
}else{
	out.println("<p id='javaData'>Hoje é dia " + dia + " de " + fncMES(mes) + " de " + ano +"</p>");
}
%></h4>

</body>
</html>