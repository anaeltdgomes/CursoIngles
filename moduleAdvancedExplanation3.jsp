<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

<div class="moduleExplanation" id="moduleAdvancedExplanation3">
<button class="moduleVoltar blueOptionBtn" id="moduleAdvanced3BtnVoltar">Voltar</button>
<button class="blueOptionBtn" id="moduleAdvanced3BtnIniciar">Iniciar Teste</button><br/>
	<xmp>
O passado simples é usado para ações ou eventos que terminaram no passado, incluindo o passado recente. O presente perfeito é usado para ações ou eventos relacionados ao presente.
	
Examples:

Past Simple:
 
Did you eat breakfast this morning?
(Meaning: The morning has ended)
 
I had three exams this week.
(Meaning: As in the example above, the use of the past simple indicates that the week has just ended.)


Present Perfect:
 
Have you eaten breakfast yet this morning?
(Meaning: It is still morning)
 
I have had three exams already this week.
(Meaning: As before, the use of the present perfect indicates that the week has not yet ended)

Lembre-se de que também usamos o presente perfeito para ações ou eventos em um momento não especificado no passado. Se quisermos limitar o tempo das ações ou eventos a um período de tempo, usamos expressões de tempo como “last year”.

Examples:

Past simple:

I went to Cuba last year.
 
They saw a movie yesterday.


Present Perfect:
 
I have been to Cuba in the last year.
 
They have seen a movie.
	</xmp>
</div>


<script type="text/javascript">
document.querySelector('#moduleAdvanced3BtnVoltar').addEventListener('click', function(e){
	document.getElementById('moduleAdvancedExplanation3').style.display = 'none';
	document.getElementById('modulesContainer').style.display = 'block';
});
document.querySelector('#moduleAdvanced3BtnIniciar').addEventListener('click', function(e){
	window.location.href="advancedExercise/moduleAdvancedPresentPerfectvsPastSimpleExercise1.jsp";
});
</script>

</body>
</html>