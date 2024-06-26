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

<h2 align="center">Advanced - Present Perfect vs. Past Simple Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

We ____ (go) to the movies last night.
went
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> Tom <label id="label0">_____</label> (see) that movie three times already.</p> <!-- Tom has seen that movie three times already. -->
<br/>
Resposta: <input type="text" required value="" name="exercise1a" />
<br/><br/>

<p><b>2.</b> I <label id="label1">_____</label> (read) yesterday's newspaper, but I <label id="label2">_____</label> (read, not) today's.</p> <!-- I read yesterday's newspaper, but I have not read / read today's. -->
<br/>
Resposta: <input type="text" required value="" name="exercise2a" /> : <input type="text" required value="" name="exercise2b" />
<br/><br/>

<p><b>3.</b> The students <label id="label3">_____</label> (have) eight exams last month.</p> <!-- The students had eight exams last month. -->
<br/>
Resposta: <input type="text" required value="" name="exercise3a" />
<br/><br/>

<p><b>4.</b> The students <label id="label4">_____</label> (have) eight exams this month. [The month hasn't ended yet.]</p> <!-- The students have had eight exams this month. [The month hasn't ended yet.] -->
<br/>
Resposta: <input type="text" required value="" name="exercise4a" />
<br/><br/>

<p><b>5.</b> The students <label id="label5">_____</label> (have) eight exams in the last month.</p> <!-- The students have had eight exams in the last month. -->
<br/>
Resposta: <input type="text" required value="" name="exercise5a" />
<br/><br/>

<p><b>6.</b> They <label id="label6">_____</label> (practice) for the concert for over three hours now.</p> <!-- They have been practicing for the concert for over three hours now. -->
<br/>
Resposta: <input type="text" required value="" name="exercise6a" />
<br/><br/>

<p><b>7.</b> <label id="label7">_____</label> you ever <label id="label8">_____</label> (be) to a professional football game?</p> <!-- Have you ever been to a professional football game? -->
<br/>
Resposta: <input type="text" required value="" name="exercise7a" /> : <input type="text" required value="" name="exercise7b" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedPresentPerfectvsPastSimpleExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedPresentPerfectvsPastSimpleExercise1")){
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