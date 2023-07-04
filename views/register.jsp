<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }

        h1 {
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="password"],
        select,
        input[type="date"] {
            width: 200px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
        
        
    </style>
</head>
<body>

   <h1>Employee Registration</h1>
    <form id= "registrationForm" action="${pageContext.request.contextPath}/mvc/employee/register" method="post">
        <label for="id">Id:</label>
        <input type="text" id="id" name="id" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>
        <br>
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>
        <br>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>
        <br>
        <label for="city">City:</label>
        <input type="text" id="city" name="city" required>
        <br>
        <label for="state">State:</label>
        <input type="text" id="state" name="state" required>
        <br>
        <input type="submit" value="Register">
    </form>
       <script>
        document.getElementById("registrationForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent the form from submitting normally

            // Perform any necessary form validation or other processing

            // Display the pop-up message
            alert("Registration successful!");

            // Submit the form programmatically if needed
            this.submit();
        });
    </script>

</body>
</html>