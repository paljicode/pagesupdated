<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f1f1f1;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            z-index: 9999;
        }
         }

        .popup.show {
            display: block;
        }


    </style>

    
</head>
<body>
    <h1>Login</h1>
    <c:if test="${not empty error}">
        <p style="color: red">${error}</p>
    </c:if>
    <form id="loginForm" action="login" method="post">
        <label for="id">Id:</label>
        <input type="text" id="id" name="id" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <input type="submit" value="Login">
    </form>
        <script>
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent the form from submitting normally

        // Perform any necessary form validation or other processing

        // Display the pop-up message
        alert("Login successful!");

        // Submit the form programmatically if needed
        this.submit();
    });
</script>
    


</body>
</html>

