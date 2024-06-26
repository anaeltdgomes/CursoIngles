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

<h2 align="center">Advanced - Present Perfect Continuous Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

I ____ (live) in Spain for 3 years now.
have been living
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> <label id="label0">_____</label> you <label id="label1">_____</label> (play) guitar much recently?</p> <!-- Have you been playing guitar much recently? -->
<br/>
Resposta: <input type="text" required value="" name="exercise1a" /> : <input type="text" required value="" name="exercise1b" />
<br/><br/>

<p><b>2.</b> Steve <label id="label2">_____</label> (not/practice) enough lately.</p> <!-- Steve has not been practicing / hasn't been practicing enough lately. -->
<br/>
Resposta: <input type="text" required value="" name="exercise2a" />
<br/><br/>

<p><b>3.</b> What <label id="label3">_____</label> they <label id="label4">_____</label> (do) lately?</p> <!-- What have they been doing lately? -->
<br/>
Resposta: <input type="text" required value="" name="exercise3a" /> : <input type="text" required value="" name="exercise3b" />
<br/><br/>

<p><b>4.</b> I <label id="label5">_____</label> (like) seafood since I first tried it.</p> <!-- I have liked seafood since I first tried it. -->
<br/>
Resposta: <input type="text" required value="" name="exercise4a" />
<br/><br/>

<p><b>5.</b> What <label id="label6">_____</label> you <label id="label7">_____</label> (learn) in English class these days?</p> <!-- What have you been learning in English class these days? -->
<br/>
Resposta: <input type="text" required value="" name="exercise5a" /> : <input type="text" required value="" name="exercise5b" />
<br/><br/>

<p><b>6.</b> Sorry I'm late. <label id="label8">_____</label> you <label id="label9">_____</label> (wait) long?</p> <!-- Sorry I'm late. Have you been waiting long? -->
<br/>
Resposta: <input type="text" required value="" name="exercise6a" /> : <input type="text" required value="" name="exercise6b" />
<br/><br/>

<p><b>7.</b> The kids <label id="label10">_____</label> (watch) television since 3 o'clock!</p> <!-- The kids have been watching television since 3 o'clock! -->
<br/>
Resposta: <input type="text" required value="" name="exercise7a" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedPresentPerfectContinuousExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedPresentPerfectContinuousExercise1")){
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