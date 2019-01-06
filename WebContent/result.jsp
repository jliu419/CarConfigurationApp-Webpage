<%@ page import = "Model.*, Adapter.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Your Result</title>
	</head>
		<%! int totalprice = 0; %>
	
	
	<body> 		
	<%  
		Automotive auto = (Automotive)(session.getAttribute("car")); 
		totalprice = auto.getbaseprice(); 
		out.println("Base Price:    " + totalprice + "<br/>");
		
		for (int i = 0; i < auto.getnumofoptionset(); i ++)
		{
			auto.addChoice(auto.getoptionsetname(i), request.getParameter(auto.getoptionsetname(i))); 
			out.println(auto.getoptionsetname(i) + ": " 
			+ auto.getOptionChoiceName(auto.getoptionsetname(i)) + 
			" " + auto.getOptionChoicePrice(auto.getoptionsetname(i)) + "<br/>"); 
					
			totalprice += auto.getOptionChoicePrice(auto.getoptionsetname(i)); 
		}

		out.println("Total Price:   " + totalprice); 
	%>
	</body>

</html>