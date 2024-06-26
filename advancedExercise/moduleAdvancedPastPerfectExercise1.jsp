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

<h2 align="center">Advanced - Past Perfect Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

Alex ____ (not/travel) alone before his trip to London.
had not traveled or hadn't traveled
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> I <label id="label0">_____</label> (be) at home all day. I had to get out and go for a walk.</p> <!-- I had been at home all day. I had to get out and go for a walk. -->
<br/>
Resposta: <input type="text" required value="" name="exercise1a" />
<br/><br/>

<p><b>2.</b> She <label id="label1">_____</label> (teach) Shakespeare before.</p> <!-- She had taught Shakespeare before. -->
<br/>
Resposta: <input type="text" required value="" name="exercise2a" />
<br/><br/>

<p><b>3.</b> <label id="label2">_____</label> you <label id="label3">_____</label> (eat) breakfast when you left the house?</p> <!-- Had you eaten breakfast when you left the house? -->
<br/>
Resposta: <input type="text" required value="" name="exercise3a" /> : <input type="text" required value="" name="exercise3b" />
<br/><br/>

<p><b>4.</b> We <label id="label4">_____</label> (not/finish) the document when the computer crashed.</p> <!-- We had not finished / hadn't finished the document when the computer crashed. -->
<br/>
Resposta: <input type="text" required value="" name="exercise4a" />
<br/><br/>

<p><b>5.</b> We <label id="label5">_____</label> never <label id="label6">_____</label> (see) a whale before our trip.</p> <!-- We had never seen a whale before our trip. -->
<br/>
Resposta: <input type="text" required value="" name="exercise5a" /> : <input type="text" required value="" name="exercise5b" />
<br/><br/>

<p><b>6.</b> She <label id="label7">_____</label> (prepare) dinner before leaving for work that day.</p> <!-- She had prepared dinner before leaving for work that day. -->
<br/>
Resposta: <input type="text" required value="" name="exercise6a" />
<br/><br/>

<p><b>7.</b> I <label id="label8">_____</label> (not/do) all my homework when I went to class.</p> <!-- I had not done / hadn't done all my homework when I went to class. -->
<br/>
Resposta: <input type="text" required value="" name="exercise7a" />
<br/><br/>

<p><b>8.</b> <label id="label9">_____</label> you <label id="label10">_____</label> (meet) her before?</p> <!-- Had you met her before? -->
<br/>
Resposta: <input type="text" required value="" name="exercise8a" /> : <input type="text" required value="" name="exercise8b" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedPastPerfectExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedPastPerfectExercise1")){
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