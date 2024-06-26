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

<h2 align="center">Advanced - Present Perfect Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

_____ you _____ (be) to Asia?
Have        been
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> She <label id="label0">_____</label> (not/study) for the exam.</p> <!-- She has not studied / hasn't studied for the exam. -->
<br/>
Resposta: <input type="text" required name="exercise1a" value="" id="exercise1a" />
<br/><br/>

<p><b>2.</b> Adam and Natalie <label id="label1">_____</label> (live) together for 3 years.</p> <!-- Adam and Natalie have lived together for 3 years. -->
<br/>
Resposta: <input type="text" required name="exercise2a" value="" id="exercise2a" />
<br/><br/>

<p><b>3.</b> Where <label id="label2">_____</label> he <label id="label3">_____</label> (go)?</p> <!-- Where has he gone? -->
<br/>
Resposta: <input type="text" required name="exercise3a" value="" id="exercise3a" /> : <input type="text" required name="exercise3b" value="" id="exercise3b" />
<br/><br/>

<p><b>4.</b> We <label id="label4">_____</label> (not/leave) yet.</p> <!-- We have not left yet. -->
<br/>
Resposta: <input type="text" required name="exercise4a" value="" id="exercise4a" />
<br/><br/>

<p><b>5.</b> I <label id="label5">_____</label> (want) a new car for a long time.</p> <!-- I have wanted a new car for a long time. -->
<br/>
Resposta: <input type="text" required name="exercise5a" value="" id="exercise5a" />
<br/><br/>

<p><b>6.</b> <label id="label6">_____</label> the bus <label id="label7">_____</label> (arrive) yet?</p> <!-- Has the bus arrived yet? -->
<br/>
Resposta: <input type="text" required name="exercise6a" value="" id="exercise6a" /> : <input type="text" required name="exercise6b" value="" id="exercise6b" />
<br/><br/>

<p><b>7.</b> They <label id="label8">_____</label> (bring) their children with them.</p> <!-- They have brought their children with them. -->
<br/>
Resposta: <input type="text" required name="exercise7a" value="" id="exercise7a" />
<br/><br/>

<p><b>8.</b> <label id="label9">_____</label> you ever <label id="label10">_____</label> (see) a shooting star?</p> <!-- Have you ever seen a shooting star? -->
<br/>
Resposta: <input type="text" required name="exercise8a" value="" id="exercise8a" /> : <input type="text" required name="exercise8b" value="" id="exercise8b" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedPresentPerfectExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedPresentPerfectExercise1")){
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