<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f9f9f9;
        }
    </style>
</head>

<body>
	<h1>Welcome, ${employeeName}!</h1>
	<h2>Registered Employees:</h2>
	<table id="employeeTable">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employees}" var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.gender}</td>
					<td>${employee.dob}</td>
					<td>${employee.address}</td>
					<td>${employee.city}</td>
					<td>${employee.state}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>




</body>
</html>