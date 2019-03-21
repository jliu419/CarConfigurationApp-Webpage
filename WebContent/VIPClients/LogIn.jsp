<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>

<body>
	<form method = GET action = "http://localhost:14238/CarConfigurationAppServer/VIPClients/AddAuto.jsp">
		Username: <input type="text" name = "un">
		<br>
		Password: <input type="password" name = "pwd">
		<br>
		<input type="submit" name = "Submit Login Info">
	</form>
</body>
</html>