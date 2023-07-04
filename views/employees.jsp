<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees</title>
   <style>
        /* Apply general styling to the page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            color: #333;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        /* Add more CSS rules as needed */
    </style>
</head>
<body>
   <h1>List of Registered Employees</h1>
     <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <!-- Add more columns if needed -->
        </tr>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.gender}</td>
                <td>${employee.dob}</td>
                <td>${employee.address}</td>
                <td>${employee.city}</td>
                <td>${employee.state}</td>
                <!-- Add more columns if needed -->
            </tr>
        </c:forEach>
    </table>

</body>
</html>