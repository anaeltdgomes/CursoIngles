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

<h2 align="center">Advanced - Past Perfect Continuous Exercise</h2>

<div class="exerciseConteiner">
<h3 align="center">Escreva a resposta correta</h3>

<xmp>
Exemplo:

She was excited because she ____ (plan) her trip to Italy.
had been planning
</xmp>
<br/>
<form method="post" action="../verify.jsp">

<p><b>1.</b> They <label id="label0">_____</label> (not/talk) when the phone cut out.</p> <!-- They had not been talking / hadn't been talking when the phone cut out. -->
<br/>
Resposta: <input type="text" required value="" name="exercise1a" />
<br/><br/>

<p><b>2.</b> <label id="label1">_____</label> you <label id="label2">_____</label> (research) the problem for long when you found the solution?</p> <!-- Had you been researching the problem for long when you found the solution? -->
<br/>
Resposta: <input type="text" required value="" name="exercise2a" /> : <input type="text" required value="" name="exercise2b" />
<br/><br/>

<p><b>3.</b> Adam and Natalie <label id="label3">_____</label> (know) each other for years when they started dating.</p> <!-- Adam and Natalie had known each other for years when they started dating. -->
<br/>
Resposta: <input type="text" required value="" name="exercise3a" />
<br/><br/>

<p><b>4.</b> I needed a change. I <label id="label4">_____</label> (live) in New York for a long time.</p> <!-- I needed a change. I had been living in New York for a long time. -->
<br/>
Resposta: <input type="text" required value="" name="exercise4a" />
<br/><br/>

<p><b>5.</b> Sally <label id="label5">_____</label> (work) as a waitress for 5 years when she went back to university.</p> <!-- Sally had been working as a waitress for 5 years when she went back to university. -->
<br/>
Resposta: <input type="text" required value="" name="exercise5a" />
<br/><br/>

<p><b>6.</b> <label id="label6">_____</label> Toni and Julie <label id="label7">_____</label> (date) long when they broke up?</p> <!-- Had Toni and Julie been dating long when they broke up? -->
<br/>
Resposta: <input type="text" required value="" name="exercise6a" /> : <input type="text" required value="" name="exercise6b" />
<br/><br/>

<p><b>7.</b> She <label id="label8">_____</label> already <label id="label9">_____</label> (see) that film in the cinema when they watched it on DVD.</p> <!-- She had already seen that film in the cinema when they watched it on DVD. -->
<br/>
Resposta: <input type="text" required value="" name="exercise7a" /> : <input type="text" required value="" name="exercise7b" />
<br/><br/>

<p><b>8.</b> I was so frustrated. I <label id="label10">_____</label> (write) my story for 2 weeks when I lost my notebook.</p> <!-- I was so frustrated. I had been writing my story for 2 weeks when I lost my notebook. -->
<br/>
Resposta: <input type="text" required value="" name="exercise8a" />
<br/><br/>

<input type="hidden" name ="hidden" value="moduleAdvancedPastPerfectContinuousExercise1" />

<input type="submit" value="Enviar" class="blueOptionBtn" />
</form>
</div>

<script>
<% 
Object[] answer = (Object[])session.getAttribute("answer");
Object[] correct = (Object[])session.getAttribute("correct"); 

if((answer != null) && (correct != null)){ 

	if(session.getAttribute("module").equals("moduleAdvancedPastPerfectContinuousExercise1")){
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