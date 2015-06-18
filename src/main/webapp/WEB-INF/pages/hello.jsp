<%@ page import="com.persistance.DataSource" %>
<%@ page import="java.util.List" %>
<html>
<head>
	<link rel="shortcut icon" href="/resources/images/car-icon.png" />
	<title> LankaCabs </title>
</head>
<body>
	<h1>${message}</h1>
<img src="/resources/images/car-icon.png">


	<%
		List l1=DataSource.getInstance().getVehicles();
		for(int i=0;i<l1.size();i++)
		{
			out.write("<p>"+l1.get(i) +"</p>");
		}

	%>
</body>
</html>