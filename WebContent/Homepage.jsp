<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home</title>
	</head>

	<body>
		<form method=GET action="http://localhost:14238/CarConfigurationAppServer/User/SelectModel.jsp">
			Basic Car Choice 
				<p>
				Make/Model: <input type=text name=name> 
			<br>
				<input type="submit" name="Submit Automotive"/> 
			<br>   
				<a href="VIPClients/LogIn.jsp">Add Automotives</a>
		</form> 
		</body>
</html>