<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="index.css" />
<link rel="stylesheet" type="text/css" href="About.css" />

</head>
<body>
<%@include file="topo.jsp"%>

<h1 align="center">Inglês online disponível 24 horas por dia</h1>
<br/><br/>

<div class="boxOdd">
<div class="boxTxt">
	<h2>Garantia de Satisfação:</h2>
	<h3>Temos orgulho de ter desenvolvido a maneira mais eficaz e inovadora de aprender inglês online.</h3>
</div>
<img src="images/EnglishImg1.jpg" alt="Garantia de Satisfação" />
</div>

<br/>

<div class="boxEven">
<div class="boxTxt">
	<h2>Aulas no nível certo para você:</h2>
	<h3>Comece do zero ou de qualquer um do módulos disponiveis, do iniciante ao pós-avançado.</h3>
</div>
<img src="images/USAFlag.png" alt="Aulas no nível certo para você" />
</div>

<br/>

<div class="boxOdd">
<div class="boxTxt">
	<h2>Pratique todos os dias:</h2>
	<h3>Aprender inglês não precisa ser um tédio. Temos mais de 100 horas de exercícios para complementar seus estudos particulares e em grupo. </h3>
</div>
<img src="images/EnglishImg5.jpg" alt="Pratique todos os dias" />
</div>

<br/>

<div class="boxEven">
<div class="boxTxt">
	<h2>Aulas que se encaixam na sua rotina:</h2>
	<h3>Aprenda inglês onde quiser, 24 horas por dia, em qualquer dispositivo.</h3>	
</div>
<img src="images/EnglishImg4.png" alt="Aulas que se encaixam na sua rotina" />
</div>

<br/>

<div class="boxOdd">
<div class="boxTxt">
	<h2>Acesse a escola em poucos cliques:</h2>
	<h3>Somos 100% online e com acesso de todos os dispositivos.</h3>
</div>
<img src="images/EnglishImg2.jpg" alt="Acesse a escola em poucos cliques" />
</div>

<br/><br/><br/>
<script>
	
const elementsToFadeInUpOnScroll = document.querySelectorAll('.boxOdd, .boxEven');
if (elementsToFadeInUpOnScroll) {
  window.addEventListener("scroll", function(event) {
    elementsToFadeInUpOnScroll.forEach(function(element) {
 
      	if (window.scrollY >= (element.offsetTop - window.innerHeight)) {
      	  element.classList.add("animationFadeOut");
      	} else {
      	  element.classList.remove("animationFadeOut");
      	}
      	if (element.offsetTop < window.scrollY) {
      		element.classList.add("animationFadeOutTop");
      	}else {
      	  element.classList.remove("animationFadeOutTop");
      	}
      
    });
  });
}
</script>
</body>
</html>