<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="index.css" />
<link rel="stylesheet" type="text/css" href="moduleOptionBtn.css" />
<style>
body{ background-color: #eeeeee; }
</style>

</head>
<body>
<%@include file="topo.jsp"%>

<div id="modulesContainer">
<dl>
	<dt><button class="blueOptionBtn" id="moduleAdvanced1Btn">Módulo 1 - Presente perfeito</button>
		<dd><br/>
			Em geral, o presente perfeito é uma mistura do presente e do passado. É usado para ações do passado que têm significado no presente.
		<br/></dd>
	<dt><button class="blueOptionBtn" id="moduleAdvanced2Btn">Módulo 2 - Presente Perfeito Contínuo</button>
		<dd><br/>
			O presente perfeito contínuo é usado para ações ou eventos que começaram no passado e continuam no presente.
		</dd>
	<dt><button class="blueOptionBtn" id="moduleAdvanced3Btn">Módulo 3 - Presente Perfeito vs. Passado Simples</button>
		<dd><br/>
			O passado simples é usado para ações ou eventos que terminaram no passado, incluindo o passado recente. O presente perfeito é usado para ações ou eventos relacionados ao presente.
		</dd>
	<dt><button class="blueOptionBtn" id="moduleAdvanced4Btn">Módulo 4 - Past Perfect</button>
		<dd><br/>
			O passado perfeito é usado para ações ou eventos que aconteceram no passado antes de outra ação ou evento no passado.
		</dd>
	<dt><button class="blueOptionBtn" id="moduleAdvanced5Btn">Módulo 5 - Past Perfect Continuous</button>
		<dd><br/>
			O passado perfeito contínuo é usado para ações ou eventos que estavam em andamento no passado antes de outra ação ou evento ocorrer.
		</dd>
	<dt><button class="blueOptionBtn" id="moduleAdvanced6Btn">Módulo 6 - Future Perfect</button>
		<dd><br/>
			Existem duas maneiras de expressar o futuro em inglês, em contraste com o futuro simples, no futuro perfeito simples o uso das duas formas diferentes é geralmente intercambiável.
		</dd>
	<dt><button class="blueOptionBtn" id="moduleAdvanced7Btn">Módulo 7 - Future Perfect Continuous</button>
		<dd><br/>
			O tempo verbal que corresponde a uma ação na qual estará ocorrendo no futuro. Além disso, é usado também para expressar suposições sobre fatos que ainda vão acontecer.
		</dd>
		
</dl>
</div>

<%@include file="moduleAdvancedExplanation1.jsp"%>

<%@include file="moduleAdvancedExplanation2.jsp"%>

<%@include file="moduleAdvancedExplanation3.jsp"%>

<%@include file="moduleAdvancedExplanation4.jsp"%>

<%@include file="moduleAdvancedExplanation5.jsp"%>

<%@include file="moduleAdvancedExplanation6.jsp"%>

<%@include file="moduleAdvancedExplanation7.jsp"%>


<script type="text/javascript">

document.getElementById('moduleAdvanced1Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation1').style.display = 'block';		
});
document.getElementById('moduleAdvanced2Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation2').style.display = 'block';		
});
document.getElementById('moduleAdvanced3Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation3').style.display = 'block';		
});
document.getElementById('moduleAdvanced4Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation4').style.display = 'block';		
});
document.getElementById('moduleAdvanced5Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation5').style.display = 'block';		
});
document.getElementById('moduleAdvanced6Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation6').style.display = 'block';		
});
document.getElementById('moduleAdvanced7Btn').addEventListener('click', function(e){
	document.querySelector('.moduleExplanation').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'none';
	document.getElementById('moduleAdvancedExplanation7').style.display = 'block';		
});

</script>

</body>
</html>