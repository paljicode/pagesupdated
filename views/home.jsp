<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
   <style>
        /* Apply general styling to the page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        
        p {
            color: #666;
            margin-bottom: 10px;
        }
        
        a {
            color: #337ab7;
            text-decoration: none;
        }
        
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
	<h1>Welcome to the Home Page</h1>
	<p>This is the home page of the application.</p>
	<p>
		<a href="${pageContext.request.contextPath}/mvc/employee/register">Register</a> or <a href="${pageContext.request.contextPath}/mvc/employee/login">Login</a>
	</p>

</body>
</html>