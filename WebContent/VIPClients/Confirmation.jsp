<%@ page import = "Model.*, Adapter.*, java.io.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Confirmation Page</title>
</head>

<body>
	<%	
		CreateAuto ca = new BuildAuto();
		String inputfilename = (request.getParameter("File Uploaded"));
		// out.println(inputfilename); 
		ca.BuildAuto("/Users/albertliu/Desktop/AJ/CarConfigurationAppServer/" + inputfilename, "regular"); 
	%>	
	Your Automotive is Added! 
	<form method = "GET" action="http://localhost:14238/CarConfigurationAppServer/Homepage.jsp" >
		<input type="submit" name="Return To Homepage" value = "Back">
	</form>
</body>

</html>