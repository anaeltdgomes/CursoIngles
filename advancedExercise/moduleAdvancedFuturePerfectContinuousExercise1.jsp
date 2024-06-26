<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../index.css" />
<link rel="stylesheet" type="text/css" href="../moduleOptionBtn.css" />
<link rel="stylesheet" type="text/css" href="../exercise.css" />

</head>
<body>
<%@include file="topo.jsp"%>

<h2 align="center">Advanced - Future Perfect Continuous Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

Next year, we ____ (live) in Chicago for 10 years.
will have been living  or  are going to have been living
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> George <label id="label0">_____</label> (study) for 6 hours by dinner time.</p> <!-- George will have been studying / is going to have been studying for 6 hours by dinner time. -->
<br/>
Resposta: <input type="text" required value="" name="exercise1a" />
<br/><br/>

<p><b>2.</b> How long <label id="label1">_____</label> they <label id="label2">_____</label> (work) when the factory closes?</p> <!-- How long will they have been working / are when the factory closes? -->
<br/>
Resposta: <input type="text" required value="" name="exercise2a" /> : <input type="text" required value="" name="exercise2b" />
<br/><br/>

<p><b>3.</b> In another 5 minutes, we <label id="label3">_____</label> (wait) for 3 hours for the tickets.</p> <!-- In another 5 minutes, we will have been waiting / are going to have been waiting for 3 hours for the tickets. -->
<br/>
Resposta: <input type="text" required value="" name="exercise3a" />
<br/><br/>

<p><b>4.</b> This June we <label id="label4">_____</label> (pay) the mortgage for 20 years.</p> <!-- This June we will have been paying / are going to have been paying the mortgage for 20 years. -->
<br/>
Resposta: <input type="text" required value="" name="exercise4a" />
<br/><br/>

<p><b>5.</b> He <label id="label5">_____</label> (play) football for 90 minutes when the game finishes.</p> <!-- He will have been playing / is going to have been playing football for 90 minutes when the game finishes. -->
<br/>
Resposta: <input type="text" required value="" name="exercise5a" />
<br/><br/>

<p><b>6.</b> <label id="label6">_____</label> you <label id="label7">_____</label> (study) long when we meet this afternoon?</p> <!-- will you have been studying / are long when we meet this afternoon? -->
<br/>
Resposta: <input type="text" required value="" name="exercise6a" /> : <input type="text" required value="" name="exercise6b" />
<br/><br/>

<p><b>7.</b> Next Saturday they <label id="label8">_____</label> (date) for 1 year.</p> <!-- Next Saturday they will have been dating / are going to have been dating for 1 year. -->
<br/>
Resposta: <input type="text" required value="" name="exercise7a" />
<br/><br/>

<p><b>8.</b> Jim <label id="label9">_____</label> (not/learn) English long when he goes to England.</p> <!-- Jim will not have been learning / won't have been learning / is not going to have been learning / isn't going to have been learning English long when he goes to England. -->
<br/>
Resposta: <input type="text" required value="" name="exercise8a" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedFuturePerfectContinuousExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedFuturePerfectContinuousExercise1")){
		for(int i=0; i< correct.length; i++){
			out.println("document.getElementById('label"+ i +"').innerHTML = \""+ answer[i] +"\";"); 
			if( correct[i].equals(1)){
				out.println("document.getElementById('label"+ i +"').style.backgroundColor='palegreen';");
			}else { out.println("document.getElementById('label"+ i +"').style.backgroundColor='red';"); }
			
		}
	}
	session.setAttribute("module",""); // Zera para não haver re-envio dos  dados
}
%>
</script>

</body>
</html>