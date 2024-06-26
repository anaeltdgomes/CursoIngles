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

<h2 align="center">Advanced - Future Perfect Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

I ____ (not finish) by the deadline.
will not have finished   or  won't have finished   or  am not going to have finished
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> They <label id="label0">_____</label> (arrive) before we leave.</p> <!-- They will have arrived / are going to have arrived before we leave. -->
<br/>
Resposta: <input type="text" required value="" name="exercise1a" />
<br/><br/>

<p><b>2.</b> The bus <label id="label1">_____</label> (leave) by the time he arrives.</p> <!-- The bus will have left / is going to have left by the time he arrives. -->
<br/>
Resposta: <input type="text" required value="" name="exercise2a" />
<br/><br/>

<p><b>3.</b> How long <label id="label2">_____</label> you <label id="label3">_____</label> (be) married when your son is born?</p> <!-- How long will you have been / are married when your son is born? -->
<br/>
Resposta: <input type="text" required value="" name="exercise3a" /> : <input type="text" required value="" name="exercise3b" />
<br/><br/>

<p><b>4.</b> Bob <label id="label4">_____</label> (not eat) when he leaves work.</p> <!-- Bob will not have eaten / won't have eaten / is not going to have eaten / isn't going to have eaten when he leaves work. -->
<br/>
Resposta: <input type="text" required value="" name="exercise4a" />
<br/><br/>

<p><b>5.</b> My mother <label id="label5">_____</label> (make) lunch by the time we get home.</p> <!-- My mother will have made / is going to have made lunch by the time we get home. -->
<br/>
Resposta: <input type="text" required value="" name="exercise5a" />
<br/><br/>

<p><b>6.</b> <label id="label6">_____</label> you <label id="label7">_____</label> (print) the project by tomorrow morning?</p> <!-- Will you have printed / Are the project by tomorrow morning? -->
<br/>
Resposta: <input type="text" required value="" name="exercise6a" /> : <input type="text" required value="" name="exercise6b" />
<br/><br/>

<p><b>7.</b> By Monday morning I <label id="label8">_____</label> (read) the whole book.</p> <!-- By Monday morning I will have read / am going to have read the whole book. -->
<br/>
Resposta: <input type="text" required value="" name="exercise7a" />
<br/><br/>

<p><b>8.</b> We <label id="label9">_____</label> (buy) all the ski gear we need by this Friday.</p> <!-- We will have bought / are going to have bought all the ski gear we need by this Friday. -->
<br/>
Resposta: <input type="text" required value="" name="exercise8a" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedFuturePerfectExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedFuturePerfectExercise1")){
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