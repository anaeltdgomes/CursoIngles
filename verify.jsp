<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

session.removeAttribute("answer");
session.removeAttribute("correct");

String module = request.getParameter("hidden");


if(module.contentEquals("moduleAdvancedPresentPerfectExercise1")){ 
	String[] answer = new String[11];
	Integer[] correct = new Integer[11];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise2a").toLowerCase();
	answer[2] = request.getParameter("exercise3a").toLowerCase();
	answer[3] = request.getParameter("exercise3b").toLowerCase();
	answer[4] = request.getParameter("exercise4a").toLowerCase();
	answer[5] = request.getParameter("exercise5a").toLowerCase();
	answer[6] = request.getParameter("exercise6a").toLowerCase();
	answer[7] = request.getParameter("exercise6b").toLowerCase();
	answer[8] = request.getParameter("exercise7a").toLowerCase();
	answer[9] = request.getParameter("exercise8a").toLowerCase();
	answer[10] = request.getParameter("exercise8b").toLowerCase();

	
	if(answer[0].contentEquals("has not studied") || answer[0].contentEquals("hasn't studied")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("have lived")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("has")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("gone")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("have not left") || answer[4].contentEquals("haven't left")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("have wanted")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("has")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("arrived")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("have brought")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	if(answer[9].contentEquals("have")){
		correct[9] = 1;
	}else{ correct[9] = 0; }

	if(answer[10].contentEquals("seen")){
		correct[10] = 1;
	}else{ correct[10] = 0; }
	
	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedPresentPerfectExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedPresentPerfectExercise1.jsp");
	
	
}else if(module.contentEquals("moduleAdvancedPresentPerfectContinuousExercise1")){
	String[] answer = new String[11];
	Integer[] correct = new Integer[11];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise1b").toLowerCase();
	answer[2] = request.getParameter("exercise2a").toLowerCase();
	answer[3] = request.getParameter("exercise3a").toLowerCase();
	answer[4] = request.getParameter("exercise3b").toLowerCase();
	answer[5] = request.getParameter("exercise4a").toLowerCase();
	answer[6] = request.getParameter("exercise5a").toLowerCase();
	answer[7] = request.getParameter("exercise5b").toLowerCase();
	answer[8] = request.getParameter("exercise6a").toLowerCase();
	answer[9] = request.getParameter("exercise6b").toLowerCase();
	answer[10] = request.getParameter("exercise7a").toLowerCase();

	if(answer[0].contentEquals("have")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("been playing")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("has not been practicing") || answer[2].contentEquals("hasn't been practicing")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("have")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("been doing")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("have liked")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("have")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("been learning")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("have")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	if(answer[9].contentEquals("been waiting")){
		correct[9] = 1;
	}else{ correct[9] = 0; }
	
	if(answer[10].contentEquals("have been watching")){
		correct[10] = 1;
	}else{ correct[10] = 0; }

	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedPresentPerfectContinuousExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedPresentPerfectContinuousExercise1.jsp"); 
	
	
}else if(module.contentEquals("moduleAdvancedPresentPerfectvsPastSimpleExercise1")){
	String[] answer = new String[9];
	Integer[] correct = new Integer[9];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise2a").toLowerCase();
	answer[2] = request.getParameter("exercise2b").toLowerCase();
	answer[3] = request.getParameter("exercise3a").toLowerCase();
	answer[4] = request.getParameter("exercise4a").toLowerCase();
	answer[5] = request.getParameter("exercise5a").toLowerCase();
	answer[6] = request.getParameter("exercise6a").toLowerCase();
	answer[7] = request.getParameter("exercise7a").toLowerCase();
	answer[8] = request.getParameter("exercise7b").toLowerCase();

	if(answer[0].contentEquals("has seen")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("read")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("have not read")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("had")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("have had")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("have had")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("have been practicing")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("have")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("been")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedPresentPerfectvsPastSimpleExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedPresentPerfectvsPastSimpleExercise1.jsp"); 
	
	
}else if(module.contentEquals("moduleAdvancedPastPerfectExercise1")){
	String[] answer = new String[11];
	Integer[] correct = new Integer[11];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise2a").toLowerCase();
	answer[2] = request.getParameter("exercise3a").toLowerCase();
	answer[3] = request.getParameter("exercise3b").toLowerCase();
	answer[4] = request.getParameter("exercise4a").toLowerCase();
	answer[5] = request.getParameter("exercise5a").toLowerCase();
	answer[6] = request.getParameter("exercise5b").toLowerCase();
	answer[7] = request.getParameter("exercise6a").toLowerCase();
	answer[8] = request.getParameter("exercise7a").toLowerCase();
	answer[9] = request.getParameter("exercise8a").toLowerCase();
	answer[10] = request.getParameter("exercise8b").toLowerCase();

	if(answer[0].contentEquals("had been")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("had taught")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("had")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("eaten")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("had not finished") || answer[4].contentEquals("hadn't finished")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("had")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("seen")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("had prepared")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("had not done") || answer[8].contentEquals("hadn't done")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	if(answer[9].contentEquals("had")){
		correct[9] = 1;
	}else{ correct[9] = 0; }

	if(answer[10].contentEquals("met")){
		correct[10] = 1;
	}else{ correct[10] = 0; }
	
	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedPastPerfectExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedPastPerfectExercise1.jsp");
	
	
}else if(module.contentEquals("moduleAdvancedPastPerfectContinuousExercise1")){
	String[] answer = new String[11];
	Integer[] correct = new Integer[11];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise2a").toLowerCase();
	answer[2] = request.getParameter("exercise2b").toLowerCase();
	answer[3] = request.getParameter("exercise3a").toLowerCase();
	answer[4] = request.getParameter("exercise4a").toLowerCase();
	answer[5] = request.getParameter("exercise5a").toLowerCase();
	answer[6] = request.getParameter("exercise6a").toLowerCase();
	answer[7] = request.getParameter("exercise6b").toLowerCase();
	answer[8] = request.getParameter("exercise7a").toLowerCase();
	answer[9] = request.getParameter("exercise7b").toLowerCase();
	answer[10] = request.getParameter("exercise8a").toLowerCase();

	if(answer[0].contentEquals("had not been talking") || answer[0].contentEquals("hadn't been talking")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("had")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("been researching")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("had known")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("had been living")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("had been working")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("had")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("been dating")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("had")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	if(answer[9].contentEquals("seen")){
		correct[9] = 1;
	}else{ correct[9] = 0; }

	if(answer[10].contentEquals("had been writing")){
		correct[10] = 1;
	}else{ correct[10] = 0; }
	
	
	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedPastPerfectContinuousExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedPastPerfectContinuousExercise1.jsp"); 
	
	
}else if(module.contentEquals("moduleAdvancedFuturePerfectExercise1")){
	String[] answer = new String[10];
	Integer[] correct = new Integer[10];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise2a").toLowerCase();
	answer[2] = request.getParameter("exercise3a").toLowerCase();
	answer[3] = request.getParameter("exercise3b").toLowerCase();
	answer[4] = request.getParameter("exercise4a").toLowerCase();
	answer[5] = request.getParameter("exercise5a").toLowerCase();
	answer[6] = request.getParameter("exercise6a").toLowerCase();
	answer[7] = request.getParameter("exercise6b").toLowerCase();
	answer[8] = request.getParameter("exercise7a").toLowerCase();
	answer[9] = request.getParameter("exercise8a").toLowerCase();

	if(answer[0].contentEquals("will have arrived") || answer[0].contentEquals("are going to have arrived")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("will have left") || answer[1].contentEquals("is going to have left")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("will")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("have been")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("will not have eaten") || answer[4].contentEquals("won't have eaten") || 
			answer[4].contentEquals("is not going to have eaten") || answer[4].contentEquals("isn't going to have eaten")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("will have made") || answer[5].contentEquals("is going to have made")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("will")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("have printed")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("will have read") || answer[8].contentEquals("am going to have read")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	if(answer[9].contentEquals("will have bought") || answer[9].contentEquals("are going to have bought")){
		correct[9] = 1;
	}else{ correct[9] = 0; }

	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedFuturePerfectExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedFuturePerfectExercise1.jsp"); 
	
	
}else if(module.contentEquals("moduleAdvancedFuturePerfectContinuousExercise1")){
	String[] answer = new String[10];
	Integer[] correct = new Integer[10];
	answer[0] = request.getParameter("exercise1a").toLowerCase();
	answer[1] = request.getParameter("exercise2a").toLowerCase();
	answer[2] = request.getParameter("exercise2b").toLowerCase();
	answer[3] = request.getParameter("exercise3a").toLowerCase();
	answer[4] = request.getParameter("exercise4a").toLowerCase();
	answer[5] = request.getParameter("exercise5a").toLowerCase();
	answer[6] = request.getParameter("exercise6a").toLowerCase();
	answer[7] = request.getParameter("exercise6b").toLowerCase();
	answer[8] = request.getParameter("exercise7a").toLowerCase();
	answer[9] = request.getParameter("exercise8a").toLowerCase();

	if(answer[0].contentEquals("will have been studying") || answer[0].contentEquals("is going to have been studying")){
		correct[0] = 1;
	}else{ correct[0] = 0; }
	
	if(answer[1].contentEquals("will") || answer[1].contentEquals("are")){
		correct[1] = 1;
	}else{ correct[1] = 0; }

	if(answer[2].contentEquals("have been working") || answer[2].contentEquals("working")){
		correct[2] = 1;
	}else{ correct[2] = 0; }

	if(answer[3].contentEquals("will have been waiting") || answer[3].contentEquals("are going to have been waiting")){
		correct[3] = 1;
	}else{ correct[3] = 0; }

	if(answer[4].contentEquals("will have been paying") || answer[4].contentEquals("are going to have been paying")){
		correct[4] = 1;
	}else{ correct[4] = 0; }

	if(answer[5].contentEquals("will have been playing") || answer[5].contentEquals("is going to have been playing")){
		correct[5] = 1;
	}else{ correct[5] = 0; }

	if(answer[6].contentEquals("will")){
		correct[6] = 1;
	}else{ correct[6] = 0; }

	if(answer[7].contentEquals("have been studying")){
		correct[7] = 1;
	}else{ correct[7] = 0; }

	if(answer[8].contentEquals("will have been dating") || answer[8].contentEquals("are going to have been dating")){
		correct[8] = 1;
	}else{ correct[8] = 0; }

	if(answer[9].contentEquals("will not have been learning") || answer[9].contentEquals("won't have been learning") || 
			answer[9].contentEquals("is not going to have been learning") || answer[9].contentEquals("isn't going to have been")){
		correct[9] = 1;
	}else{ correct[9] = 0; }
	
	session.setAttribute("answer", answer);
	session.setAttribute("correct", correct);
	
	session.setAttribute("module", "moduleAdvancedFuturePerfectContinuousExercise1");
	response.sendRedirect("advancedExercise/moduleAdvancedFuturePerfectContinuousExercise1.jsp");
	
}

%>

</body>  
</html>

























