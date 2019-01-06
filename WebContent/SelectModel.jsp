
<%@ page import = "Model.*, Adapter.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Car Configuration</title>
</head>

<body>
	<form method=GET action=http://localhost:14238/CarConfigurationAppServer/result.jsp>

		<h1><%= request.getParameter("name") %> </h1>
		<br>
		<%  Automotive auto = ProxyAutomobile.getautoset().get(request.getParameter("name"));
			
			if (auto != null) {
			  session.setAttribute("car", auto);
			}
			
			for (int i = 0; i < auto.getnumofoptionset(); i ++)
			{
				out.println(auto.getoptionsetname(i));
				out.println("			<select name=\"" + auto.getoptionsetname(i) + "\">\n"); 
				for (int k = 0; k < auto.getoptionset(i).size(); k ++)
				{
					out.println("				<option>" + auto.getoptionname(i, k) + "</option>\n"); 
				}
				out.println("			</select>\n<br>"); 
			}
		%>	
		<input type="submit" name="Submit configuration"/>	
	</form>
</body>


</html>